-- MCPHub configuration
return {
  {
    "ravitemer/mcphub.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    build = "npm install -g mcp-hub@latest",
    config = function()
      require("mcphub").setup({
        port = 37373, -- Match the port your mcp-hub is running on
        config = vim.fn.expand("~/mcpservers.json"), -- Point to your config file
        shutdown_delay = 60 * 10 * 1000, -- 10 minutes
        auto_approve = true,
        extensions = {
          avante = {
            make_slash_commands = true, -- make /slash commands from MCP server prompts
          }
        },
        auto_toggle_mcp_servers = true,
        mcp_request_timeout = 60000,
        log = {
          level = vim.log.levels.WARN,
        },
      })
    end,
  },
}

