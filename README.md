# My Bash Alias

Simple aliases available in `bash`

## How to Use

The usage is very simple.
Just download and run the `myalias.sh`.

For example,

- Use `curl` to download, and run `myalias.sh`

   ```bash
   curl -o myalias.sh https://raw.githubusercontent.com/hmasdev/my-bash-alias/main/myalias.sh && . ./myalias.sh
   ```

- Use `git` to download the script

   ```bash
   git clone https://github.com/hmasdev/my-bash-alias.git && cd my-bash-alias && . ./myalias.sh
   ```

If you want to use permanently the aliases in `myalias.sh`,
download the `myalias.sh` and add its content to `~/.bashrc`.

```bash
curl https://raw.githubusercontent.com/hmasdev/my-bash-alias/main/myalias.sh >> ~/.bashrc
```

**Be sure to use `>>`!**

## LICENSE

- [MIT](./LICENSE)

## Authors

- [hmasdev](https://github.com/hmasdev)
