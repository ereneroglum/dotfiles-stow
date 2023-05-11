;;; libera-package.el --- Libera Emacs package management configuration file  -*- lexical-binding: t; -*-

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

;; Initialize package.el package manager
(require 'package)

;; Add melpa to package arhives list
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; Set melpa as the default package archive
;; GNU Elpa may be outdated for some packages
(setq package-archive-priorities '(("melpa"  . 3)
                                   ("gnu"    . 2)
                                   ("nongnu" . 1)))

;; Initialize package.el
(package-initialize)

;; Select which packages to be installed
;; Configuration for all packages will be given in respective files
(setq package-selected-packages '(company))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(provide 'libera-package)

;;; libera-package.el ends here
