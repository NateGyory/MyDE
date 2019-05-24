#MyDE

>"He loved the land no more than the bank loved the land. He could admire the tractor – its machined surfaces, its surge of power, the roar of its detonating cylinders; but it was not his tractor. Behind the tractor rolled the shining disks, cutting the earth with blades – not plowing but surgery … The driver sat in his iron seat and he was proud of the straight lines he did not will, proud of the tractor he did not own or love, proud of the power he could not control. And when that crop grew, and was harvested, no man had crumbled a hot clod in his fingers and let the earth sift past his fingertips. No man had touched the seed, or lusted for the growth. Men ate what they had not raised, had no connection with the bread. The land bore under iron, and under iron gradually died; for it was not loved or hated, it had no prayers or curses.”
> John Steinbeck, The Grapes of Wrath

All software has a beginning. A place where it is planed, shaped, built and tested. As developers we are spoiled with beautiful pre configured IDEs which make developing straightforward and hassel free. However these tools come with a price. They provide a layer of abstraction between us and our work. Whether these IDEs are propritary or open source they are created by other developers who have their own ideas about what "proper workflow" looks like and what tools should be available to users. While these IDEs provide an incredible amount of utility, the nature of dictating how a creator shapes their work undermines ownership of the individual developer.

"What about open source IDEs?", you may ask, "Anyone can study and modify the code for their own personal workflow."

This is true, however the amount of work you would have to do to change a monolithic IDE to suite you specific work needs would be very difficult. Changes to an open source IDE usually fall under the vein of creating plugins or creating addional small features to enhance the already existing work flow.

In stead of taking a top down approach it 

Ownership is taken out of our hands and we expect everything to To ask "how can this be better", pick apart, and tinker with out "development workshops" we exercise greater ownership and connection to our software. I do not mean ownership in terms of monetary ownership but in terms of a connectedness and satisfaction in our daily toil. To understand how our tools work, knowledge to congifure and customize them to our needs gives us a greater and more fulfilling connection with our work and promotes the true spirit of ownership. While this may offer convenience, it stiffles the innovative and inqusitive nature of the individual. In their current form, most IDEs tell us HOW to write code and tell us what tool we NEED to use. They remove us from taking ownership of our "workshop" and stiffle creativity and self expression.

Writing software is an incredibly rewarding act of problem solving, creativity, and self expression and I believe that our development tools are the cornerstone to our work. Choosing and customizing the best tools for the job lays the groundwork for an involved and rewarding development experience.

MyDE is a modular development enviorment that is comprised of the tools and customisations I am currently using. My goal with MyDE is to display these powerful open source options so that others can utilize, customize and learn from them when developing.


MyDE is comprised of:

* Neovim - Text editor.
  * NERDTree - File system explorer.
  * ALE - Asynchronous Lint Engine for error checking.
  * Custom neovim commands and key bindings.
* vim-plug - neovim package manager.
* Tmux - Terminal multiplexer.
  * Custom tmux key bindings.
* Bashrc - Custom bash commands, terminal color enhancements, and aliases.

Supported Platforms: LINUX and Mac OS X.

##How To Install

Run:

'''
>$ git clone https://github.com/NateGyory/MyDE.git
'''

##How To Configure

Run:

'''
>$ ./config.sh
'''

If you dont have the required binaries the config.sh script will tell you which ones to download.

**Note:** If you already have an init.vim or bashrc then config.sh will not overwrite them. config.sh will print a notification and It will be up to you to merge the files and resolve any conflicts.

##Learning
TODO

##Customisation
TODO

##Acknowledgements

