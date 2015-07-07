#Serialize 

v1.0

A command line tool for storing the serial numbers of your most valuable items.

##How to use the application

1. [Fork the repo](https://github.com/salexzee/serialize/settings#fork-destination-box)
2. Open a terminal window and navigate to the folder you woule like to store Serialize in.
3. Copy/Paste the following line into your terminal window, making sure you change `your_username` to whatever your GitHub username is: `git@github.com:your_username/serialize.git`
4. Copy/Paste `cd serialize` into your terminal window to move into the recently cloned folder
5. Copy/Paste `mkdir lib/output` to create an output folder. Nothing in this folder will be tracked with git.
6. Copy/Paste `touch lib/output/output.txt` to create the output file for your serial numbers.
7. Copy/Paste `ruby lib/serialize.rb` into your terminal window to run the application.

This application requires that you have Ruby installed.

Ruby 2.2.1 and up have been tested.

Serialize has only been tested in a Mac OSX environment, but will most likely work on any Linux system. It may also work with Windows, but the commands will be a little bit different. You can test this if you'd like.

*Disclaimers*

- *Price currently doesn't save*
- *Do NOT edit output.txt or you could cause problems with the program*