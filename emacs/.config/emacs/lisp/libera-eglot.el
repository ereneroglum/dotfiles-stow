;;; libera-eglot.el --- Libera Emacs eglot configuration file   -*- lexical-binding: t; -*-

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

;; Set modes where eglot should start automatically
(use-package eglot
  :ensure nil
  :hook
  (c++-ts-mode . eglot-ensure)
  (c-or-c++-ts-mode . eglot-ensure)
  (c-ts-mode . eglot-ensure)
  (go-ts-mode . eglot-ensure)
  (haskell-mode . eglot-ensure)
  (python-ts-mode . eglot-ensure)
  (rust-ts-mode . eglot-ensure))

(provide 'libera-eglot)

;;; libera-eglot.el ends here
