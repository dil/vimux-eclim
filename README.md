## Vimux-Eclim

[Vimux](https://github.com/benmills/vimux) with [Eclim](https://github.com/ervandew/eclim) integration for running tests asynchronously.

## Usage

Use any of the commands below or map them to shortcuts in your .vimrc to your liking.

  - :VimuxEclimRunFocusedJUnit - run only the JUnit test your cursor is currently on
  - :VimuxEclimRunAllJUnits - run all the JUnit tests in current file you are working on

This plugin assumes that your Vim configuration recognizes JUnit tests with the `java` file type.

## Installation

- With [vim-bundle](https://github.com/benmills/vim-bundle), `vim-bundle install dkpun/vimux-eclim`
- With [pathogen](https://github.com/tpope/vim-pathogen), put the contents of this directory into your pathogen bundle.

## REQUIREMENTS

- [vimux](https://github.com/benmills/vimux)
- [eclim](https://github.com/ervandew/eclim)

