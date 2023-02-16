local jest_status, jest = pcall(require, "nvim-jest")
if not jest_status then
  return
end

jest.setup({
  jest_cmd = "npm run test --",
})
