-- claudecode.nvim config for AstroNvim
-- See: https://github.com/coder/claudecode.nvim#advanced-configuration

return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  opts = {
    -- Server options
    log_level = "info", -- "trace", "debug", "info", "warn", "error"
    -- Uncomment below to customize
    -- port_range = { min = 10000, max = 65535 },
    -- auto_start = true,
    -- terminal_cmd = nil, -- Custom terminal command
    -- Selection Tracking
    -- track_selection = true,
    -- visual_demotion_delay_ms = 50,
    terminal = {
      split_side = "right",
      split_width_percentage = 0.30,
      provider = "auto", -- "auto", "snacks", or "native"
      auto_close = true,
    },
    diff_opts = {
      auto_close_on_accept = true,
      vertical_split = true,
      open_in_current_tab = true,
    },
  },
  keys = {
    { "<leader>a", nil, desc = "AI/Claude Code" },
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
    { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
    { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    { "<leader>as", "<cmd>ClaudeCodeTreeAdd<cr>", desc = "Add file", ft = { "NvimTree", "neo-tree", "oil" } },
    { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
