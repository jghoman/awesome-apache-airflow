# Contribution Guidelines

## Table of Contents
- [Adding to this list](#adding-to-this-list)
- [Creating your own awesome list](#creating-your-own-awesome-list)
- [Adding something to an Awesome list](#adding-something-to-an-awesome-list)
- [Updating your Pull Request](#updating-your-pull-request)

## Adding to this list

Please ensure your pull request adheres to the following guidelines:

- Search previous suggestions before making a new one, as yours may be a duplicate.
- Make sure the list is useful before submitting. That implies it has enough content and every item has a good succinct description.
- Make an individual pull request for each suggestion.
- Use [title-casing](https://capitalizemytitle.com/) (AP style).
- Use the following format: `[List Name](link)`
- Link additions should be added to the bottom of the relevant category, with the exception of date ordered categories.
- New categories or improvements to the existing categorization are welcome.
- Check your spelling and grammar.
- Make sure your text editor is set to remove trailing whitespace.
- The pull request and commit should have a useful title.
- The body of your commit message should contain a link to the repository.
- All links should be valid and accessible. Our CI will automatically check for broken links.

Thank you for your suggestions!

## Creating your own awesome list

To create your own list, check out the [instructions](https://github.com/sindresorhus/awesome/blob/master/create-list.md).

## Adding something to an awesome list

If you have something awesome to contribute to an awesome list, this is how you do it.

You'll need a [GitHub account](https://github.com/join)!

1. Access the awesome list's GitHub page. For example: https://github.com/mbasso/awesome-wasm
2. Click on the `README.md`.
3. Now click on the edit icon.
4. You can start editing the text of the file in the in-browser editor. Make sure you follow guidelines above. You can use [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/).
5. Say why you're proposing the changes, and then click on "Propose file change".
6. Submit the [pull request](https://help.github.com/articles/using-pull-requests/)!

## Checking for broken links

We automatically check for broken links in all pull requests and weekly on the main branch using [Lychee](https://github.com/lycheeverse/lychee). The link checker runs in **informational mode** - it reports broken links but won't block your PR from being merged.

To check for broken links locally before submitting your PR:

1. Install Lychee: `cargo install lychee` (requires [Rust](https://rustup.rs/)) or download from [releases](https://github.com/lycheeverse/lychee/releases)
2. Run `lychee --verbose --no-progress '*.md'` from the repository root

If the link checker reports broken links, please review them and fix if possible. However, we understand that:
- External sites may go down temporarily or permanently
- Some sites have SSL/certificate issues
- Historical links may still be valuable even if currently unavailable

Maintainers will review and address reported broken links as appropriate.

The link checker will report any broken links that need to be fixed.
