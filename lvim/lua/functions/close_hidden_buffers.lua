function CloseHiddenBuffers()
  --vim.cmd("echo \"hello world\"")

  -- local output = vim.api.nvim_command("buffers") or ""
  -- local count = 0
  -- local secondWord = ""

  -- -- Iterate over words in the string
  -- for word in output:gmatch("%S+") do
  --   count = count + 1
  --   if count == 2 then
  --     secondWord = word
  --     break
  --   end
  -- end

  -- print(secondWord)
  --
  local output = vim.api.nvim_command("buffers") or ""
  print(type(output))
  for i in string.gmatch(output, "%S+") do
    print(i)
  end

  -- Split the output into rows
end

vim.cmd("command! CloseHiddenBuffers lua CloseHiddenBuffers()")
