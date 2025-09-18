-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  {
    import = "astrocommunity.colorscheme.rose-pine",
  },
  {
    import = "astrocommunity.completion.nvim-cmp",
  },
  {
    import = "astrocommunity.completion.supermaven-nvim",
  },
  -- {
  --   import = "astrocommunity.editing-support.mcphub-nvim",
  --   opts = {
  --     port = 37373,
  --     config = vim.fn.expand("~/mcpservers.json"),
  --   },
  -- },
  -- {
  --   import = "astrocommunity.completion.avante-nvim",
  --   opts = {
  --     provider = "copilot",
  --     providers = {
  --       copilot = {
  --         model = "claude-sonnet-4",
  --         extra_request_body = {
  --           max_tokens = 100000,
  --         },
  --       },
  --     },
  --     behaviour = {
  --       use_cwd_as_project_root = false,
  --     },
  --   },
  -- },
  -- Import Dart pack but configure it to not load flutter-tools
  {
    import = "astrocommunity.pack.dart",
    opts = {
      flutter_tools = false, -- Disable the community flutter-tools setup
    },
  },
}
