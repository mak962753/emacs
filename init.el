(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http://" "https://")
		    "stable.melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa-stable" url) t))

(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))
;; Define he following variables to remove the compile-log warnings
;; when defining ido-ubiquitous
(defvar ido-cur-item nil)
(defvar ido-default-item nil)
(defvar ido-cur-list nil)
(defvar predicate nil)
(defvar inherit-input-method nil) 

(defvar my-packages 
  '(;; parens editing 
    paredit
    
    ;; key bindings and colors 
    clojure-mode
    
    ;; extra syntax highlighting
    clojure-mode-extra-font-locking

    ;; clojure repl ?
    cider

    ;; allow ido usage in as many contexts as possible. see
    ;; customizations/navigation.el line 23 for a description of ido 
    ido-ubiquitous

    ;; enhances M-x for easiser exec-n of commands 
    smex
    
    projectile 

    ;; colorful parenthesis matching
    rainbow-delimiters 

    ;; edit html tags like sexps
    tagedit

    ;; git integration
    magit
))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p))) 

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations") 
;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
(load "shell-integration.el") 
(load "navigation.el")
(load "ui.el")
(load "editing.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (cider-eval-sexp-fu tide tagedit smex rainbow-delimiters projectile paredit nlinum magit ido-ubiquitous clojure-mode-extra-font-locking cider))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
