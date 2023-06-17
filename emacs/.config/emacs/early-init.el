;;; early-init.el --- Libera Emacs early-init file  -*- lexical-binding: t; -*-

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

;; Package Management
(setq package-enable-at-startup nil)

;; Configure GC
(setq gc-cons-threshold (* 1024 1024 1024))

;; Backups
(unless (file-directory-p (concat user-emacs-directory "auto-save"))
  (make-directory (concat user-emacs-directory "auto-save")))
(setq auto-save-file-name-transforms `((".*" ,(concat user-emacs-directory "auto-save" "/") t))
      backup-by-copying t
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      backup-directory-alist `(("" . ,(concat user-emacs-directory "backup"))))

;; Startup Screen
(setq inhibit-splash-screen t
      inhibit-startup-screen t)

;; Dialog Boxes
(setq use-dialog-box nil
      use-file-dialog nil)

;; UI
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(push '(font . "JetBrainsMono Nerd Font Mono 12") default-frame-alist)

;;; early-init.el ends here
