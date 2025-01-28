return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/neotest-jest" },
    opts = {
      adapters = {
        ["neotest-jest"] = {
          jestCommand = "pnpm test --",
          jestConfigFile = "jest.config.js",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
        ["neotest-rspec"] = {
          rspec_cmd = function(position_type)
            if position_type == "test" then
              return vim.tbl_flatten({
                "bundle",
                "exec",
                "rspec",
                "--fail-fast",
              })
            else
              return vim.tbl_flatten({
                "bundle",
                "exec",
                "rspec",
              })
            end
          end,
        },
      },
    },
  },

  -- require("neotest-rspec")({
  --   rspec_cmd = function()
  --     return vim.tbl_flatten({
  --       "bundle",
  --       "exec",
  --       "rspec",
  --     })
  --   end,
  -- }),
}
