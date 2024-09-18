# My Bash Alias

![GitHub top language](https://img.shields.io/github/languages/top/hmasdev/my-bash-alias)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/hmasdev/my-bash-alias?sort=semver)
![GitHub](https://img.shields.io/github/license/hmasdev/my-bash-alias)
![GitHub last commit](https://img.shields.io/github/last-commit/hmasdev/my-bash-alias)
![Scheduled Test](https://github.com/hmasdev/my-bash-alias/actions/workflows/tests_on_schedule.yaml/badge.svg)

Simple aliases available in `bash`

## How to Use

### Temporary Use

It is very simple to use `my-bash-alias` temporarily.
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

### Permanent Use

If you want to use permanently the aliases in `myalias.sh`,
download the `myalias.sh` and add its content to `~/.bashrc`.

First, you should follow [Temporary Use](#temporary-use).
Then run the following command:

```bash
update_my_bash_alias
```

`update_my_bash_alias` writes [the latest version of `myalias.sh`](https://raw.githubusercontent.com/hmasdev/my-bash-alias/main/myalias.sh) into update `~/.bashrc`.

Note that `update_my_bash_alias` uses 2 comments, `######StartMyBashAlias######` and `#####EndMyBashAlias######` to identify the section to update.
So you should NOT use these comments in `~/.bashrc`.

## How to Contribute

1. Fork the repository: [https://github.com/hmasdev/my-bash-alias](https://github.com/hmasdev/my-bash-alias);

2. Clone the repository:

   ```bash
   git clone https://github.com/{YOURE_NAME}/my-bash-alias
   cd my-bash-alias
   ```

3. Checkout your working branch:

   ```bash
   git checkout -b your-working-branch
   ```

4. Make your changes;

5. Add tests for your changes. Note that the prefix of the test workspace should be "test-". See './tests/test_basic_alias.sh' as an example;

6. Test your changes with the followings:

   ```bash
   for l in tests/*; do . $l; done
   ```

   Executing the above command in an isolated environment like `docker` is highly recommended;

7. Commit your changes:

   ```bash
   git add .
   git commit -m "Your commit message"
   ```

8. Push your changes:

   ```bash
   git push origin your-working-branch
   ```

9. Create a pull request: [https://github.com/hmasdev/my-bash-alias/compare](https://github.com/hmasdev/my-bash-alias/compare).

## LICENSE

- [MIT](./LICENSE)

## Authors

- [hmasdev](https://github.com/hmasdev)
