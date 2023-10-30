#tomtom/tcomment_vim Nassocci

## Prerequisite:
### install ripgrep.\
### sudo apt-get install python3-venv
### chafa
https://hpjansson.org/chafa/download/
~> build from binary, because linux mint has only an old version
git clone https://github.com/hpjansson/chafa
cd chafa
./autogen.sh && make && sudo make install

## Notes:
* LSPs
if u want to install additional lsps just `:Mason` and pick the one you need
For anyone that is interested in my vimrc, i will have a commit log below documenting each one of my commits (easy to C-f the change you want to know about though i would just suggest git log -S).\

## Unbind default windows keybinds `ctrl`+`v` and/or `ctrl`+`c`

Press `ctr`+`shift`+`,` in the terminal(cmd) to open `settings.json`

remove/comment out

```
        {
            "command":
            {
                "action": "copy",
                "singleLine": false
            },
            "keys": "ctrl+c"
        },
        {
            "command": "paste",
            "keys": "ctrl+v"
        },

