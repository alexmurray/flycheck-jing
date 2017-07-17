;;; flycheck-jing.el --- Integrate jing with flycheck

;; Copyright (c) 2017 Alex Murray

;; Author: Alex Murray <murray.alex@gmail.com>
;; Maintainer: Alex Murray <murray.alex@gmail.com>
;; URL: https://github.com/alexmurray/flycheck-jing
;; Version: 0.1
;; Package-Requires: ((flycheck "0.24") (rnc-mode "0.1") (emacs "24.4"))

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This packages integrates jing with flycheck to automatically check the
;; style of your RELAXNG schemas on the fly using jing

;;;; Setup

;; (with-eval-after-load 'flycheck
;;    (require 'flycheck-jing)
;;    (flycheck-jing-setup))

;;; Code:
(require 'flycheck)
(require 'rnc-mode)

(flycheck-define-checker jing
  "A checker using jing.

See `https://github.com/alexmurray/jing/'."
  :command ("jing" "-c" source-inplace)
  :error-patterns ((error line-start (file-name) ":" line ":" column ": error: " (message) line-end))
  :modes rnc-mode)

;;;###autoload
(defun flycheck-jing-setup ()
  "Setup flycheck-jing.

Add `jing' to `flycheck-checkers'."
  (interactive)
  (add-to-list 'flycheck-checkers 'jing))

(provide 'flycheck-jing)

;;; flycheck-jing.el ends here
