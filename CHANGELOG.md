# Changelog

## [2.0.0](https://github.com/folke/tokyonight.nvim/compare/v1.23.0...v2.0.0) (2023-06-21)


### ⚠ BREAKING CHANGES

* use new-style autocmds

### Features

* added colors for flash.nvim ([74fdfa7](https://github.com/folke/tokyonight.nvim/commit/74fdfa70b7dcbaeec1824a033072c4521b708c40))
* **extra:** add gitui theme ([#397](https://github.com/folke/tokyonight.nvim/issues/397)) ([b39627b](https://github.com/folke/tokyonight.nvim/commit/b39627bfea2ff80112694198a30641bfbf07c74d))
* LspInlayHint ([3c3f82a](https://github.com/folke/tokyonight.nvim/commit/3c3f82acdd5b48f6090f5d57c10b464665d814c3))


### Bug Fixes

* better test group Foo ([05dfc1b](https://github.com/folke/tokyonight.nvim/commit/05dfc1bc40c709d9da67ce68a35a3dd2e3a75ce9))
* use new-style autocmds ([ec8f2ef](https://github.com/folke/tokyonight.nvim/commit/ec8f2efe9d9e2bb570477949e9786008605eb984))

## [1.23.0](https://github.com/folke/tokyonight.nvim/compare/v1.22.0...v1.23.0) (2023-06-17)


### Features

* **extras:** add 24h clock support to tmux ([#321](https://github.com/folke/tokyonight.nvim/issues/321)) ([a0932ac](https://github.com/folke/tokyonight.nvim/commit/a0932acea0ced2b46de9ec0d1433c8e3e58aea71))


### Bug Fixes

* **mini-indentscope:** symbol hl group nocombine ([#392](https://github.com/folke/tokyonight.nvim/issues/392)) ([1cef0bc](https://github.com/folke/tokyonight.nvim/commit/1cef0bc16c675ea47c496e13660df8f82dfe01f1))

## [1.22.0](https://github.com/folke/tokyonight.nvim/compare/v1.21.0...v1.22.0) (2023-05-27)


### Features

* added support for CmpGhostText ([8909323](https://github.com/folke/tokyonight.nvim/commit/89093235d5c63f2a6fcd077c7dc1920916475c19))


### Bug Fixes

* **cmp:** better ghost text ([94db975](https://github.com/folke/tokyonight.nvim/commit/94db97565b3717f3b85d9918577c57a47f7a22e7))

## [1.21.0](https://github.com/folke/tokyonight.nvim/compare/v1.20.0...v1.21.0) (2023-05-25)


### Features

* added support for FloatTitle ([fb1c608](https://github.com/folke/tokyonight.nvim/commit/fb1c60812c8ba282327dff5d718167fcbcaad35b))

## [1.20.0](https://github.com/folke/tokyonight.nvim/compare/v1.19.0...v1.20.0) (2023-05-24)


### Features

* **extras:** added colors for zathura ([#385](https://github.com/folke/tokyonight.nvim/issues/385)) ([e7e2280](https://github.com/folke/tokyonight.nvim/commit/e7e22807a3872a0649e41868af9efe18605d5c9d))


### Bug Fixes

* **barbar:** unify inactive tab background ([#383](https://github.com/folke/tokyonight.nvim/issues/383)) ([dca7f3a](https://github.com/folke/tokyonight.nvim/commit/dca7f3a916d70b9dc925de5cb914f364558cc921))

## [1.19.0](https://github.com/folke/tokyonight.nvim/compare/v1.18.0...v1.19.0) (2023-05-22)


### Features

* **lsp:** add more highlights ([#379](https://github.com/folke/tokyonight.nvim/issues/379)) ([3a63838](https://github.com/folke/tokyonight.nvim/commit/3a638383d2eac2cade8b0e8771709575e0b089ed))

## [1.18.0](https://github.com/folke/tokyonight.nvim/compare/v1.17.0...v1.18.0) (2023-05-07)


### Features

* **lsp:** add more highlights ([#374](https://github.com/folke/tokyonight.nvim/issues/374)) ([fc4b07d](https://github.com/folke/tokyonight.nvim/commit/fc4b07d1585396ee14f6d6323fd534dfd5526ebe))
* **tsx:** better colors for tsx tags ([f10213d](https://github.com/folke/tokyonight.nvim/commit/f10213d25ed5341546a9d99ad4ff4a4612200cb5))


### Bug Fixes

* **GitGutter:** add highlight of GitGutter**LineNr ([#367](https://github.com/folke/tokyonight.nvim/issues/367)) ([606d4d9](https://github.com/folke/tokyonight.nvim/commit/606d4d9e7c3c95ae9243d652ce6c228958fb395b))

## [1.17.0](https://github.com/folke/tokyonight.nvim/compare/v1.16.0...v1.17.0) (2023-04-22)


### Features

* added extras to readme ([cca8227](https://github.com/folke/tokyonight.nvim/commit/cca8227dc4c6e0c4f5a56055b659f3c04efe496f))


### Bug Fixes

* **colors:** make extras deterministic. Fixes [#344](https://github.com/folke/tokyonight.nvim/issues/344) ([3f18207](https://github.com/folke/tokyonight.nvim/commit/3f18207ff1f1c6e68d292f4e6c804dc8eefd6b2f))
* **delta:** move color defs to colors so it works properly with the day theme. Fixes [#362](https://github.com/folke/tokyonight.nvim/issues/362) ([d78d3de](https://github.com/folke/tokyonight.nvim/commit/d78d3de58c15c8369e920b0852be3dc81797e331))

## [1.16.0](https://github.com/folke/tokyonight.nvim/compare/v1.15.0...v1.16.0) (2023-04-19)


### Features

* Improve night barbar ([#360](https://github.com/folke/tokyonight.nvim/issues/360)) ([4a5ea8c](https://github.com/folke/tokyonight.nvim/commit/4a5ea8c5df533ca92b590c31d4a3930562a3a257))
* **semantic_tokens:** highlight lsp.typemod.macro.defaultLibrary as `[@function](https://github.com/function).builtin` ([#358](https://github.com/folke/tokyonight.nvim/issues/358)) ([dc5b5e2](https://github.com/folke/tokyonight.nvim/commit/dc5b5e20bc232a10e833fd3e81fea149bd4a902f))

## [1.15.0](https://github.com/folke/tokyonight.nvim/compare/v1.14.0...v1.15.0) (2023-04-19)


### Features

* **treesitter:** darken builtin types & revert reset comment type ([#356](https://github.com/folke/tokyonight.nvim/issues/356)) ([b6f207e](https://github.com/folke/tokyonight.nvim/commit/b6f207ebf6e3de9acbbc443623ad74b65bd00d05))

## [1.14.0](https://github.com/folke/tokyonight.nvim/compare/v1.13.0...v1.14.0) (2023-04-18)


### Features

* better Debug colors ([a1c8489](https://github.com/folke/tokyonight.nvim/commit/a1c8489cb6116d3c237be71d0a7dd96fbc982d91))


### Bug Fixes

* **semantic_tokens:** reset comment type ([#354](https://github.com/folke/tokyonight.nvim/issues/354)) ([3d2f79c](https://github.com/folke/tokyonight.nvim/commit/3d2f79cd1f3cea7520d5cc4d06c8010fe2592db8))

## [1.13.0](https://github.com/folke/tokyonight.nvim/compare/v1.12.0...v1.13.0) (2023-04-18)


### Features

* better style for DiagnosticUnnecessary ([6ebd358](https://github.com/folke/tokyonight.nvim/commit/6ebd35868fbdb8f5a3c5009d5d7a72ed7da2143c))
* **semantic_tokens:** slightly different style for interfaces and default types ([3af1264](https://github.com/folke/tokyonight.nvim/commit/3af126456719cdc6c2a904cffc3cfe31ce22afb6))


### Bug Fixes

* **semantic_tokens:** slightly less difference for builtin types ([939bd8c](https://github.com/folke/tokyonight.nvim/commit/939bd8c7e149391b0cb71d3aadd75eba0fa5647f))

## [1.12.0](https://github.com/folke/tokyonight.nvim/compare/v1.11.0...v1.12.0) (2023-04-17)


### Features

* improve barbar separator ([#350](https://github.com/folke/tokyonight.nvim/issues/350)) ([169b76f](https://github.com/folke/tokyonight.nvim/commit/169b76ff87cab82d8691414db9807cd1ae9e560e))


### Bug Fixes

* **lsp:** enumMember should be highlighted `[@constant](https://github.com/constant)` ([#352](https://github.com/folke/tokyonight.nvim/issues/352)) ([78bcc2f](https://github.com/folke/tokyonight.nvim/commit/78bcc2fae719134291df218f679ec2bb49c6e95f))

## [1.11.0](https://github.com/folke/tokyonight.nvim/compare/v1.10.0...v1.11.0) (2023-04-16)


### Features

* added support for LazyVim DapStoppedLine ([ef6df2f](https://github.com/folke/tokyonight.nvim/commit/ef6df2f2d34d1cdc8c5653db3d1b8d454d844858))
* better hl for markdown literal ([e061044](https://github.com/folke/tokyonight.nvim/commit/e0610445d5d2ee089269a199f49bbfaebd1c9ced))


### Bug Fixes

* **barbar:** CurrentBackground ([#342](https://github.com/folke/tokyonight.nvim/issues/342)) ([cbed164](https://github.com/folke/tokyonight.nvim/commit/cbed164e6f280eced47de91107a87ede5fc2adcf))
* **extras:** make generation of extras deterministic ([#344](https://github.com/folke/tokyonight.nvim/issues/344)) ([715f923](https://github.com/folke/tokyonight.nvim/commit/715f923435a9255f85dec8380fac027f37acac72))
* updated extras ([6e0bfd6](https://github.com/folke/tokyonight.nvim/commit/6e0bfd6836e09a4c66184a33f1266e964f920299))

## [1.10.0](https://github.com/folke/tokyonight.nvim/compare/v1.9.1...v1.10.0) (2023-03-23)
