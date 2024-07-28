;;; init.el --- Libera Emacs init file  -*- lexical-binding: t; -*-

;; Copyright (c) 2022-2023  Eren Eroğlu <108634315+ereneroglum@users.noreply.github.com>
;; URL: https://github.com/ereneroglum
;; Version: 1.0.0
;; Package-Requires ((emacs "29.1"))

;; This file is NOT part of GNU Emacs.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU Affero General Public License as published by
;; the Free Software Foundation, version 3 of the License.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU Affero General Public License for more details.
;;
;; You should have received a copy of the GNU Affero General Public License
;; along with this file.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

;; Add custom load path to load *.el files
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; UI
(global-display-line-numbers-mode 1)

;; Show number of matching phrases
(setq isearch-lazy-count t)

;; Trailing Whitespace Clear Before Save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Window Navigation
(windmove-default-keybindings)

;; Auto Close Brackets
(electric-pair-mode 1)

;; Switch to completions buffer (use if helm is not present)
; (setq completion-auto-select t)

;; Package management
(require 'libera-elpaca)

;; Auto Completion Packages
(require 'libera-company)
(require 'libera-helm)
(require 'libera-which-key)

;; Theming
(require 'libera-theme)

;; Syntax highlighting
(require 'libera-treesitter)

;; Language modes
(require 'libera-markdown)
(require 'libera-rust-mode)
(require 'libera-go-mode)
(require 'libera-haskell-mode)
(require 'libera-web-mode)

;; Language Client
(require 'libera-eglot)

;;; init.el ends here
