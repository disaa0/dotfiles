-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure rooter to automatically set working directory
    rooter = {
      enabled = true,
      detector = {
        "lsp",
        { ".git", "_darcs", ".hg", ".bzr", ".svn" },
        { "lua", "MakeFile", "package.json", "Cargo.toml", "pyproject.toml", "go.mod", "pom.xml", "build.gradle" },
        -- Additional patterns for config files and projects
        { ".nvim.lua", "init.lua", ".editorconfig", ".project", ".root" },
        -- Common config file indicators
        { "stylua.toml", ".stylua.toml", "selene.toml", ".luacheckrc" },
        -- Fallback patterns
        { "README.md", "readme.md", "LICENSE", "license" }
      },
      ignore = {
        servers = {},
        dirs = {},
      },
      autochdir = false,
      scope = "global",
      notify = true,
    },
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Configure autocommands
    autocmds = {
      rooter_fallback = {
        {
          event = { "BufEnter", "BufNewFile" },
          desc = "Fallback to current file's directory when no root found and in home",
          callback = function()
            vim.defer_fn(function()
              local cwd = vim.fn.getcwd()
              local home = vim.fn.expand("~")
              -- Check if we're in home directory (likely no root found)
              if cwd == home then
                local current_file_dir = vim.fn.expand("%:p:h")
                -- Only change if we have a valid file directory
                if current_file_dir ~= "" and vim.fn.isdirectory(current_file_dir) == 1 then
                  vim.cmd("cd " .. vim.fn.fnameescape(current_file_dir))
                  vim.notify("No project root found, changed to file's directory: " .. current_file_dir, vim.log.levels.INFO)
                end
              end
            end, 100) -- Small delay to let rooter finish
          end,
        },
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
        ["<Leader>a"] = { desc = "Avante" },
      },
    },
  },
}
