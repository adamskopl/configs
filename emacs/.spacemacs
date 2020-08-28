(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     git
     helm
     markdown
     multiple-cursors
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     treemacs
     themes-megapack
     colors
     octave
     rust
     html
     javascript
     )
   )
  )

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  (setq-default
   dotspacemacs-themes '(
                         ;; https://themegallery.robdor.com/
                         ;; light
                         adwaita
                         dichromacy
                         ;; dark
                         alect-dark-alt
                         heroku
                         subatomic
                         )

   dotspacemacs-default-font '(
                               ;; "Source Code Pro"
                               "Fira Code"
                               ;; "Ubuntu Mono"
                               :size 14
                               ;; :size 18
                               ;; :weight bold
                               :weight normal
                               :width normal
                               )

   ))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; SYSTEM
  ;; if some system paths are not working
  ;; LIST:
  ;; - node/bin
  ;; (setenv "PATH" (concat (getenv "PATH") ":PATH1:PATH2"))

  ;; SOME GLOBAL
  (global-visual-line-mode t)

  ;; LOOK
  ;; (spacemacs/toggle-transparency)
  ;; (spacemacs/decrease-transparency)

  ;; WEBDEV
  (defun my/use-eslint-from-node-modules ()
    (let* ((root (locate-dominating-file
                  (or (buffer-file-name) default-directory)
                  "node_modules"))
           (eslint (and root
                        (expand-file-name "node_modules/eslint/bin/eslint.js"
                                          root))))
      (when (and eslint (file-executable-p eslint))
        (setq-local flycheck-javascript-eslint-executable eslint))))
  (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
  (add-hook 'js2-mode-hook' spacemacs/toggle-line-numbers-on)
  (add-hook 'js2-mode-hook' spacemacs/toggle-automatic-symbol-highlight-on)
  (add-to-list 'auto-mode-alist '("\\.styl\\'" . less-css-mode))
  (add-to-list 'auto-mode-alist '("\\.template.js\\'" . html-mode))

  ;; ORG MODE
  (add-hook 'org-mode-hook' spacemacs/toggle-automatic-symbol-highlight-on)
  (add-hook 'org-mode-hook 'org-indent-mode)

  ;; KEYS
  (global-set-key (kbd "<f5>") 'revert-buffer)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-firefox))
 '(evil-want-Y-yank-to-eol nil)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(org-agenda-show-future-repeats (quote next))
 '(org-use-tag-inheritance nil)
 '(standard-indent 2)
 )

(custom-set-faces
 ;; so the themes' backgrounds work
 '(default ((((class color) (min-colors 257)) nil) (((class color) (min-colors 89)) (:background "#1c1c1c" :foreground "#eeeeee"))))
 )
