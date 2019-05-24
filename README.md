# MyDE

>"He loved the land no more than the bank loved the land. He could admire the tractor – its machined surfaces, its surge of power, the roar of its detonating cylinders; but it was not his tractor. Behind the tractor rolled the shining disks, cutting the earth with blades – not plowing but surgery … The driver sat in his iron seat and he was proud of the straight lines he did not will, proud of the tractor he did not own or love, proud of the power he could not control. And when that crop grew, and was harvested, no man had crumbled a hot clod in his fingers and let the earth sift past his fingertips. No man had touched the seed, or lusted for the growth. Men ate what they had not raised, had no connection with the bread. The land bore under iron, and under iron gradually died; for it was not loved or hated, it had no prayers or curses.”
>
>John Steinbeck, The Grapes of Wrath

All software has a beginning. A place where it is planed, shaped, built and tested. As developers we are blessed with pre configured IDEs which make developing straightforward and hassel free. However these tools come with a price. They provide a layer of abstraction between us and our work. Whether these IDEs are propritary or open source they are created by other developers who have their own ideas about what "proper workflow" looks like and what tools should be available to users. While these IDEs provide an incredible amount of utility, the nature of dictating how a creator shapes their work undermines that individual developers ownership of, and connection to, their product.

>"Everyman has a property in his own Person. This no body has any right to but himself. The labour of his body, and the work of his hands, we may say, are properly his. Whatsoever then he removes out of the state that nature hath provided, and left it in, he hath mixed his labour with, and joyned to it something that is his own, and thereby makes it his property. It being by him removed from the common state nature placed it in, it hath by this labour something annexed to it, that excludes the common right of other men."
>
>John Locke, Second Treatise of Government

Writing software is an incredibly rewarding act of problem solving, creativity, and self expression and I believe that our development tools are the cornerstone to our work. Choosing and customizing the best tools for the job lays the groundwork for an involved and rewarding development experience.

The motivation behind MyDE is to encourage developers to roll up there sleeves and dive deep into building a bottom up personalized IDE based on their own needs and goals. While building out a customized development enviornment is not for everyone the challenges, failures, and eventual success will sow greater connection between you and your work.

## So What Exactly Is MyDE?

MyDE is a modular development enviorment that is comprised of the tools and customisations I am currently using. MyDE displays my personalized configuration of these powerful open source options so that others can utilize, customize and learn from them when developing.

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

## How To Install

Run:

'''
>$ git clone https://github.com/NateGyory/MyDE.git
'''

## How To Configure

Run:

'''
>$ ./config.sh
'''

If you dont have the required binaries the config.sh script will tell you which ones to download.

**Note:** If you already have an init.vim or bashrc then config.sh will not overwrite them. config.sh will print a notification and It will be up to you to merge the files and resolve any conflicts.

## Learning
TODO

## Customisation
TODO

## Acknowledgements

