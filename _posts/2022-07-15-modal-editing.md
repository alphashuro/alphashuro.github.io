---
layout: post
title: "modal editing: intro to vim +friends"
date: 2022-07-15 20:08:00 +0200
tags: software-engineering
---

NB: this article assumes that you use _[touch typing](https://en.wikipedia.org/wiki/Touch_typing)_. 
If you are not familiar with it I strongly recommend learning it, 
as it helps reduce neck strain by removing the need to look at the keyboard 
(also improves typing speed as a bonus).

## tl;dr 

_Modal editing_ is when you edit text files with an editor that has different "modes", 
where in some modes the keys that would normally be used to enter characters actually execute commands instead.

This gives the editor freedom to assign shortcuts and operations to the keys that are easiest to reach,
and further enables more intuitive shortcut assignments, 
chained commands (like `gd` for "go to definition") 
instead of chorded-commands (like `ctrl+f12`)
which often require finger acrobatics.

The editors that implement this ([Vim](https://www.vim.org) being the most common example) give
1. a very intuitive system for executing commands using mnemonics.
For example, to undo you simply press `u`.
2. additional operations that are not common in other editors (and would be too complex without modality).
For example, you can select all text inside a quoted string by typing `va"`, which means '**v**isual selection, **a**round, **"**'.
3. a workflow that doesn't require much mouse interaction, which I've found noticably more comfortable.

## why?

You might be thinking "there's nothing wrong with my current editor", 
so let me illustrate my response to that with an allegory:

Imagine you plucked a pre-historic person from the past and asked them to dig a hole.
They would probably start right away, digging with their hands or with a rock.
Then you introduce them to a shovel, and their world is changed.
A shovel can get the job done, and there is certainly nothing wrong with it,
but if innovation stopped at "it works" we would likely not have gone far beyond rocks and spears.

## basic vim

The main vimcepts I would brand essential are: _modes_, _motions_, _verbs_, and _modifiers_.

### modes
There are 3 modes: 
- **insert mode** - keys insert characters (similar to all other text editors)
- **normal mode** - keys execute operations/commands, this is where you will spend most of your time
- **visual mode** - for selecting text, similar to dragging the mouse over text

Vim starts in normal mode. To switch to insert mode, press `i`.
To switch back to normal mode, press `esc`.
In normal mode, press `v` to switch to visual mode.

_You can safely assume that every key in this article from this point on (except `esc`) should be pressed in normal mode._

### motions
There are two different ways to move the cursor: 
1. the standard directional step-by-step motion (think: arrow keys)
2. motion via text-objects.

#### directional motion
Arrow keys work just as they do in any other editor.
However there is a set of arrow keys used in Vim that may seem to betray my assertion that Vim is intuitive: the `hjkl` keys.
To explain this, take a look at the keyboard that Vim was originally built on:

![vim keyboard](/assets/vim-keyboard.jpg)

#### text objects
I think to explain this best, we should start with some examples:
- `w` - move cursor to the start of the next word
- `0` - move to the beginning of the line
- `A` - move to the end of the line _and_ go into insert mode to start typing
- `}` - move to the beginning of the next paragraph

Text objects are semantic and syntactic elements in the text, like line, word, paragraph, etc.
In code files, these are extended to include code structure elements, like code blocks and indentation.
The directional keys are actually just a motion to move to the next character.

### verbs
The keys we described in _motions_ are actually verbs, telling the cursor to _move_ once to the given text object.
There are other verbs however, like `d` (delete), `c` (change), and `p` (paste).
Their purpose is self evident, except maybe _change_: removes selected text and allows you to enter new text in its place.

Verbs can also work with text objects in interesting ways.
For example: while `dw`, or `delete word`, would delete from the current cursor position to the start of the next word,
`daw`, or `delete around word`, would delete _from the start of the current word_ to the start of the next word.
This kind of `verb + text object` combo works on many text objects, for example `ci"` is `change inside quotes`.

This is where the intuition comes in: you don't have to "memorize" a specific shortcut for changing text inside a pair of brackets `{`,
you can likely guess what keys to press after that introduction.
You extend this further every time you learn about a new verb or text-object without having to memorize much other than a single, usully mnemonic key.

One more special verb that is key to know is `.`, meaning `repeat the last command`.

#### modifiers
If you're deleting 3 words from a sentence, it gets a bit repetitive to type `dw` 3 times.
You might even press `.` for the last two, lowering the effort.
There is another option however: you can specify a count for the action you're performing, before you give it a motion.
For example, `d3w` would delete 3 words.
Almost all operations, including motions, can be modified by a count.

### command mode
By pressing `:`, you enter a "command mode", where you can execute named commands in Vim.
For example, `:write` writes or saves a file, and `:edit` opens a file for editing.
You can even enter a short form of the command, and barring any conflicts, vim understands what you want: `:w` = `:write`.
Some commands can also accept modifiers, for example `:wa` = write all open files.
A `!` is a special modifier representing `forcing` operation.
For example, `:w!` will overrite a file even if it is different from the current edits.

## common misconceptions
### Exiting vim is hard
`:q!`, or `:qa!`. 
When you look at this shortcut, given what we've learnt so far, it's actually quite intuitive and easy to explain:
- `:` - enters command mode
- `q` - short for quit
- `!` - force quit (ignore any changed files)

thus `:qa!` = force quit all open files

### Vim is hard
There is an initially steep learning curve, due to the number of concepts one has to learn before they can be productive in it.
However this quickly tapers off once you understand the basics, 
after going through vimtutor I found Vim much easier to use than any other editor I've used before.

### You have to give up nice IDE features from your current editor
I'll be honest and say that attempting to adopt the complete pure terminal-vim experience as your primary method for coding can be quite involved.
However almost every editor I've encounted has a "vim-mode" or a plugin that implements vim mode.
[vs-code](https://code.visualstudio.com)'s vim plugin is particularly good.

There are also a couple of editors that natively implement a model similar to vim, albeit with some improvements:
- [neovim](https://neovim.io)
- [kakoune](https://kakoune.org)
- [helix](https://helix-editor.com)
- [doom-emacs](https://doomemacs.org) - a minimal emacs framework that implements the vim model

_If you're interested in exploring this more, open a unix terminal, type `vimtutor`, and press enter._
