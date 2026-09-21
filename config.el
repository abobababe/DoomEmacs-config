;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


(setq user-full-name "Rodolfo Rodriguez"
      user-mail-address "rodolfo.rodriguez@microchip.com")

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-henna)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `with-eval-after-load' block, otherwise Doom's defaults may override your
;; settings. E.g.
;;
;;   (with-eval-after-load 'PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look them up).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; title bars must all die
(add-to-list 'default-frame-alist '(undecorated . t))

;; TODO: func to randomly pick and then set fn
(defun +dashboard-draw-ascii-banner-fn ()
  "Return Doom's default ASCII logo banner."
  (propertize
   (string-join
    '("⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⣷⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣤⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⣿⠏⠀⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣯⡈⠙⢿⡳⣆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⢠⡟⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⠀⠀⠻⣎⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠀⣼⠁⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠀⠀⠙⣧⠈⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⣿⠀⠀⠀⢹⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠘⣇⠀⠻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⣿⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣧⠀⠀⠀⢻⡀⠀⠹⣆⠰⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠇⠀⠀⣿⠀⠀⠀⠀⢹⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⢸⡇⠀⠀⢘⣧⡹⣿⡲⣤⣀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⢹⡄⠀⠀⠀⠈⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣴⣿⣶⣿⣿⣿⣿⣯⣩⡉⠉⠛⠛⠛⠛⠿⠛⠶⣤⣄⡀⢰⡇⠀⠀⠀⢸⣇⠀⠀⠀⠀⢹⡄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠉⠉⠀⣼⠃⠀⢀⣠⡿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢉⣿⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠘⣇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣤⣾⡏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠇⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⢻⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡄⠀⠀⠀⠀⢸⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣞⡷⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠉⢻⡄⠀⠀⠀⢸⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣟⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠋⠀⠈⢷⡀⠀⠀⢸⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⡼⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⢃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⣼⠃⠀⠀⠀⠀
⠲⢤⣀⡀⠀⠀⠀⠀⠀⠀⠀⣿⣾⡀⢰⣆⠀⠀⠀⠀⠀⢀⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡟⠁⠀⠀⠀⠀⠀
⠀⠀⠈⠙⠲⣤⡀⠀⠀⠀⠀⣿⣸⣷⣄⣻⣶⣤⣤⡴⠖⢛⣿⠛⠛⢷⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⢹⣾⣿⣿⣿⣯⣿⣿⠃⢠⡞⠃⠀⣀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⣄⣴⣿⣿⡧⠼⠿⣏⠁⢀⡾⣣⣶⣟⣉⣤⣤⠤⠶⠶⠶⠶⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀
⠠⠴⠶⠖⠒⠒⠶⠶⢤⣴⣟⣿⣿⣿⣿⣦⠀⠈⠳⣼⣿⠟⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠈⢻⠛⠉⠁⠀⢀⡀⢸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣦⣼⣤⡀⠀⠀⠀⠈⢹⡟⠶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⠁⠉⢉⡁⠀⠀⠀⠀⠸⡧⠄⠀⠉⠳⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣄⠀⠀⠙⣦⣀⣀⣀⣀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠙⠻⣶⣦⣤⣄⣀⣹⡆⠀⠀⠀⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣷⡦⢤⣤⠤⠿⠿⠛⠃
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢦⡀⠉⠛⠻⣦⡀⠀⠀⠀⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⢤⣴⠾⠛⠓⠶⢴⣦⣤⣝⣷⣦⣤⡄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡂⠀⠈⠻⠀⠀⠀⠀⠀⠀⠈⠻⣆⠀⠀⠀⣠⠞⠁⠀⠀⠀⠀⠀⠈⠙⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⣸⣧⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
    "\n")
   'face '+dashboard-banner))

;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠾⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠂⢀⣤⣶⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⣠⡴⣫⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡿⣡⡾⢋⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣴⣶⣶⣶⣶⡶⠶⠶
;; ⠐⠲⠶⣶⣶⠶⢶⣷⣶⣾⣟⣛⠛⠛⠛⠶⠶⠶⠶⠦⣤⣀⣀⠀⠀⠀⠀⢀⣾⢟⣿⡿⠋⢀⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⡴⠶⠞⠛⣩⡿⠟⠋⠉⣰⡶⠋⠁⠀⠀⠀
;; ⠀⠀⠀⠀⠉⠛⢦⣄⠀⠀⠀⠉⠙⠛⠳⠶⢤⣄⡀⠀⠀⠈⠙⠛⠷⠦⣤⣾⣷⣾⠿⠶⠺⢿⣷⣤⣶⣤⣤⣤⣤⠴⠶⠟⠛⠉⠀⢀⣠⠶⠛⠁⠀⠀⢠⡾⠋⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠈⠙⠷⣦⣀⢀⣚⣿⣿⣿⣿⣿⣿⠀⠀⠀⠚⣿⣿⣿⣿⣿⣿⣟⣷⣦⡀⠀⢀⣴⠟⠁⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡄⠀⠰⣄⠀⠀⠀⠀⠀⠈⣿⢟⣩⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀⠉⠙⠛⢿⣿⣿⣯⡉⠈⢻⣶⠟⠁⠀⠀⣰⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠀⠘⠷⣄⡀⠀⢠⡾⠁⣴⣿⡿⠋⣁⣭⣶⠧⠀⠀⠀⠀⠀⣀⠀⠀⠉⠻⣿⣷⠀⠀⢻⣦⠀⠀⢀⡟⠀⠀⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣄⠀⠀⠀⠉⢛⡿⠀⢸⡿⠏⣠⡾⠛⢻⣦⠀⠀⠀⠀⠀⠀⣽⡟⠷⣦⡀⢨⣿⡆⠀⠀⢻⣄⣠⠟⠁⣀⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣳⣤⣄⣀⣼⠧⠀⣈⠃⣼⠏⠀⠀⠀⢻⡇⠀⠀⠀⠀⣰⠏⠀⠀⠈⢿⣆⠈⠁⠀⢀⣘⣏⣀⣤⣾⣋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⢾⣿⠿⠅⠀⠀⠁⠀⠀⠉⠛⠿⣶⠲⣶⣶⣾⣷⣤⠀⠀⣤⣿⣤⣴⣶⡶⠶⣿⣤⠶⠛⠋⠉⠉⠉⠉⠛⣿⣿⣗⠶⠤⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢙⣶⢿⣥⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠹⣯⡙⠋⢹⡄⠀⠀⠈⣿⠉⠉⠉⣠⡶⠋⠁⠀⠀⣀⣤⣴⠶⠚⠛⠉⠁⠉⢳⣦⡀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⣀⣈⣹⣿⡶⠶⣤⣄⣀⠀⠀⠀⠀⠈⠻⣄⣸⣡⣶⣶⣶⣿⡆⢀⡾⠋⣀⣤⠶⠾⣋⣉⣤⣶⠶⠾⢓⣿⣏⣝⣯⣉⣿⣄⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠤⣼⡷⣤⣶⠿⣹⠏⢀⣠⠿⣤⣤⣈⣉⡛⠻⠶⢤⣄⣀⣹⠫⣧⣦⣤⡤⠤⢹⣿⣶⣻⣭⠶⠟⠛⠋⠁⢀⣠⡴⠞⠛⢧⠀⠹⡀⢹⡏⢻⣆⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⢰⣿⡵⢻⠏⢰⠃⠀⡼⠁⠀⠀⣿⠛⠯⠭⣟⣛⣲⣶⢿⡟⠂⠀⢹⠏⠀⠀⠀⠻⣯⣁⣠⡤⠤⠤⠖⠛⠋⠹⢧⡀⠀⠈⢧⠀⡇⠈⡟⢻⣿⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠘⠋⠀⣿⠀⠘⢦⣴⡃⠀⠀⠐⠙⡆⠀⠀⠀⠀⠀⠀⣼⠀⠀⠀⠘⡆⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢀⣤⠞⠀⣇⣸⠇⠈⠁⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠶⠺⣿⡍⠳⠦⣤⠴⠶⢺⠉⠉⠀⠀⠀⠀⢹⡀⠀⠀⠀⢻⠀⠀⠀⡼⠀⠀⠒⠦⠤⠤⠤⣴⠶⠞⠋⠻⠓⢲⡶⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡀⠀⠀⠀⠀⢸⣀⣴⡄⠀⠀⠀⠀⢷⡀⠰⢍⠉⠙⠂⢠⣇⡴⢶⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⠀⠀⠀⠀⢸⡿⠀⢻⣴⠟⢧⣤⣼⣧⡀⠀⠙⠀⠀⣸⡿⠠⢸⣧⡼⣆⣠⣾⠁⠀⠀⠀⠀⢸⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡆⠀⠀⠀⣺⡇⠀⠙⣿⡄⡘⣿⠀⢹⣿⠓⠒⠒⢚⣿⡇⠀⠘⣿⠟⣿⠟⣿⠀⢰⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⠀⠀⢀⡿⠀⠀⠀⠛⠒⠃⠉⠀⠀⢻⡗⠒⠚⠋⣹⡇⠘⠀⠀⠀⠉⢀⣿⡄⠸⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡆⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠈⠸⣿⣶⡀⠀⠀⢹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⡀⠘⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡟⣷⡀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠘⠿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠶⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⢠⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠦⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⣠⠤⠾⠛⠶⠤⣄⣀⣀⣀⣀⣀⣀⣀⣄⣤⠤⠴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

;; ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⢀⡴⣆⠀⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠀⠀⣼⣿⡗⠀⠀⠀⠀
;; ⠀⠀⠀⣠⠟⠀⠘⠷⠶⠶⠶⠾⠉⢳⡄⠀⠀⠀⠀⠀⣧⣿⠀⠀⠀⠀⠀
;; ⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣤⣤⣤⣤⣤⣿⢿⣄⠀⠀⠀⠀
;; ⠀⠀⡇⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠙⣷⡴⠶⣦
;; ⠀⠀⢱⡀⠀⠉⠉⠀⠀⠀⠀⠛⠃⠀⢠⡟⠂⠀⠀⢀⣀⣠⣤⠿⠞⠛⠋
;; ⣠⠾⠋⠙⣶⣤⣤⣤⣤⣤⣀⣠⣤⣾⣿⠴⠶⠚⠋⠉⠁⠀⠀⠀⠀⠀⠀
;; ⠛⠒⠛⠉⠉⠀⠀⠀⣴⠟⣣⡴⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
;; ⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

(blink-cursor-mode)
;; gud shit
(setq gdb-many-windows 1)
(setq gdb-restore-window-configuration-after-quit t)

;; pa la zona
(require 'zone)
(zone-when-idle 90)
(add-hook 'pdf-view-mode (lambda() (zone-leave-me-alone)))

(defun zone-choose (pgm)
    "Choose a PGM to run for `zone'."
    (interactive
     (list
      (completing-read
       "Program: "
       (mapcar 'symbol-name zone-programs))))
    (let ((zone-programs (list (intern pgm))))
      (zone)))

;; sloppy toppy
(setq-default proced-auto-update-flag t)
(setq proced-auto-update-interval 1)
(setq proced-enable-color-flag t)

;; from Clang
(add-to-list 'auto-mode-alist '("\\.def\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.td\\'" . tablegen-mode))
(add-to-list 'auto-mode-alist '("\\.ll\\'" . llvm-mir-mode))
;; bummaxxing
(add-to-list 'auto-mode-alist '("\\JenkinsFile\\'" . jenkinsfile-mode))
(add-to-list 'auto-mode-alist '("\\Jenkinsfile\\'" . jenkinsfile-mode))
(add-to-list 'auto-mode-alist '("\\jenkinsfile\\'" . jenkinsfile-mode))

;; Stop opening another buffer for stderr
(setq async-shell-command-display-buffer nil)

;; scrollback max set via customize
(setq vterm-timer-delay 0.01)

;; Replaces google
(use-package! mchp-chat
 :config (setopt mchp-chat-api-key "xSQxnd153NtgdS7mwrY8Or6cqU2n9ufW0pDDYaUlSEI="))
(map! :prefix "C-x"
      "c" #'mchp-chat)

;; Override. Open-private rather than find-in-private
(map! :leader
      "f p" #'doom/open-private-config)

;; Deault to updating magit diff buffer when moving across commit logs
;; (add-hook 'magit-section-movement-hook 'magit-show-commit)

;; Map arrow keys to C-j, C-k for convenience
;; magit-section-movement-hook corresponds to movement keys C-j, C-k for Evil
;; So assuming we have magit-show-commit as added hook, then all that's left is to map
;; arrow keys to magit's movement keys
(with-eval-after-load 'magit
  (define-key magit-mode-map [up] #'magit-section-backward)
  (define-key magit-mode-map [down]   #'magit-section-forward))

;; Always open commit in another window
(setq magit-display-buffer-function #'magit-display-buffer-traditional)

(after! dired
  (remove-hook 'dired-mode-hook #'dired-omit-mode))

(setq pdf-annot-list-follow-minor-mode t)


;; TODO
(defun dark-souls-quotes-gen ()
  (interactive)
  "My dear Shandra… was one such fragment…
A feeble, tiny thing that thirsted for power more than any other")


;; TODO: make database or dynamically check pdf annotations.
;; Make quotes from those
;; Make quote randomizer
;; Vibed, TODO
(defun my-org-timer-notification ()
  (interactive)
  ;; Example: Use system notifications if available
  (when (fboundp 'notifications-notify)
    (notifications-notify :title "You Died" :body (dark-souls-quotes-gen))))

(add-hook 'org-timer-done-hook #'my-org-timer-notification)



;; TODO: history 1 to dump zshhistory unmetafied, include to: compile-history
