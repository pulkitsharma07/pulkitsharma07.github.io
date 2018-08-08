---
layout: post
title:  "Managing Shell Commands"
date:   2018-08-09 03:30:00 +0530
categories: shell vim learning
---

Before I joined my job, I had been a heavy Windows user. Apart from the "UNIX Programming" course in college, I had barely used any of the shell commands.

In the initial days of the job, in order to run a previously executed shell command, I used to press the up arrow key on the keyboard to search for it.

## Shell Reverse Search

Turns out there is a neat way to search through your previously executed shell commands (All executed commands are stored in the bash history, for `zsh` it is the `~/.zsh_history` file).
All you have to do is press <kbd>CTRL</kbd>+<kbd>r</kbd> and then type some parts of the commands that you can recall.

For instance, if I know that sometime back, I had used a command to figure out the role of a particular Redis instance. Then all I have to do is `<ctrl-r>role` and the desired command while appear automagically !! (Keep pressing `<ctrl-r>` to cycle through the results)

![reverse-search](/assets/casts/reverse_search.svg){:class="img-responsive"}

## Aliases

One day, I was looking at my co-worker's laptop while he was debugging some issue, and he started typing mysterious commands in the terminal like `gco master`.
Turns out `zsh` comes with a set of `aliases`, which are like shortcuts to entire shell commands.`gco` is an alias for `git checkout`. If you feel that there is a command that you need frequently, it is a good idea to make an alias for it. This avoids typing the entire command, and you can always reverse search for the alias, as it should be easy to remember.

To see existing aliases, you can run `alias -L`. Creating a new alias is as simple as adding

```sh
alias ping_redis='redis-cli -h 100.100.100.100 ping'
```
to your rc file (For `zsh` it is primarily `~/.zshrc`).



---

As you keep using the terminal, it may happen that you need some commands which are infrequently used but are important. For example one time configuration commands, installation steps, or some important queries to your database.

Making an alias does not make sense for each of these commands as they are not frequently used and you'll get overloaded with aliases to remember. Reverse search might not work if you don't remember any part of the command (or the bash history file got deleted/truncated).

I often found out that I had important commands scattered in different documents. Some of them might be in the OS X Notes app, some in an always running Sublime Text window or some found out by grepping `~/.zsh_history`.

Once, I would've found the command; the next step was to copy, go to the terminal window, paste and execute that command.

## Vim
Why not use Vim?

For me, I keep a `commands.sh` file to take notes regarding all the important commands and use a handy little setting in the vimrc file to execute those commands from the file itself. Check out the demo...

![commands-demo-vim](/assets/casts/commands_vim_demo.svg){:class="img-responsive"}

You can select the appropriate shell command in `visual` mode and run them by pressing `r`

Here are the appropriate vimrc settings for `zsh`. I had to do some digging on StackOverflow to get it to load my aliases.

```vim
set shell=zsh
vnoremap r :'<,'>w !zsh
```

You need to ensure that your aliases are in `.zshenv`, or you can make `.zshenv` a symlink to `.zshrc`.

Keeping the shell commands in `commands.sh` will allow you to write commands that you can later automate.
For instance, if you repeatedly SSH into a machine to run something in the Rails console, you can keep the following in your `commands.sh` file instead:

```sh
ssh -t 100.100.100.100 "cd /some/dir/rails/;bundle exec rails console staging <<< 'Trash.delete_all'"
```

---

**What are your thoughts? How do you manage the growing set of commands you work with?**

A neat way I found out today was to use comments to tag shell commands.
For example:

```sh
find . -name "*sh" #find shell scripts
```

Once you execute the above, you can reverse search by doing `find shell scripts`.
Sweet!

### Helpful Resources:
* [https://stackoverflow.com/questions/2575545/vim-pipe-selected-text-to-shell-cmd-and-receive-output-on-vim-info-command-line/5373376#5373376](https://stackoverflow.com/questions/2575545/vim-pipe-selected-text-to-shell-cmd-and-receive-output-on-vim-info-command-line/5373376#5373376)
* [https://unix.stackexchange.com/questions/113462/how-can-i-make-shell-aliases-available-when-shelling-out-from-vim/197135#197135](https://unix.stackexchange.com/questions/113462/how-can-i-make-shell-aliases-available-when-shelling-out-from-vim/197135#197135)
* [https://unix.stackexchange.com/questions/26245/how-to-quickly-store-and-access-often-used-commands/26263#26263](https://unix.stackexchange.com/questions/26245/how-to-quickly-store-and-access-often-used-commands/26263#26263)
