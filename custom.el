;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(+dashboard-menu-sections nil)
 '(async-shell-command-buffer 'rename-buffer)
 '(async-shell-command-display-buffer nil)
 '(diff-hl-update-async 'thread)
 '(dirvish-epub-thumbnailer-program "gnome-epub-thumbnailer")
 '(ignored-local-variable-values
   '((lisp-indent-local-overrides (cond . 0) (interactive . 0))
     (checkdoc-allow-quoting-nil-and-t . t)
     (eval add-hook 'before-save-hook 'time-stamp)))
 '(magit-blame-goto-chunk-hook
   '(magit-blame-maybe-update-revision-buffer magit-blame-maybe-show-message))
 '(native-comp-async-report-warnings-errors nil)
 '(vterm-eval-cmds
   '(("find-file" find-file) ("message" message)
     ("vterm-clear-scrollback" vterm-clear-scrollback)
     ("vterm_printf" vterm_printf)
     ("face-remap-add-relative" face-remap-add-relative)))
 '(vterm-max-scrollback 100000))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
