# AnyBar Icon Journal

A set of Bash functions and aliases to enable using AnyBar as a personal journal from the command line. Designed to work with custom icons.

## Prerequisites

[AnyBar](https://github.com/tonsky/AnyBar)

## Installation

Clone the repo and then source the script in your `.bashrc` file. For example, if you cloned the repo to your `HOME` directory:

`. "$HOME/anybar-icon-journal/anybar.sh"` (the dot in bash is equivalent to 'source')

Assumes all icons are stored in the default directory, `~/.AnyBar`.

Will write the journal entry to `~/anybar.log`. Journal entries take this form:

`MM/DD/YY hh:mm:ss - icon/color - journal entry`

## Usage

### Set the AnyBar Dot

Use like: anybar {icon/color} [journal entry (in quotes)] [port]

For example: `anybar grin "Got my new AnyBar journal working"`

Also aliased as simply `ab`.

### List Available AnyBar Icons

`anybar-icons` or `abi`

### Tail out the last 10 log entries

`anybar-log` or `abl`

### Cat out the entire log

`anybar-log-full` or `ablf`

## License

This set of functions and aliases is covered under The Unlicense. See LICENSE file for more details, but basically do whatever you want, just don't sue me afterwards.
