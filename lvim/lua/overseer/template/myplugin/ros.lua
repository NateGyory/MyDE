local Path = require('plenary.path')
local overseer = require("overseer")
return {
  -- Required fields
  name = "ROS Topic List",
  builder = function(params)
    -- This must return an overseer.TaskDefinition
    return {
      -- cmd is the only required field
      cmd = { 'ros2' },
      -- additional arguments for the cmd
      args = { "topic", "list" },
      -- the name of the task (defaults to the cmd of the task)
      name = "ROS Topic List",
      -- set the working directory for the task
      -- cwd = tostring(Path:new('{cwd}')),
      -- additional environment variables
      --
      -- env = {
      --   VAR = "FOO",
      -- },
      --
      -- the list of components or component aliases to add to the task
      -- components = { "my_custom_component", "default" },
      -- arbitrary table of data for your own personal use
      -- metadata = {
      --   foo = "bar",
      -- },
    }
  end,
  -- Optional fields
  desc = "ROS Topic List",
  -- Tags can be used in overseer.run_template()
  tags = { overseer.TAG.BUILD },
  params = {
    -- See :help overseer-params
  },
  -- Determines sort order when choosing tasks. Lower comes first.
  priority = 5,
  -- Add requirements for this template. If they are not met, the template will not be visible.
  -- All fields are optional.
  condition = {
    -- A string or list of strings
    -- Only matches when current buffer is one of the listed filetypes
    -- filetype = { "c", "cpp" },
    -- A string or list of strings
    -- Only matches when cwd is inside one of the listed dirs
    -- dir = "/home/nate/Development/catkin_ws",
    -- Arbitrary logic for determining if task is available
    callback = function(search)
      print(vim.inspect(search))
      return true
    end,
  },
}
