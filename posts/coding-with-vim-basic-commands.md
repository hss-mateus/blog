---
title: "Coding With Vim - Basic Commands"
date: 2020-04-28T17:13:09-03:00
draft: true
---

## What is Vim?

Vim is a terminal-based text editor with focus in eficiency and productivity. Vim makes developer's life a lot easier, with useful and time-saving commands and shortcuts, in comparison with the traditional way of editing using the mouse.

## Why I Should Use Vim?

Most of the time you don't write code from zero. You will pass more time navigating and editing existing code instead, and vim have all you need to do this in a way more faster than using a regular text editor and a mouse.

## Navigating

Vim let you stay in the [home row](https://www.computerhope.com/jargon/h/hrk.htm) almost all the time, so instead of navigate with the arrow keys, you will use `h`, `j`, `k` and `l` keys - left, up, down and right, respectively.

## Modes

If you open vim for the first time and try to type something, you will notice that nothing will happen. That's because vim have **modes**. The 3 main modes that vim have are **normal**, **insert**, **visual** and **command**. You can see what mode you currently are on the bottom-left of your screen (except in the command mode).

The concepts for each one are simple:

 - To navigate into your code or enter in any other mode, use **normal** by pressing `esc`
 - To insert new text, use **insert** by typing `i`
 - To select a block of text, use **visual** by typing `v`
 - To run a specific command, use **command** by typing `:`

## Normal Mode

In normal mode you have commands and shortcuts to navigate through your code, such as jumping to a line, find a word, etc. The basic shortcuts in this mode are:

 - `w`: Go to the next word
 - `e`: Go to the end of the selected word
 - `x`: Delete the selected character
 - `yy`: Copy the selected line
 - `dd`: Cut the selected line
 - `p`: Paste
 - `a`: **insert** after the cursor
 - `o`: **insert** a new line
 - `/foobar`: Find a occurrence
 - `n`: Go to the next occurrence

## Insert Mode

This mode don't have any shortcut or command, here you will just write text.

## Visual Mode

This mode allows you to select a block of text and do something with it. Here you can use some **normal** shortcuts to decide what you want to do with the selected content, try it!

## Command Mode

If you still don't know how to exit vim, here we go! By typing `:` in **normal** mode you can enter more complex commands that will appear in the bottom of your screen, such as:

 - `:q`: To exit
 - `:w`: To save
 - `:noh`: Remove the highlight of the matched occurrencies
 - `:set number`: Display line numbers
 - `:set autoindent`: To indent lines while you type
 - `:g/foobar/d`: Delete all occurrencies
 - `:%s/foo/bar/g`: Replace all occurrencies

## What's Next?

It's recommended to only practice these commands at the moment, until you feel confortable to use them. After that, you can learn the dozens of commands and shortcuts that you don't know by just typing `vimtutor` in your terminal, here you will get a more detailed guide about using vim.

You can also see the [vim-galore](https://github.com/mhinz/vim-galore#readme) repository in Github, which describes mostly everything about vim, such as **plug-ins** (learn about plug-ins!) and helpful stuff.
