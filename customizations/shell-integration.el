;; Sets up exec-path-from shell
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH"))) 


;; 
(setenv "PATH" (concat (getenv "PATH") 
		       ";%USERPROFILE%\\bin"
                       ";$USERPROFILE/bin"
                       ";C:\\Program Files\\Git"
		       ";C:\\Program Files (x86)\\Java\\jre1.8.0_151\\bin"))

(setq explicit-shell-file-name "C:\\Program Files\\Git\\bin\\bash.exe")
(setq explicit-bash.exe-args '("--login" "-i"))

(add-to-list 'exec-path "C:\\Program Files\\Git\\cmd\\")
