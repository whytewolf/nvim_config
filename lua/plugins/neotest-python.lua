return {
  require("neotest").setup({
    adapters = {
      require("neotest-python")({
        dap = { justMyCode = false },
        args = {"-c", "cov", "--"},
        runner = "pytest",
        pytest_discover_instances = true,
      })
    }
  })
}
