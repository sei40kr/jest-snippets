;;; jest-snippets.el --- Jest snippets for yasnippet

(require 'yasnippet)

(defconst jest-snippets-dir
  (expand-file-name
   "snippets"
   (file-name-directory
    (cond
     (load-in-progress load-file-name)
     ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
      byte-compile-current-file)
     (:else (buffer-file-name))))))

(defun jest-snippets-initialize ()
  (add-to-list 'yas-snippet-dirs 'jest-snippets-dir t)
  (yas-load-directory jest-snippets-dir t))

(eval-after-load 'yasnippet
  '(jest-snippets-initialize))

(provide 'jest-snippets)

;;; jest-snippets ends here
