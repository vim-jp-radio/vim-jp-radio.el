;;; vim-jp-radio.el --- Client for vim-jp-radio podcast  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Naoya Yamashita

;; Author: Naoya Yamashita <conao3@gmail.com>
;; Keywords: convenience
;; Package-Requires: ((emacs "29.1") (podcaster "0.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Client for vim-jp-radio

;;; Code:

(require 'podcaster)

;;;###autoload
(defun vim-jp-radio ()
  "Configure `podcaster' for `vim-jp-radio'."
  (interactive)
  (let ((podcaster-feeds-urls '("https://feeds.megaphone.fm/TFM9640066968")))
    (podcaster)))

(defalias 'vim-jp-radio-stop 'podcaster-stop)
(defalias 'vim-jp-radio-pause 'podcaster-pause)
(defalias 'vim-jp-radio-resume 'podcaster-resume)

(provide 'vim-jp-radio)
;;; vim-jp-radio.el ends here
