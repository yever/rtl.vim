# rtl.vim

A simple Vim plugin to toggle the writing direction between left-to-right
and right-to-left (used in Hebrew, Arabic, Farsi, etc.).

This plugin is based on [David Elentok](https://github.com/elentok)'s
[gist](https://gist.github.com/elentok/3193556).

# Installation

With [pathogen](https://github.com/tpope/vim-pathogen):
```sh
cd ~/.vim/bundle 
git clone https://github.com/yever/rtl.vim
```

# Configuration

Once the plugin is install you can toggle the writing direction with:
```vim
:call ToggleRTL()
```

To assign a shortcut key, set the variable ``g:rtl_toggle_key``. For
example, to use ``F2`` add the following line to your ``.vimrc``:
```vim
let g:rtl_toggle_key="<F2>"
```

The keymap to be used in right-to-left mode is set by the variable
``g:rtl_keymap``, for example:
```vim
let g:rtl_keymap="hebrew"
```

The left-to-right keymap can also be set with the variable
``g:rtl_default_keymap``.

# Copyright

Copyright 2015 Ya'ar Hever

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
