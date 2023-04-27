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

;;; Code:

;; UI
(global-display-line-numbers-mode 1)
(load-theme 'modus-vivendi)

;; Show number of matching phrases
(setq isearch-lazy-count t)

;; Trailing Whitespace Clear Before Save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Window Navigation
(windmove-default-keybindings)

;; Auto Close Brackets
(electric-pair-mode 1)

;; Eglot Config
(add-hook 'c++-mode-hook 'eglot-ensure)
(add-hook 'c-mode-hook 'eglot-ensure)

;; Switch to completions buffer
(setq completion-auto-select t)

;;; init.el ends here
