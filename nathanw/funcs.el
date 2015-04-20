(defun run-yapf (filename)
  (let ((yapf (format "python -m yapf -i %s" filename)))
    (compilation-start yapf)))

(defun yapf-format-single()
  (interactive)
  (run-yapf buffer-file-name))

(evil-leader/set-key-for-mode 'python-mode
  "mfs" 'yapf-format-single)
