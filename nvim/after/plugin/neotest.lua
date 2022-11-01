require("neotest").setup {
  adapters = {
    require "neotest-rspec" {
      rspec_cmd = "bundle exec rspec"
    }
  }
}
