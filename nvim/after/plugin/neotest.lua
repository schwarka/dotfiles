require("neotest").setup {
  adapters = {
    require "neotest-jest" {
      jestCommand = "pnpm test --",
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    },
    require "neotest-rspec" {
      rspec_cmd = function()
        return vim.tbl_flatten({
          "bundle",
          "exec",
          "rspec",
        })
      end 
    }
  }
}
