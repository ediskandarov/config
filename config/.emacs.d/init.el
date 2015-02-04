(server-start)


(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/")

(setq inhibit-splash-screen t) ;; no splash screen
(column-number-mode t)
(menu-bar-mode -1) ;;no menubar
(scroll-bar-mode -1) ;; no scroll bar
(tool-bar-mode -1)
(setq save-interprogram-paste-before-kill t)
(setq scroll-step 1)
(setq size-indication-mode t)
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary nil)
(setq default-input-method "russian-computer")
(setq frame-background-mode (quote dark))
(setq indent-tabs-mode nil)
(setq kill-do-not-save-duplicates t)
(setq kill-ring-max 10000)
(setq kill-whole-line t)
(setq make-backup-files nil)
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))


(setq grep-highlight-matches t)

 (setq tab-width 4
       whitespace-style '(face tabs spaces trailing lines space-before-tab
                          newline indentation  empty space-after-tab)
       whitespace-line-column 80)


(setq c-basic-offset 4)
(show-paren-mode 1)
 (setq show-paren-delay 0)
(setq global-whitespace-mode t)
; space-mark tab-mark newline-mark


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-safe-themes (quote ("49e5a7955b853f70d1fe751b2f896921398b273aa62f47bda961a45f80219581" "256ab343f4935915bf640ead48582bd9ca86c1afe9b17ab84a327b02a60b2698" default)))
 '(safe-local-variable-values (quote ((require-final-newline) (test-case-name . twisted\.trial\.test) (test-case-name . twisted\.test\.test_internet\,twisted\.internet\.test\.test_posixbase) (test-case-name . twisted\.test\.test_ssl) (test-case-name . twisted\.test\.test_stdio) (test-case-name . twisted\.test\.test_fdesc) (encoding . utf-8) (test-case-name . twisted) (test-case-name . twisted\.test\.test_failure) (test-case-name . twisted\.test\.test_defer\,twisted\.test\.test_defgen\,twisted\.internet\.test\.test_inlinecb) (test-case-name . twisted\.test\.test_process) (test-case-name . twisted\.test\.test_iutils) (test-case-name . twisted\.words\.test\.test_jabbercomponent) (test-case-name . twisted\.words\.test\.test_jabberclient) (test-case-name . twisted\.test\.test_abstract) (test-case-name . twisted\.internet\.test\.test_pollingfile) (test-case-name . twisted\.test\.test_task\,twisted\.test\.test_cooperator) (test-case-name . twisted\.internet\.test\.test_inotify) (test-case-name . twisted\.test\.test_internet) (test-case-name . twisted\.web\.test\.test_xmlrpc)))))



;(setq show-trailing-whitespace t)
(fset 'yes-or-no-p 'y-or-n-p)


(load-theme 'tangotango t)  

(require 'flx-ido)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(ido-mode t)
(ido-everywhere t)
(flx-ido-mode t)
(setq ido-use-faces nil)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

;(require 'org-install)
(autoload 'org-install "org-install" "" t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(require 'flyspell)
(require 'ispell)

(setq ispell-program-name "aspell")

(require 'projectile)
(projectile-global-mode)

(add-to-list 'interpreter-mode-alist '("python3" . python-mode))
(setq python-shell-interpreter "ipython3")
;(elpy-use-ipython)
(setq elpy-rpc-python-command "python3")
(setq elpy-rpc-backend "jedi")
(elpy-enable)
(define-key python-mode-map (kbd "C-;")  'iedit-mode)
(define-key global-map (kbd "C-x C-b") 'ibuffer)


;whitespace-mode
(defun myyy-python-hook ()
  (require 'whitespace)
  (whitespace-mode t))

(add-hook 'python-mode-hook 'myyy-python-hook)

;(require 'virtualenvwrapper)
;(venv-initialize-interactive-shells) ;; if you want interactive shell support
;(venv-initialize-eshell) ;; if you want eshell support
;(setq venv-location "~/projects/envs/")
(setenv "WORKON_HOME" "~/projects/envs")

;web-mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jinja2\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
      '(("jinja2"    . "\\.jinja2\\'"))
)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;rst-mode
;'(rst-level-face-base-color "grey60")

(defun myyy-rst-hook ()
  (setq tab-width 4
        indent-tabs-mode nil)
  (require 'whitespace)
  (whitespace-mode t))

(add-hook 'rst-mode-hook 'myyy-rst-hook)

;coffee-mode
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

'(coffee-tab-width 4)

(defun myyy-coffee-hook ()
  (setq tab-width 4
        indent-tabs-mode nil)
  (require 'whitespace)
  (whitespace-mode t))

(add-hook 'coffee-mode-hook 'myyy-coffee-hook)

;actionscript-mode
(add-to-list 'auto-mode-alist '("\\.as$" . actionscript-mode))

(defun myyy-actionscript-hook ()
  (setq tab-width 4
        indent-tabs-mode nil)
  (require 'whitespace)
  (whitespace-mode t))

(add-hook 'actionscript-mode-hook 'myyy-actionscript-hook)

;cython-mode
(add-to-list 'auto-mode-alist '("\\.pyx$" . cython-mode))

(defun myyy-cython-hook ()
  (setq tab-width 4
        indent-tabs-mode nil)
  (require 'whitespace)
  (whitespace-mode t))

(add-hook 'cython-mode-hook 'myyy-cython-hook)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; backup settings
(setq
    backup-by-copying t      ; don't clobber symlinks
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t
    make-backup-files t
    )

(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2e3434" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(highlight-indentation-face ((t (:inherit fringe :background "#2e3434"))))
 '(whitespace-hspace ((t (:background "grey24" :foreground "darkgray"))))
 '(whitespace-space ((t (:background "#2e3434" :foreground "darkgray")))))

