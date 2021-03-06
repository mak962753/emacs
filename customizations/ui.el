;; These customizations change the way emacs looks and disable/enable
;; some user interface elements. Some useful customizations are
;; commented out, and begin with the line "CUSTOMIZE". These are more
;; a matter of preference and may require some fiddling to match your
;; preferences 


;; remove menu bar 
(menu-bar-mode -1)

;; remove tool bar
(tool-bar-mode -1)

;; no scroll bars
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(set-face-attribute 'default nil :height 100)

;; These settings relate to how emacs interacts with your operating system
(setq ;; makes killing/yanking interact with the clipboard
      x-select-enable-clipboard t

      ;; I'm actually not sure what this does but it's recommended?
      x-select-enable-primary t

      ;; Save clipboard strings into kill ring before replacing them.
      ;; When one selects something in another program to paste it into Emacs,
      ;; but kills something in Emacs before actually pasting it,
      ;; this selection is gone unless this variable is non-nil
      save-interprogram-paste-before-kill t

      ;; Shows all options when running apropos. For more info,
      ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Apropos.html
      apropos-do-all t

      ;; Mouse yank commands yank at point instead of at click.
      mouse-yank-at-point t) 

;; Uncomment the lines below by removing semicolons and play with the
;; values in order to set the width (in characters wide) and height
;; (in lines high) Emacs will have whenever you start it
(setq initial-frame-alist '((top . 0) (left . 0) (width . 177) (height . 53)))


;; hbar sets cursor to _, also may be bar,vbar
;; (set-default 'cursor-type 'bar)
;; (set-cursor-color "#ff4023")
;; stop blinking
(blink-cursor-mode 0)

;; add line numbers
(global-nlinum-mode)

;; full path in title bar
(setq-default frame-title-format "%b (%f)") 

;; no bell
(setq ring-bell-function 'ignore) 

(load-theme 'deeper-blue)
