;; THEME INIT

(defun self/-dark-modep ()
  "Check if emacs is started in dark context"
  (equal "dark"
         (getenv "ITERM_PROFILE")))

(defun self/-light-theme-custom ()
  "Custom theme for a light background"
  (custom-set-faces
   ;; Org mode faces
   '(org-level-1 ((t (:background "#ffffff"))))
   '(org-level-2 ((t (:background "#ffffff"))))
   '(org-level-3 ((t (:background "#ffffff"))))
   '(org-level-4 ((t (:background "#ffffff"))))
   '(org-level-5 ((t (:background "#ffffff"))))
   '(org-level-6 ((t (:background "#ffffff"))))
   '(org-level-7 ((t (:background "#ffffff"))))
   '(org-level-8 ((t (:background "#ffffff"))))

   ;; (face-remap-add-relative
   ;;  'mode-line '((:foreground "ivory" :background "Green4") mode-line))

   ;; rainbow delimiter mode
   '(rainbow-delimiters-depth-1-face ((t (:foreground "blue"))))
   '(rainbow-delimiters-depth-2-face ((t (:foreground "red"))))
   '(rainbow-delimiters-depth-3-face ((t (:foreground "orange"))))
   '(rainbow-delimiters-depth-4-face ((t (:foreground "black"))))
   '(rainbow-delimiters-depth-5-face ((t (:foreground "blue"))))
   '(rainbow-delimiters-depth-6-face ((t (:foreground "red"))))
   '(rainbow-delimiters-depth-7-face ((t (:foreground "orange"))))
   '(rainbow-delimiters-depth-8-face ((t (:foreground "black"))))

   '(rainbow-delimiters-unmatched-face ((t (:background "cyan"))))))

(defun self/load-window-theme ()
  "Customizing theme for window"
  (load-theme 'leuven t)
  (self/-light-theme-custom))

;; (defun self/load-terminal-theme ()
;;   "Customizing theme for terminal"
;;   (load-theme 'tango-plus t)
;;   ;; (load-theme 'twilight-bright t)
;;   ;; (self/-light-theme-custom)
;; )

(defun self/load-heroku-theme ()
  "Customizing heroku theme"
  (load-theme 'heroku t)

  ;; Powerline heroku theme
  (require 'powerline)
  (setq powerline-default-separator 'bar)
  (powerline-default-theme)

  ;; heroku-theme python
  (set-face-background 'highlight-indentation-face "#3B4242")
  (set-face-background 'highlight-indentation-current-column-face "#3B4242")

  (custom-set-faces
   ;; org mode faces
   '(org-level-1 ((t (:foreground "#dfaf8f"))))
   '(org-level-2 ((t (:foreground "#94bff3"))))
   '(org-level-3 ((t (:foreground "#e0cf9f"))))
   '(org-level-4 ((t (:foreground "#93e0e3"))))
   '(org-level-5 ((t (:foreground "#8fb28f"))))
   '(org-level-6 ((t (:foreground "#aeaeae"))))
   '(org-level-7 ((t (:foreground "#8c5353"))))
   '(org-level-8 ((t (:foreground "#4c7073"))))

   ;; org-table
   '(org-table ((t (:foreground "#7fa9ee"))))

   ;; helm
   '(helm-buffer-process ((t (:foreground "#dfaf8f"))))

   ;; irfc mode
   '(irfc-head-name-face ((t (:foreground "#ee3344"))))
   '(irfc-head-number-face ((t (:foreground "#dfaf8f"))))
   '(irfc-table-item-face ((t (:foreground "#94bff3"))))
   '(irfc-reference-face ((t (:foreground "#94bff3"))))

   ;; rainbow delimiter mode
   '(rainbow-delimiters-unmatched-face ((t (:foreground "#ee3344"))))
   '(rainbow-delimiters-depth-1-face ((t (:foreground "#dfaf8f"))))
   '(rainbow-delimiters-depth-2-face ((t (:foreground "#94bff3"))))
   '(rainbow-delimiters-depth-3-face ((t (:foreground "#e0cf9f"))))
   '(rainbow-delimiters-depth-4-face ((t (:foreground "#93e0e3"))))
   '(rainbow-delimiters-depth-5-face ((t (:foreground "#8fb28f"))))
   '(rainbow-delimiters-depth-6-face ((t (:foreground "#dfaf8f"))))
   '(rainbow-delimiters-depth-7-face ((t (:foreground "#94bff3"))))
   '(rainbow-delimiters-depth-8-face ((t (:foreground "#e0cf9f"))))

   ;; smartparens-mode
   '(sp-show-pair-mismatch-face ((t (:foreground "#ee3344"))))
   '(sp-show-pair-match-face ((t (:background "#6F6F6F"))))

   ;; scheme / quack
   '(quack-pltish-comment-face ((t (:foreground "#aeaeae"))))
   '(quack-pltish-defn-face ((t (:foreground "#dfaf8f"))))))

;; default to

;; (load-theme 'zenburn t)
;; (load-theme 'github-modern t)
;; (load-theme 'wheatgrass t)
;; (load-theme 'monokai t)
;; (load-theme 'tango-dark t)
;; (load-theme 'heroku t)
;; (load-theme 'leuven t)

;; solarized-light theme
;; (add-to-list 'custom-theme-load-path
;;              "~/repo/open-source/emacs-color-theme-solarized")
;; (set-frame-parameter nil 'background-mode 'light)
;; (load-theme 'solarized t)

;; (when (not window-system)
;;  (load-theme 'tango-dark t))


;; Load theme after fonts, to override conflicting customisations in favour of theme

;; Use the same theme everywhere
(self/load-window-theme)

;; (if (window-system)
;;     (self/load-window-theme)
;;   (self/load-terminal-theme))

;; (self/load-twilight-theme)

;; (self/load-heroku-theme)
;; (load-theme 'zenburn t)

;; (when (window-system)
;;   (set-face-attribute 'default nil :font "Fira Code:pixelsize=16:spacing=110"))

;; (if (window-system)
;;     (set-face-attribute 'default nil :font "Consolas:pixelsize=16:spacing=110:weight=normal")
;;   (set-face-attribute 'default nil :font "Hasklig:pixelsize=13:spacing=110:weight=medium"))

;; (require 'color-identifiers-mode)
;; (let ((faces '(font-lock-comment-face
;;                font-lock-comment-delimiter-face
;;                font-lock-constant-face
;;                font-lock-type-face
;;                font-lock-function-name-face
;;                font-lock-variable-name-face
;;                font-lock-keyword-face
;;                font-lock-string-face
;;                font-lock-builtin-face
;;                font-lock-preprocessor-face
;;                font-lock-warning-face
;;                font-lock-doc-face)))
;;   (dolist (face faces)
;;     (set-face-attribute face nil :foreground nil :weight 'normal :slant 'normal)))

;; (set-face-attribute 'font-lock-comment-delimiter-face nil :slant 'italic)
;; (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
;; (set-face-attribute 'font-lock-doc-face nil :slant 'italic)
;; (set-face-attribute 'font-lock-keyword-face nil :weight 'bold)
;; (set-face-attribute 'font-lock-builtin-face nil :weight 'bold)
;; (set-face-attribute 'font-lock-preprocessor-face nil :weight 'bold)
