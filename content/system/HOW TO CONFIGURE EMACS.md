+++
title = "HOW TO CONFIGURE EMACS"
date = "2025-08-10"
author = ""
+++


# BASIC OF EMACS

[Emacs](https://www.gnu.org/software/emacs/download.html) holo akta [gnu](https://www.gnu.org/software/) software. Emacs mainly akta text editor. Kintu emacs sompurno ta e [emacs lisp](https://en.wikipedia.org/wiki/Emacs_Lisp) diye lekha to, emacs lisp diye sompurno emacs ta k e configure kora jai. Emacs ta k configure korar jonno emacs er basic concept gula bujhle e enough first a. Jdi r o besi valo kore bojha lage tkhn emacs lisp ta k valo vabe bojha lagbe o emacs lisp diye code kora sikhte hobe. 


# BASIC CONCEPT OF EMACS

Emacs er [Frames](https://www.gnu.org/software/emacs/manual/html_node/emacs/Frames.html), [Buffers](https://www.gnu.org/software/emacs/manual/html_node/emacs/Buffers.html) , [Window](https://www.gnu.org/software/emacs/manual/html_node/emacs/Windows.html)  basic package install, repo adding r basic package customization ta sikhle e emacs use kora jabe abong coto kno issue hoile nije e fix kora somvob.


## Frames

Windows 10 ba 11 othoba linux er gnome othoba onno sob Desktop Environment a amra j vabe akta software open kori tkhn oi application ta akta window hisabe open hoi amra ay vabe akta software er 2-3 ta ba tar thekeo besi open korte pari. Emacs er bepar ta o same kintu emacs er akta akta window k Frame bole. Mane jdi emacs idvidualy 2 ba 3 bar open kora hoi to oi 2-3 ta window k emacs er ak akta frame bola hoi&#x2026;.To emacs er ak akta Instance k Frame bola hoi.


## Window

Emacs er window concept ta aktu alada. Amra akta emacs Frame k split korte pari. Jmn amra jdi C-x 2 use kori tahole Emacs er frame ta 2 ta alada windows a split hobe. C-x 2 Frame a nice akta alada window open korbe abong C-x 3 Frame er right side a akta window open korbe abong ay vabe issa moto joto khusi toto gula window te frame ta k split kora jabe.


## BUFFERS

Emacs er sob kicu e buffer. Amra ja e open kori oita e akta buffer. kno folder, file, image sob kicu e as a buffer open hoi `M-x RET ibuffer RET` dile ibuffer open hobe abong emacs a open thaka sob buffer dekha jabe. Emacs er kicu defult buffer ace, jkhn emacs open kora hoi tkhni oi buffer gula create hoi. Aygula hocce **scratch** abong **Message**. Message buffer a emacs a ja ja kora hocce tar sob kicu e Message buffer a paoya jai. R akta buffer create hoi jdi kno error ase oita hocce **Warnings** Buffer. Warnings buffer mainly error gula show kore ba kno package problems, config problem gula show kore.


# PREREQUIREMENTS

Emacs ta sekhar age vim ta k valo vabe sekha dorkar, karon amra emacs a evil mode use korbo, j ta emacs a vim keybinding use korbe. Vim er basic ta sekhar jonno vim basic er ay video ta dekhle normal editing easyly korte jabe:-

<iframe width="350" height="200"
  src="https://www.youtube.com/embed/z4eA2eC28qg"
  title="YouTube video player"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  allowfullscreen>
  </iframe>


# EMACS CONFIGURETION

Emacs mainly package er upor kaj kore, jemon arch ba debian er package repo er theke package download kora jai thik temon emacs er repo er theke j j package dorkar oi gula download kore emacs customize korte hoi. Ami amr config a total 4 ta repo use kori [elpaca](https://github.com/progfolio/elpaca), [melpa](https://melpa.org), [elpa](https://elpa.gnu.org/) abong [org](https://orgmode.org/). Ami sob package gulo ay repo theke e download kori. To emacs er main config file gula edit korar maddhome puro emacs ta k e customize kora jai. Emacs customize korar jonno mainly 2 ta file customize kora lage. init.el abong early-init.el.


## EMACS CONFIG FILES

Emacs er sob theke valo akta feature hocce `org mode`. Org mode er onk feature ace. Abong emacs use korle org mode file theke onno mode jemon markdown ba html a convert korao onk easy hoi. To nijer config file lekahr jonno org file use kora best.


## Directory Structure

First a amader .config/emacs/ directory ta banaite hobe abong amader system a kno .emacs.d directory thakle oita k delete kore dite hobe. R directory er vitore 3 ta file create korte hobe init.el, early-init.el abong config.org.

    rm -rf ~/.emacs.d
    mkdir -p ~/.config/emacs
    touch -p ~/.config/emacs/init.el
    touch -p ~/.config/emacs/early-init.el
    touch -p ~/.config/emacs/config.org


## INIT.EL

First a amader .config/emacs/init.el file ta edit korte hobe:-

    vim .config/emacs/init.el

Abong er pore file ta te ay line gulo add korte hobe. Ay line gulo init.el file k bole j amra amader config file hisabe config.org file ta use korbo

    (org-babel-load-file
     (expand-file-name
      "config.org"
      user-emacs-directory))


## EARLY-INIT.EL

Amra jkhn amader repo hisabe [elpaca](https://github.com/progfolio/elpaca) use kori tkhn amader r o extra akta file add kora lage amader emacs folder a early-init.el ja elpaca er repo teo lekha ace.

    vim ~/.config/emacs/early-init.el

File ta te ay line ta add kore dite hobe:-

    (setq package-enable-at-startup nil)
    ;; (add-to-list 'default-frame-alist '(font . "JetBrains Mono-11"))


## CONFIG.ORG

Aybar amra amader Emacs ta k configure kora suru korbo. Configuretion er jonno sobar e alada alada approch ace. Ami first a repo gulo setup kori. Elpaca er repo theke elpaca er code ta ane just ay jagai paste kore dile e elpaca setup hoye jabe. 


### ELPACA

    (defvar elpaca-installer-version 0.11)
    (defvar elpaca-directory (expand-file-name "elpaca/" user-emacs-directory))
    (defvar elpaca-builds-directory (expand-file-name "builds/" elpaca-directory))
    (defvar elpaca-repos-directory (expand-file-name "repos/" elpaca-directory))
    (defvar elpaca-order '(elpaca :repo "https://github.com/progfolio/elpaca.git"
                                  :ref nil :depth 1 :inherit ignore
                                  :files (:defaults "elpaca-test.el" (:exclude "extensions"))
                                  :build (:not elpaca--activate-package)))
    (let* ((repo  (expand-file-name "elpaca/" elpaca-repos-directory))
           (build (expand-file-name "elpaca/" elpaca-builds-directory))
           (order (cdr elpaca-order))
           (default-directory repo))
      (add-to-list 'load-path (if (file-exists-p build) build repo))
      (unless (file-exists-p repo)
        (make-directory repo t)
        (when (<= emacs-major-version 28) (require 'subr-x))
        (condition-case-unless-debug err
            (if-let* ((buffer (pop-to-buffer-same-window "*elpaca-bootstrap*"))
                      ((zerop (apply #'call-process `("git" nil ,buffer t "clone"
                                                      ,@(when-let* ((depth (plist-get order :depth)))
                                                          (list (format "--depth=%d" depth) "--no-single-branch"))
                                                      ,(plist-get order :repo) ,repo))))
                      ((zerop (call-process "git" nil buffer t "checkout"
                                            (or (plist-get order :ref) "--"))))
                      (emacs (concat invocation-directory invocation-name))
                      ((zerop (call-process emacs nil buffer nil "-Q" "-L" "." "--batch"
                                            "--eval" "(byte-recompile-directory \".\" 0 'force)")))
                      ((require 'elpaca))
                      ((elpaca-generate-autoloads "elpaca" repo)))
                (progn (message "%s" (buffer-string)) (kill-buffer buffer))
              (error "%s" (with-current-buffer buffer (buffer-string))))
          ((error) (warn "%s" err) (delete-directory repo 'recursive))))
      (unless (require 'elpaca-autoloads nil t)
        (require 'elpaca)
        (elpaca-generate-autoloads "elpaca" repo)
        (let ((load-source-file-function nil)) (load "./elpaca-autoloads"))))
    (add-hook 'after-init-hook #'elpaca-process-queues)
    (elpaca `(,@elpaca-order))


### SETTING UP &ldquo;use-package&rdquo; support

Package install korar jonno nijer code tuku add korte hobe. Ayta elcapa er main code er ses a add kore dite hobe.

    ;; Install use-package support
    (elpaca elpaca-use-package
      ;; Enable use-package :ensure support for Elpaca.
      (elpaca-use-package-mode))


### SOME REPO

R o 3 ta repo add korte hobe, ay gula kicu package er jonno proyojon ja amra elpaca te pabo na.

    (require 'package)
    (setq package-archives
          '(("gnu" . "https://elpa.gnu.org/packages/")
            ("melpa" . "https://melpa.org/packages/")
            ("org" . "https://orgmode.org/elpa/")))
    (package-initialize)


### DOOM MODELIME AND DOOM THEME

Emacs er defult theme r modeline ta change korar jonno amra doom modeline abong theme install korbo. Jate kore amra thik vabe emacs a kaj korte pari. Mainly cokher santi er jonno😌. 

    (use-package doom-modeline
      :ensure t
      :config
      (doom-modeline-mode 1))
    
    ;;======= DOOM THEMES ======= 
    ;; :>>>>> FIRST INSTALL ER SMY AY LINE GULO UNCOMMENT RAKHA LAGBE SECOND BOOT ER SMY ABR COMMENT KORE DITE HOBE <<<<<:
    ;; (elpaca
    ;;   (doom-themes :host github :repo "doomemacs/themes"
    ;;                :files (:defaults)))
    
    (use-package doom-themes
      :ensure t
      :config
    (setq doom-themes-enable-bold t
          doom-themes-enable-italic t)
    (load-theme 'doom-one t))


### FONTS

Emacs er fonts change korar jonno font add korte hobe.

If you are having trouble of loading the fonts please add those line in your early-init.el file

    (add-to-list 'default-frame-alist '(font . "JetBrains Mono-11"))

    (set-face-attribute 'default nil :font "JetBrains Mono" :height 160 :weight 'medium)
    ;; (set-face-attribute 'variable-pitch nil :font "Ubuntu" :height 120 :weight 'medium)
    ;; (set-face-attribute 'fixed-pitch nil :font "JetBrains Mono" :height 120 :weight 'medium)
    ;; (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
    ;; (set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
    ;; (setq-default line-spacing 0.12)


### ORG MODE

Org mode er configuretion er jonno amader ay package abong variable o hook gula edit korte hobe.

-   ORG MAIN

        (use-package toc-org
          :ensure t
          :commands toc-org-enable
          :init (add-hook 'org-mode-hook 'toc-org-enable))
        (add-hook 'org-mode-hook 'org-indent-mode)
        
        (use-package org-bullets
          :ensure t)
        (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
        
        (require 'org-tempo)

-   ORG MODE GRAphical TWeaks

        (setq org-edit-src-content-indentation 0) ;; set src block automatic indent to 0 instead of 2.
        (delete-selection-mode 1)    ;; you can select text and delete it by typing.
        (electric-indent-mode -1)    ;; turn off the weird indenting that emacs does by default.


### GRAPHICAL USER INTERFACE TWEAKS

-   DEFAULT BIP SOUND DISABLE

    Emacs a defult vabe akta beep sound kore jdi kno line er first a jeye backspace click kora hoi ba kno vhul command dea hoi j ta sunte onk besi osojjo lage ay jonno defult beep sound ta off kora dorkar.
    
        (use-package emacs
          :ensure nil
          :config
          (setq ring-bell-function #'ignore))

-   Disable Menubar, Toolbars and Scrollbars

    Minimul look er jonno menu-bar, scroll-bar abong tool-bar off kore dea.
    
        (menu-bar-mode -1)           ;; Disable the menu bar 
        (scroll-bar-mode -1)         ;; disable the scroll bar
        (tool-bar-mode -1)           ;; Disable the tool bar

-   Display Line Numbers and Truncated Lines

        (global-auto-revert-mode t)  ;; Automatically show changes if the file has changed
        (global-visual-line-mode t)  ;; Enable truncated lines

-   DISPLAY LINE NUMBER MODE

    Line number gula show korar jonno ay mode gula on korte hobe
    
        (global-display-line-numbers-mode 1) ;; Display line numbers

-   FOR PAIR MODE: LIKE(){}

    Coding korar smy pair mode mane single parenthesis ba bracket dile onno akta autmetically add hoye jai&#x2026;ay support er jonno pair mode use kora hoi. Abr org mode er shortcut gula <s ba <e ayvabe kaj kore to &ldquo;<&rdquo; aytar jonno pair mode ta off rakhte hobe na hoile org file edit korte jhamela hobe ay jonno e pair mode er config ta amon vabe kora. 
    
        (electric-pair-mode 1)       ;; Turns on automatic parens pairing
        ;; The following prevents <> from auto-pairing when electric-pair-mode is on.
        ;; Otherwise, org-tempo is broken when you try to <s TAB...
        (add-hook 'org-mode-hook (lambda ()
                                   (setq-local electric-pair-inhibit-predicate
                               `(lambda (c)
                              (if (char-equal c ?<) t (,electric-pair-inhibit-predicate c))))))

-   ZOOMING IN AND OUT

        ;;========= ZOOMING IN AND OUT ==========
        (global-set-key (kbd "C-=") 'text-scale-increase)
        (global-set-key (kbd "C--") 'text-scale-decrease)
        (global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
        (global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
        ;;=========TRANSPARENT STARTUP==========
        (setq inhibit-startup-message t)
        (setq initial-scratch-message nil)


### MINIBUFFER ESCAPE

jkhn minibuffer a focus jai tkhn minibuffer theke focus sorarnor jonno jhamela hoi onk bar esc press kora lage to ay problem ta solve korar jonno, one click a minibuffer theke escape korar jonno.

    (global-set-key [escape] 'keyboard-escape-quit);;MInibuffer escape


### EVIL MODE

Vim like keybinding er jonno Evil Mode.

    (use-package evil
      :ensure t
      :init
      (setq evil-want-integration t)
      (setq evil-want-keybinding nil)
      (setq evil-vsplit-window-right t)
      (setq evil-split-window-below t)
      (evil-mode 1))
    
    (use-package evil-collection
      :ensure t
      :after evil
      :config
      (evil-collection-init))
    
    (use-package evil-tutor
      :ensure t)
    
    ;; Using RETURN to follow links in Org/Evil 
    ;; Unmap keys in 'evil-maps if not done, (setq org-return-follows-link t) will not work
    (with-eval-after-load 'evil-maps
      (define-key evil-motion-state-map (kbd "SPC") nil)
      (define-key evil-motion-state-map (kbd "RET") nil)
      (define-key evil-motion-state-map (kbd "TAB") nil))
    ;; Setting RETURN key in org-mode to follow links
    (setq org-return-follows-link  t)


### VTERM

Emacs er jonno best terminal emulator vterm setup korar jonno.

    (use-package vterm
      :ensure t)
    (add-hook 'vterm-mode-hook (lambda () (display-line-numbers-mode -1)))


### COUNSEL AND IVY

Ivy → Emacs-এর ডিফল্ট completion সিস্টেমকে replace করে, যাতে command, file, buffer ইত্যাদি search ও select করা অনেক fast আর smart হয়।

Counsel → Ivy-এর extension, যা default Emacs command (যেমন M-x, find-file) গুলোকে extra feature দিয়ে আরও powerful করে।

Short summary: Ivy completion system সামলায়, Counsel command গুলো upgrade করে — একসাথে Emacs-কে অনেক বেশি smooth আর feature-rich বানায়।

    (use-package counsel
      :ensure t
      :after ivy
      :config (counsel-mode))
    
    (use-package ivy
      :ensure t
      :bind
      ;; ivy-resume resumes the last Ivy-based completion.
      (("C-c C-r" . ivy-resume)
       ("C-x B" . ivy-switch-buffer-other-window))
      :custom
      (setq ivy-use-virtual-buffers t)
      (setq ivy-count-format "(%d/%d) ")
      (setq enable-recursive-minibuffers t)
      :config
      (ivy-mode))
    
    (use-package all-the-icons-ivy-rich
      :ensure t
      :init (all-the-icons-ivy-rich-mode 1))
    
    (use-package ivy-rich
      :ensure t
      :after ivy
      :init (ivy-rich-mode 1) ;; this gets us descriptions in M-x.
      :custom
      (ivy-virtual-abbreviate 'full
       ivy-rich-switch-buffer-align-virtual-buffer t
       ivy-rich-path-style 'abbrev)
      :config
      (ivy-set-display-transformer 'ivy-switch-buffer
                                   'ivy-rich-switch-buffer-transformer))


### GENERAL KEYBINDING

Doom emacs a jmn SPC diye keybindings gulo kaj kore same keybindings gulo add korar jonno general package ta add kore ayta k customize korci. abong ay customization ta distro tube er emacs config theke nea ay jonno e dt/leader key dea sob jaiga te.

    (use-package general
      :ensure t
      :config
    
      ;; Define 'SPC' as the global leader key
      (general-create-definer dt/leader-keys
        :states '(normal insert visual emacs)
        :keymaps 'override
        :prefix "SPC"  ;; Leader key
        :global-prefix "M-SPC")  ;; Access leader in insert mode
    
      ;; Define the keybindings
      (dt/leader-keys
        "SPC" '(counsel-M-x :wk "Counsel M-x")
        "." '(find-file :wk "Find file")
        "=" '(perspective-map :wk "Perspective")
        "TAB TAB" '(comment-line :wk "Comment lines")
        "u" '(universal-argument :wk "Universal argument"))
    
      (dt/leader-keys
        "b" '(:ignore t :wk "Bookmarks/Buffers")
        "b b" '(switch-to-buffer :wk "Switch to buffer")
        ;;"b B" '(exwm-workspace-switch-to-buffer :wk "Exwm buffer switch")
        "b c" '(clone-indirect-buffer :wk "Create indirect buffer copy in a split")
        "b C" '(clone-indirect-buffer-other-window :wk "Clone indirect buffer in new window")
        "b d" '(bookmark-delete :wk "Delete bookmark")
        "b i" '(ibuffer :wk "Ibuffer")
        "b k" '(kill-current-buffer :wk "Kill current buffer")
        "b K" '(kill-some-buffers :wk "Kill multiple buffers")
        "b l" '(list-bookmarks :wk "List bookmarks")
        "b m" '(bookmark-set :wk "Set bookmark")
        "b n" '(next-buffer :wk "Next buffer")
        "b p" '(previous-buffer :wk "Previous buffer")
        "b r" '(revert-buffer :wk "Reload buffer")
        "b R" '(rename-buffer :wk "Rename buffer")
        "b s" '(basic-save-buffer :wk "Save buffer")
        "b S" '(save-some-buffers :wk "Save multiple buffers")
        "b w" '(bookmark-save :wk "Save current bookmarks to bookmark file"))
    
      (dt/leader-keys
        "d" '(:ignore t :wk "Dired")
        "d d" '(dired :wk "Open dired")
        "d j" '(dired-jump :wk "Dired jump to current")
        "d n" '(neotree-dir :wk "Open directory in neotree")
        "d p" '(peep-dired :wk "Peep-dired"))
    
      (dt/leader-keys
        "e" '(:ignore t :wk "Eshell/Evaluate")    
        "e b" '(eval-buffer :wk "Evaluate elisp in buffer")
        "e d" '(eval-defun :wk "Evaluate defun containing or after point")
        "e e" '(eval-expression :wk "Evaluate and elisp expression")
        "e h" '(counsel-esh-history :which-key "Eshell history")
        "e l" '(eval-last-sexp :wk "Evaluate elisp expression before point")
        "e r" '(eval-region :wk "Evaluate elisp in region")
        "e R" '(eww-reload :which-key "Reload current page in EWW")
        "e s" '(eshell :which-key "Eshell")
        "e w" '(eww :which-key "EWW emacs web wowser"))
    
      (dt/leader-keys
        "f" '(:ignore t :wk "Files")    
        "f c" '((lambda () (interactive)
                  (find-file "~/.config/emacs/config.org")) 
                :wk "Open emacs config.org")
        "f e" '((lambda () (interactive)
                  (dired "~/.config/emacs/")) 
                :wk "Open user-emacs-directory in dired")
        "f d" '(find-grep-dired :wk "Search for string in files in DIR")
        "f g" '(counsel-grep-or-swiper :wk "Search for string current file")
        "f i" '((lambda () (interactive)
                  (find-file "~/.config/emacs/init.el")) 
                :wk "Open emacs init.el")
        "f j" '(counsel-file-jump :wk "Jump to a file below current directory")
        "f l" '(counsel-locate :wk "Locate a file")
        "f r" '(counsel-recentf :wk "Find recent files")
        "f u" '(sudo-edit-find-file :wk "Sudo find file")
        "f U" '(sudo-edit :wk "Sudo edit file"))
    
      (dt/leader-keys
        "g" '(:ignore t :wk "Git")    
        "g /" '(magit-displatch :wk "Magit dispatch")
        "g ." '(magit-file-displatch :wk "Magit file dispatch")
        "g b" '(magit-branch-checkout :wk "Switch branch")
        "g c" '(:ignore t :wk "Create") 
        "g c b" '(magit-branch-and-checkout :wk "Create branch and checkout")
        "g c c" '(magit-commit-create :wk "Create commit")
        "g c f" '(magit-commit-fixup :wk "Create fixup commit")
        "g C" '(magit-clone :wk "Clone repo")
        "g f" '(:ignore t :wk "Find") 
        "g f c" '(magit-show-commit :wk "Show commit")
        "g f f" '(magit-find-file :wk "Magit find file")
        "g f g" '(magit-find-git-config-file :wk "Find gitconfig file")
        "g F" '(magit-fetch :wk "Git fetch")
        "g g" '(magit-status :wk "Magit status")
        "g i" '(magit-init :wk "Initialize git repo")
        "g l" '(magit-log-buffer-file :wk "Magit buffer log")
        "g r" '(vc-revert :wk "Git revert file")
        "g s" '(magit-stage-file :wk "Git stage file")
        "g t" '(git-timemachine :wk "Git time machine")
        "g u" '(magit-stage-file :wk "Git unstage file"))
    
      (dt/leader-keys
        "h" '(:ignore t :wk "Help")
        "h a" '(counsel-apropos :wk "Apropos")
        "h b" '(describe-bindings :wk "Describe bindings")
        "h c" '(describe-char :wk "Describe character under cursor")
        "h d" '(:ignore t :wk "Emacs documentation")
        "h d a" '(about-emacs :wk "About Emacs")
        "h d d" '(view-emacs-debugging :wk "View Emacs debugging")
        "h d f" '(view-emacs-FAQ :wk "View Emacs FAQ")
        "h d m" '(info-emacs-manual :wk "The Emacs manual")
        "h d n" '(view-emacs-news :wk "View Emacs news")
        "h d o" '(describe-distribution :wk "How to obtain Emacs")
        "h d p" '(view-emacs-problems :wk "View Emacs problems")
        "h d t" '(view-emacs-todo :wk "View Emacs todo")
        "h d w" '(describe-no-warranty :wk "Describe no warranty")
        "h e" '(view-echo-area-messages :wk "View echo area messages")
        "h f" '(describe-function :wk "Describe function")
        "h F" '(describe-face :wk "Describe face")
        "h g" '(describe-gnu-project :wk "Describe GNU Project")
        "h i" '(info :wk "Info")
        "h I" '(describe-input-method :wk "Describe input method")
        "h k" '(describe-key :wk "Describe key")
        "h l" '(view-lossage :wk "Display recent keystrokes and the commands run")
        "h L" '(describe-language-environment :wk "Describe language environment")
        "h m" '(describe-mode :wk "Describe mode")
        "h r" '(:ignore t :wk "Reload")
        "h r r" '((lambda () (interactive)
                    (load-file "~/.config/emacs/init.el")
                    (ignore (elpaca-process-queues)))
                  :wk "Reload emacs config")
        "h t" '(load-theme :wk "Load theme")
        "h v" '(describe-variable :wk "Describe variable")
        "h w" '(where-is :wk "Prints keybinding for command if set")
        "h x" '(describe-command :wk "Display full documentation for command"))
    
      (dt/leader-keys
        "m" '(:ignore t :wk "Org")
        "m a" '(org-agenda :wk "Org agenda")
        "m e" '(org-export-dispatch :wk "Org export dispatch")
        "m i" '(org-toggle-item :wk "Org toggle item")
        "m t" '(org-todo :wk "Org todo")
        "m B" '(org-babel-tangle :wk "Org babel tangle")
        "m T" '(org-todo-list :wk "Org todo list"))
    
      (dt/leader-keys
        "m b" '(:ignore t :wk "Tables")
        "m b -" '(org-table-insert-hline :wk "Insert hline in table"))
    
      (dt/leader-keys
        "m d" '(:ignore t :wk "Date/deadline")
        "m d t" '(org-time-stamp :wk "Org time stamp"))
    
      (dt/leader-keys
        "o" '(:ignore t :wk "Open")
        "o d" '(dashboard-open :wk "Dashboard")
        "o e" '(elfeed :wk "Elfeed RSS")
        "o f" '(make-frame :wk "Open buffer in new frame")
        "o F" '(select-frame-by-name :wk "Select frame by name"))
    
      ;; projectile-command-map already has a ton of bindings 
      ;; set for us, so no need to specify each individually.
      (dt/leader-keys
        "p" '(:ignore t :wk "Programing")
        "p c" '(compile :wk "Compile")
        "p f" '(flutter-run-or-hot-reload :wk "Flutter App Run"))
      (dt/leader-keys
        "s" '(:ignore t :wk "Search")
        "s d" '(dictionary-search :wk "Search dictionary")
        "s m" '(man :wk "Man pages")
        "s t" '(tldr :wk "Lookup TLDR docs for a command")
        "s w" '(woman :wk "Similar to man but doesn't require man"))
    
      (dt/leader-keys
        "t" '(:ignore t :wk "Toggle")
        "t e" '(eshell-toggle :wk "Toggle eshell")
        "t f" '(flycheck-mode :wk "Toggle flycheck")
        "t l" '(display-line-numbers-mode :wk "Toggle line numbers")
        "t n" '(neotree-toggle :wk "Toggle neotree file viewer")
        "t o" '(org-mode :wk "Toggle org mode")
        "t r" '(rainbow-mode :wk "Toggle rainbow mode")
        "t t" '(visual-line-mode :wk "Toggle truncated lines")
        "t d" '(counsel-linux-app :wk "Open application")
        "t v" '(vterm-toggle :wk "Toggle vterm"))
    
      (dt/leader-keys
        "w" '(:ignore t :wk "Windows")
        ;; Window splits
        "w c" '(evil-window-delete :wk "Close window")
        "w n" '(evil-window-new :wk "New window")
        "w s" '(evil-window-split :wk "Horizontal split window")
        "w v" '(evil-window-vsplit :wk "Vertical split window")
        ;; Window motions
        "w h" '(evil-window-left :wk "Window left")
        "w j" '(evil-window-down :wk "Window down")
        "w k" '(evil-window-up :wk "Window up")
        "w l" '(evil-window-right :wk "Window right")
        "w w" '(evil-window-next :wk "Goto next window")
        ;; Move Windows
        "w H" '(buf-move-left :wk "Buffer move left")
        "w J" '(buf-move-down :wk "Buffer move down")
        "w K" '(buf-move-up :wk "Buffer move up")
        "w L" '(buf-move-right :wk "Buffer move right"))
      )


### SUDO EDIT

Majhe majhe emacs diye amon kicu file edit korte hoi j gula sudo permission cai. kintu emacs defult vabe ay jinis ta support kore na ay jonno sudo permission diye file edit korar jonno amader ay package ta lagbe.

    (use-package sudo-edit
      :ensure t
      :config
        (dt/leader-keys
          "fu" '(sudo-edit-find-file :wk "Sudo find file")
          "fU" '(sudo-edit :wk "Sudo edit file")))


### EMACS KEYBINDING

Ay gula amr nijer keybinding J gula Alt diye kaj kore. R tmi nije caileo nijer moto kore nijer keybinding add kore nite paro.

    ;; Bookmarks and Buffers keybindings
    (define-key global-map (kbd "M-b") nil)  ;; Start defining a prefix for M-b
    ;;(define-key global-map (kbd "M-b b") 'switch-to-buffer)
    (define-key global-map (kbd "M-b i") 'exwm-workspace-switch-to-buffer) ;; Uncomment if needed
    (define-key global-map (kbd "M-b w") 'exwm-workspace-switch)
    (define-key global-map (kbd "M-b c") 'clone-indirect-buffer)
    (define-key global-map (kbd "M-b C") 'clone-indirect-buffer-other-window)
    (define-key global-map (kbd "M-b d") 'bookmark-delete)
    ;;(define-key global-map (kbd "M-b i") 'ibuffer)
    (define-key global-map (kbd "M-b k") 'kill-buffer-and-window)
    (define-key global-map (kbd "M-b K") 'kill-some-buffers)
    (define-key global-map (kbd "M-b l") 'list-bookmarks)
    (define-key global-map (kbd "M-b m") 'bookmark-set)
    (define-key global-map (kbd "M-b n") 'next-buffer)
    (define-key global-map (kbd "M-b p") 'previous-buffer)
    (define-key global-map (kbd "M-b r") 'revert-buffer)
    (define-key global-map (kbd "M-b R") 'rename-buffer)
    (define-key global-map (kbd "M-b s") 'basic-save-buffer)
    (define-key global-map (kbd "M-b S") 'save-some-buffers)
    
    ;; Define M-w as a prefix key for WINDOWS
    (define-key global-map (kbd "M-w") nil)  ;; Start defining a prefix for s-w
    ;; Window management keybindings
    (define-key global-map (kbd "M-w c") 'evil-window-delete)
    (define-key global-map (kbd "M-w n") 'evil-window-new)
    (define-key global-map (kbd "M-w s") 'evil-window-split)
    (define-key global-map (kbd "M-w v") 'evil-window-vsplit)
    
    ;; Window motions
    (define-key global-map (kbd "M-w h") 'evil-window-left)
    (define-key global-map (kbd "M-w j") 'evil-window-down)
    (define-key global-map (kbd "M-w k") 'evil-window-up)
    (define-key global-map (kbd "M-w l") 'evil-window-right)
    (define-key global-map (kbd "M-w w") 'evil-window-next)
    (define-key global-map (kbd "M-w m") 'save-buffers-kill-emacs)
    ;; Move windows
    (define-key global-map (kbd "M-w H") 'buf-move-left)
    (define-key global-map (kbd "M-w J") 'buf-move-down)
    (define-key global-map (kbd "M-w K") 'buf-move-up)
    (define-key global-map (kbd "M-w L") 'buf-move-right)
    
    ;; Define M-d as a prefix key in global-map
    (define-key global-map (kbd "M-d") nil)
    
    ;; Dired keybindings under M-d
    ;; (define-key global-map (kbd "M-d D") 'dired) ;; Open Dired
    (define-key global-map (kbd "M-d D") 'counsel-linux-app) ;; Open Dired
    (define-key global-map (kbd "M-d d") 'app-launcher-run-app) 
    (define-key global-map (kbd "M-d j") 'dired-jump) ;; Jump to current directory in Dired
    (define-key global-map (kbd "M-d n") 'neotree-dir) ;; Open directory in Neotree
    (define-key global-map (kbd "M-d p") 'peep-dired) ;; Peep Dired preview
    (define-key global-map (kbd "M-d x") 'kill-emacs) ;; Kill emacs
    
    
    (define-key global-map (kbd "M-m") nil)
    
    (define-key global-map (kbd "M-m m") #'ORG-TO-MD-CONVERT)
    (define-key global-map (kbd "M-m l") #'Lock-screen)
    (define-key global-map (kbd "M-m L") #'Update-lockscreen-bg)
    (define-key global-map (kbd "M-m s") #'Update-sddm-wallpaper)


### WHICH KEY

Which key emacs er akta package j package ta keybinding gula show kore abong kon keybinding er kaj ki oita minibuffer a show kore. Jemon just spc press korle minibuffer a sob keybinding gula show korbe.

    (use-package which-key
    :ensure t
    :init
      (which-key-mode 1)
    :config
    (setq which-key-side-window-location 'bottom
            which-key-sort-order #'which-key-key-order-alpha
            which-key-sort-uppercase-first nil
            which-key-add-column-padding 1
            which-key-max-display-columns nil
            which-key-min-display-lines 6
            which-key-side-window-slot -10
            which-key-side-window-max-height 0.25
            which-key-idle-delay 0.8
            which-key-max-description-length 25
            which-key-allow-imprecise-window-fit nil
            which-key-separator " → " ))


### BLANK BUFFER

Blank Buffer ayta asole amr nijer add kora jate kore amon akta buffer create kore j buffer a kno kicu e thakbe na ay buffer ta create korar karon holo jate kore exwm a amra amader wallpaper ta dekhte pari. Na hoile amr asole full akta window manager er vibe ase na.

    ;; create a completely blank buffer
    (defun my/blank-buffer ()
      "create a new completely blank buffer with no ui elements."
      (interactive)
      (let ((buf (get-buffer-create "*blank*"))) ;; get or create (prevent duplicate)
        (switch-to-buffer buf)
        (fundamental-mode)
        (setq-local mode-line-format nil)
        (setq-local header-line-format nil)
        (setq-local cursor-type nil) ;; use nil instead of -1
        (setq-local display-line-numbers-mode -1)
        (buffer-disable-undo)
        (read-only-mode -1)
        (blink-cursor-mode 0)
        ;; Hide fringes
        (set-window-fringes (get-buffer-window buf) 0 0)
        ;; Clear message area
        (message nil)))


### TRANSPERENCY

Transparency er setting gula mainly background show korar jonno.

    ;; START picom for transparency
    (start-process "picom" nil "picom")
    
    ;;; TRANSPARENCY LOGIC BASED ON BUFFER NAME
    (defun my/update-transparency-based-on-buffer ()
      "Set transparency to 0 if in *blank*, else back to default."
      (if (string= (buffer-name) "*blank*")
          ;; If it's blank buffer: fully transparent
          (progn
            (set-frame-parameter (selected-frame) 'alpha-background 0)
            (set-frame-parameter (selected-frame) 'alpha '(0 . 0)))
        ;; For all other buffers: semi-transparent
        (progn
          (set-frame-parameter (selected-frame) 'alpha-background 90)
          (set-frame-parameter (selected-frame) 'alpha '(90 . 90)))))
    
    ;; Update transparency whenever buffer changes
    (add-hook 'buffer-list-update-hook #'my/update-transparency-based-on-buffer)


### MOUSE, BATTERY AND BACKGROUND SETUP

Sob window manger er bar gula te jemon, polybar ba i3bar a kicu information show kore abong kno software run hoile tar applet ta show kore. To same jinis tar jonno e ay config gula. nm-applet j ta linux er network maintain korar jonno help kore oita abong ami screenshoot er jonno flameshot use kori ay dui ta k emacs er modeline a show korar jonno ami ay config gula use kori.

    (setq mouse-autoselect-window t
          focus-follows-mouse t)
    
    (display-time-mode 1)
    (setq display-time-format "%H:%M:%S")
    (display-battery-mode 1)
    
    (add-hook 'exwm-init-hook
              (lambda ()
                (run-at-time "1 sec" nil (lambda ()
                  (start-process "nitrogen" nil "nitrogen" "--restore")))
                (run-at-time "3 sec" nil (lambda ()
                  (start-process "nm-applet" nil "nm-applet")))
                (run-at-time "3 sec" nil (lambda ()
                  (start-process "flameshot" nil "flameshot")))))


### IDE

Amr issa ace j ami emacs k e amr main coding IDE hisabe use korbo to emacs diye coding korar jonno ja ja proyojon oi hisabe akta ide build korar try kortaci.

    ;; ========== Neotree Mode ==========
    (use-package neotree
      :ensure t)
    ;; ========== Company Mode ==========
    (use-package company
      :ensure t
      :diminish
      :hook (prog-mode . company-mode)
      :bind (:map company-active-map
                  ("<tab>" . company-complete-selection))
      :init (global-company-mode)
      :custom
      (company-minimum-prefix-length 2)
      (company-idle-delay 0.0)
      (company-show-numbers t)
      (company-tooltip-align-annotations t))
    
    ;; ========== Flycheck Mode ==========
    (use-package flycheck
      :ensure t
      :defer t
      :diminish
      :init (global-flycheck-mode))
    
    ;; ========== LSP Mode ==========
    (use-package lsp-mode
      :ensure t
      :commands lsp
      :hook ((python-mode . lsp)
             (dart-mode . lsp)
             (c-mode . lsp)
             (c++-mode . lsp)
             (js-mode . lsp)
             (typescript-mode . lsp)
             (go-mode . lsp)
             (rust-mode . lsp))
      :custom
      (lsp-pyright-typechecking-mode "basic")
      (lsp-enable-symbol-highlighting t)
      (lsp-prefer-flymake nil))


### LANGUAGE SUPPORT FOR IDE

-   PYTHON

        (use-package python-mode
          :hook (python-mode . lsp)
          :custom
          (python-shell-interpreter "python3"))
        
        (use-package lsp-pyright
          :ensure t
          :after lsp-mode
          :hook (python-mode . (lambda ()
                                 (require 'lsp-pyright)
                                 (lsp))))

-   DART MODE

        ;; Dart + Flutter setup
        (use-package dart-mode
          :ensure t
          :hook (dart-mode . lsp)
          :custom
          (dart-format-on-save t))
        
        (use-package lsp-dart
          :ensure t
          :after dart-mode
          :hook (dart-mode . lsp)
          :custom
          (lsp-dart-flutter-widget-guides t)
          (lsp-dart-sdk-dir "/home/aresr/flutter/bin/cache/dart-sdk/")
          (lsp-dart-flutter-sdk-dir "/home/aresr/flutter/"))
        (use-package flutter
          :ensure t
          :after dart-mode
          :custom
          (flutter-sdk-path "/home/aresr/flutter") ;; change this to your flutter path
          :bind (:map dart-mode-map
                      ("C-M-x" . flutter-run-or-hot-reload)))


### DASHBOARD

Dashboard hocce akta emacs package j ta recent file abong onno kicu important option show kore. jdi kew exwm use na kore just emacs use kore tar jonno ay package ta startup page hisabe onk valo kaj korbe.

    (use-package dashboard
      :ensure t
      :init
      ;; (setq initial-buffer-choice 'dashboard-open)
      (setq dashboard-set-heading-icons t)
      (setq dashboard-set-file-icons t)
      (setq dashboard-banner-logo-title "NOTHING IS HERE")
      ;;(setq dashboard-startup-banner 'logo) ;; use standard emacs logo as banner
      (setq dashboard-startup-banner "/home/nothing/Pictures/555.png"))  ;; use custom image as banner
    ;;   (setq dashboard-center-content nil) ;; set to 't' for centered content
    ;;   (setq dashboard-items '((recents . 5)
    ;;                           (agenda . 5 )
    ;;                           (bookmarks . 3)
    ;;                           (projects . 3)
    ;;                           (registers . 3)))
    ;; :custom
    ;; (dashboard-modify-heading-icons '((recents . "file-text")
    ;;                                   (bookmarks . "book")))
    ;; :config
    ;; (dashboard-setup-startup-hook))


### DIRED

Emacs er defult file manger `DIRED` er fiture increase korar jonno configuretion.

    (use-package dired-open
      :ensure t
      :config
      (setq dired-open-extensions '(("gif" . "loupe")
                                    ("jpg" . "loupe")
                                    ("jpeg" . "loupe")
                                    ("pdf" . "okular")
                                    ("png" . "loupe")
                                    ("mkv" . "vlc")
                                    ("mp4" . "vlc"))))
    
    (use-package peep-dired
      :ensure t
      :after dired
      :hook (evil-normalize-keymaps . peep-dired-hook)
      :config
        (evil-define-key 'normal dired-mode-map (kbd "h") 'dired-up-directory)
        (evil-define-key 'normal dired-mode-map (kbd "l") 'dired-open-file) ; use dired-find-file instead if not using dired-open package
        (evil-define-key 'normal peep-dired-mode-map (kbd "j") 'peep-dired-next-file)
        (evil-define-key 'normal peep-dired-mode-map (kbd "k") 'peep-dired-prev-file)
    )
    
    (setq dired-listing-switches "-lha")


### BACKUPS

Emacs j backup file gula toiri kore oi gula k autmetically trash folder a move kore dea. ami ay config ta o dt er theke copy korci to ayta akhn koto ta kaj kore ami sure na..future a er upgraded version nia asbo insa&rsquo;allah.

    (setq backup-directory-alist '((".*" . "~/.local/share/Trash/files")))


### BUFFER MOVE

Buffer gula same workspace er vitore window to window move korar jonno ay code tuku jmn jdi akta workspace a 2 ta window thake abong akta te right side a firefox o left side a thunar, to thunar abong firefox k move korarnor jonno ay code tuku proyojon. Aytao dt er config er copy.😜 

    (require 'windmove)
    
    ;;;###autoload
    (defun buf-move-up ()
      "Swap the current buffer and the buffer above the split.
    If there is no split, ie now window above the current one, an
    error is signaled."
    ;;  "Switches between the current buffer, and the buffer above the
    ;;  split, if possible."
      (interactive)
      (let* ((other-win (windmove-find-other-window 'up))
             (buf-this-buf (window-buffer (selected-window))))
        (if (null other-win)
            (error "No window above this one")
          ;; swap top with this one
          (set-window-buffer (selected-window) (window-buffer other-win))
          ;; move this one to top
          (set-window-buffer other-win buf-this-buf)
          (select-window other-win))))
    
    ;;;###autoload
    (defun buf-move-down ()
    "Swap the current buffer and the buffer under the split.
    If there is no split, ie now window under the current one, an
    error is signaled."
      (interactive)
      (let* ((other-win (windmove-find-other-window 'down))
             (buf-this-buf (window-buffer (selected-window))))
        (if (or (null other-win) 
                (string-match "^ \\*Minibuf" (buffer-name (window-buffer other-win))))
            (error "No window under this one")
          ;; swap top with this one
          (set-window-buffer (selected-window) (window-buffer other-win))
          ;; move this one to top
          (set-window-buffer other-win buf-this-buf)
          (select-window other-win))))
    
    ;;;###autoload
    (defun buf-move-left ()
    "Swap the current buffer and the buffer on the left of the split.
    If there is no split, ie now window on the left of the current
    one, an error is signaled."
      (interactive)
      (let* ((other-win (windmove-find-other-window 'left))
             (buf-this-buf (window-buffer (selected-window))))
        (if (null other-win)
            (error "No left split")
          ;; swap top with this one
          (set-window-buffer (selected-window) (window-buffer other-win))
          ;; move this one to top
          (set-window-buffer other-win buf-this-buf)
          (select-window other-win))))
    
    ;;;###autoload
    (defun buf-move-right ()
    "Swap the current buffer and the buffer on the right of the split.
    If there is no split, ie now window on the right of the current
    one, an error is signaled."
      (interactive)
      (let* ((other-win (windmove-find-other-window 'right))
             (buf-this-buf (window-buffer (selected-window))))
        (if (null other-win)
            (error "No right split")
          ;; swap top with this one
          (set-window-buffer (selected-window) (window-buffer other-win))
          ;; move this one to top
          (set-window-buffer other-win buf-this-buf)
          (select-window other-win))))

Aybar hocce main window manger setup. Exwm.


### setting up exwm

-   exwm main

    [EXWM WIKI](https://github.com/emacs-exwm/exwm/wiki) dekhle exwm kivabe setup korte hobe sob bujhte parba. Ami amr config a nijer moto kore kicu changes korci. Exwm a defult vabe leader key hisabe Windows ba Super key dea thake, kintu amr personally Alt key ta besi posondo. Amr personal preference hocce j keyboard a 2 ta Alt key thake to to control korte subidha hoi. 
    
        (require 'exwm)
        ;; Set the initial workspace number.
        (setq exwm-workspace-number 10)
        ;;/ Make class name the buffer name.
        (add-hook 'exwm-update-class-hook
                  (lambda () (exwm-workspace-rename-buffer exwm-class-name)))
        (add-hook 'exwm-init-hook
                  (lambda ()
                    (exwm-workspace-switch 1)))  ;; Auto switch to workspace 1
        ;; Global keybindings.
        (setq exwm-input-global-keys
              `(([?\M-r] . exwm-reset) ;; s-r: Reset (to line-mode).
                ([?\M-n] . exwm-workspace-switch) ;; s-w: Switch workspace.
                ([?\M-k] . kill-buffer-and-window)
                ([?\M-&] . (lambda (cmd) ;; s-&: Launch application.
                             (interactive (list (read-shell-command "$ ")))
                             (start-process-shell-command cmd nil cmd)))
                ;; s-N: Switch to certain workspace.
                ,@(mapcar (lambda (i)
                            `(,(kbd (format "M-%d" i)) .
                              (lambda ()
                                (interactive)
                                (exwm-workspace-switch-create ,i))))
                          (number-sequence 0 9))))
        
        
        ;; For copy like normal keybinding C-c
        (define-key exwm-mode-map [?\C-q] 'exwm-input-send-next-key)
        
        ;; Enable EXWM
        (exwm-enable)
        ()
        (add-hook 'exwm-manage-finish-hook
                  (lambda ()
                    (when (and exwm-class-name
                               (string= exwm-class-name "Firefox"))
                      (exwm-input-set-local-simulation-keys nil))))
        (require 'exwm-systemtray)
        (exwm-systemtray-mode 1)
        (require 'exwm-randr)
        (exwm-randr-mode 1)


### EXWM DISPLAY

    (setq X11_SCREEN_LIST '("eDP-1" "DP-3"))
    
    ;; xrandr --mode for each screen in X11_SCREEN_LIST
    (setq X11_SCREEN_MODE_LIST '("1680x1050" "3840x1600"))
    
    ;; xrandr --rate for each screen in X11_SCREEN_LIST
    (setq X11_SCREEN_RATE_LIST '("59.95" "59.99"))
    
    ;; How screens are arranged from left to right. Vertical order, and "--same-as" not yet implemented.
    (setq X11_SCREEN_ORDER_LIST '("DP-3" "eDP-1"))
    
    ;; X11 screens (graphics outputs) that should always be explicitly turned off, if available.
    (setq X11_SCREEN_DISABLED_LIST '("DP-2"))
    
    ;; Primary X11 screen, if available
    (setq X11_SCREEN_PREFERRED "DP-3")
    ;; (setq X11_SCREEN_PREFERRED "eDP-1")
    
    ;; If X11_SCREEN_USE_ALL_AVAILABLE="yes" then use all available screens in X11_SCREEN_LIST:
    ;; - X11_SCREEN_PREFERRED is primary, if available
    ;; - If X11_SCREEN_PREFERRED is unavailable, primary is first available screen in X11_SCREEN_LIST.
    ;; Otherwise use only one:
    ;; - X11_SCREEN_PREFERRED if available
    ;; - If X11_SCREEN_PREFERRED is unavailable then use first available screen in X11_SCREEN_LIST.
    (setq X11_SCREEN_USE_ALL_AVAILABLE t)
    ;; (setq X11_SCREEN_USE_ALL_AVAILABLE nil)
    
    ;; Argument value for "xrandr --dpi", i.e. Dots Per Inch. This is for the X11 DISPLAY, i.e. used for all screens.
    (setq X11_DISPLAY_DPI 106)
    
    ;; List of pairs "workspace-number screen"
    ;; Used to construct exwm-randr-workspace-monitor-plist in emacs.
    ;; If a screen in this list is unavailable, the workspace will be mapped to the primary screen.
    (setq EXWM_WORKSPACE_LIST '((1 . "eDP-1") (3 . "eDP-1")))
    ;; (setq EXWM_WORKSPACE_LIST '((1 . "DP-3") (3 . "DP-3")))


### TRANSPERENCY FOR EXWM WORKSPACE

Exwm a er workspace gula te background show korar jonno jkhn amra kno workspace a switch korbo tkhn jate kore background ta dekha jai ay jonno jkhni amra kno workspaces a switch korbo tkhn jeno amader blank buffer ta show kore oi jonno ay config tuku add korte hobe.

    ;;; ONLY OPEN *blank* ON STARTUP IF EXWM WORKSPACE 0
    (defun my/blank-buffer-in-first-workspace-only ()
      "Open blank buffer only in EXWM workspace 0."
      (when (and (featurep 'exwm)
                 (eq exwm-workspace-current-index 0)
                 (not (get-buffer "*blank*"))) ;; only if it doesn't exist yet
        (my/blank-buffer)))
    
    (add-hook 'emacs-startup-hook #'my/blank-buffer-in-first-workspace-only)
    
    
    ;;; WHEN SWITCHING EXWM WORKSPACES, SHOW *blank* IF NOTHING ELSE
    (defun my/show-blank-if-no-buffer ()
      "Show *blank* buffer if current buffer is *scratch* or unnamed."
      (let ((curr (buffer-name)))
        (when (or (string= curr "*scratch*")
                  (string= curr "")
                  (string-match-p "^\\*.*\\*$" curr)) ;; if it's just *Messages*, *Help*, etc.
          (unless (get-buffer "*blank*")
            (my/blank-buffer))
          (switch-to-buffer "*blank*"))))
    
    (add-hook 'exwm-workspace-switch-hook #'my/show-blank-if-no-buffer)


### EXWM FONT SETTINGS

Exwm a font rendering er smy error ascilo to oita k fix korar jonno ami ay code ta use korcilam.

    (defun my/apply-font-settings (frame)
      (with-selected-frame frame
        (set-face-attribute 'default nil :font "JetBrains Mono" :height 160  :weight 'medium)))
        ;; (set-face-attribute 'variable-pitch nil :font "Ubuntu" :height 100 :weight 'medium)
        ;; (set-face-attribute 'fixed-pitch nil :font "JetBrains Mono" :height 100 :weight 'medium)
        ;; (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
        ;; (set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
        ;; (setq-default line-spacing 0.12)))
    (add-hook 'after-make-frame-functions #'my/apply-font-settings)


### EXWM EXTRA SETTING

Exwm use korar smy amr touchpad a kaj kortacilo na to oitar jonno ami akta bash script configi er sathe add kore diyeci. R exwm a joto buffer open kora hoyece, mane mone koro tmi 1st workspace a aco kintu tmr firefox open kora 3rd workspace a to tmi jdi M-b-i press koro to tmr sob buffer show korbe abong tmi j kno buffer a switch korte parbe se j workspace a e thakuk na kno.

    (add-to-list 'default-frame-alist '(fullscreen . maximized))
    (setq exwm-workspace-show-all-buffers t)
    (setq exwm-workspace-warp-cursor t)
    
    ;;TOUCHPAD SETTINGS 
    (start-process-shell-command "touchpad-fix" nil "~/.config/emacs/scripts/exwm-touchpad-fix.sh")


### APP LUNCHER

counsel-linux-app command diye app run korle j promt ta ase oitar theke ay app luncher ta besi interactive.

    (add-to-list 'load-path "~/.config/emacs/scripts/")
    (require 'app-launcher)

To er porer theke j code gula ace sob e amr personal config er vitore pore. Ami nijer subidha moto cusotmize korci jate kore akta fullfill window manager er moto kore e exwm k use kora jai.


### EXWM POWER-MENU

    (defun my/power-menu ()
      "Launch the graphical power menu."
      (interactive)
      (start-process-shell-command "wlogout" nil "wlogout"))
    
    ;; ====== KEYBINDING =====
    (global-set-key (kbd "M-p") #'my/power-menu) ;; FOR EMACS
    (define-key exwm-mode-map [?\M-p] #'my/power-menu) ;; FOR EXWM


### EXWM SCREEN LOCK

    (defun my/lock-screen ()
      "Lock the screen using i3lock."
      (interactive)
      (start-process "betterlockscreen" nil "betterlockscreen" "--lock"))
    
    (defun my/update-lockscreen-background ()
      "Update betterlockscreen background using the external script and notify via dunst."
      (interactive)
      (let* ((proc-name "update-lockscreen-bg")
             (script-path "~/.config/emacs/scripts/betterlockscreen-wallpaper-update.sh")
             (proc (start-process-shell-command
                    proc-name
                    "*betterlockscreen-output*"
                    (concat "bash " script-path))))
        ;; Notify when the update starts
        (start-process-shell-command "notify-start" nil
                                      "notify-send 'Betterlockscreen' '🔄 Updating lockscreen background...' -u low")
    
        ;; Notify when the update finishes
        (set-process-sentinel
         proc
         (lambda (_process event)
           (when (string= event "finished\n")
             (start-process-shell-command "notify-end" nil
                                          "notify-send 'Betterlockscreen' '✅ Background update complete!' -u normal"))))))
    
    
    ;; ====== KEYBINDING =====
    (global-set-key (kbd "M-l") #'my/lock-screen) ;; FOR EMACS
    (define-key exwm-mode-map [?\M-l] #'my/lock-screen) ;; FOR EXWM


### EXWEM NOTIFICATION

-   STARTING DUNST

        (start-process "dunst" nil "dunst") ;; Starting Wireless conncetion 

-   VOLUME CONTROL

        (defun volume-increase ()
          (interactive)
          (start-process-shell-command "volume up" nil
           "pactl set-sink-volume @DEFAULT_SINK@ +5% && notify-send 'Volume ↑' \"$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\\d+%' | head -1)\""))
        
        (defun volume-decrease ()
          (interactive)
          (start-process-shell-command "volume down" nil
           "pactl set-sink-volume @DEFAULT_SINK@ -5% && notify-send 'Volume ↓' \"$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\\d+%' | head -1)\""))
        
        (defun volume-mute-toggle ()
          (interactive)
          (start-process-shell-command "volume mute" nil
           "pactl set-sink-mute @DEFAULT_SINK@ toggle && notify-send 'Mute Toggled'"))
        
        ;; ====== KEYBINDING FOR EMACS =====
        (global-set-key (kbd "<XF86AudioRaiseVolume>") 'volume-increase)
        (global-set-key (kbd "<XF86AudioLowerVolume>") 'volume-decrease)
        (global-set-key (kbd "<XF86AudioMute>") 'volume-mute-toggle)
        
        ;; ====== KEYBINDING FOR EXWM =====
        (define-key exwm-mode-map(kbd "<XF86AudioRaiseVolume>") 'volume-increase)
        (define-key exwm-mode-map(kbd "<XF86AudioLowerVolume>") 'volume-decrease)
        (define-key exwm-mode-map(kbd "<XF86AudioMute>") 'volume-mute-toggle)

-   BRIGHTNESS CONTROL

        (defun brightness-increase ()
          (interactive)
          (start-process-shell-command "brightness up" nil
           "brightnessctl set +3% && notify-send 'Brightness ↑' \"$(brightnessctl g | awk '{print int($1/10)*10 \"%\"}')\""))
        
        (defun brightness-decrease ()
          (interactive)
          (start-process-shell-command "brightness down" nil
           "brightnessctl set 3%- && notify-send 'Brightness ↓' \"$(brightnessctl g | awk '{print int($1/10)*10 \"%\"}')\""))
        
        
        ;; ====== KEYBINDING FOR EMACS =====
        (global-set-key (kbd "<XF86MonBrightnessUp>") 'brightness-increase)
        (global-set-key (kbd "<XF86MonBrightnessDown>") 'brightness-decrease)
        
        
        ;; ====== KEYBINDING FOR EXWM =====
        (define-key exwm-mode-map (kbd "<XF86MonBrightnessUp>") 'brightness-increase)
        (define-key exwm-mode-map (kbd "<XF86MonBrightnessDown>") 'brightness-decrease)


### SDDM BACKGROUND UPDATE

    (defun my/update-sddm-wallpaper ()
      "Update SDDM wallpaper using external script in alacritty and notify via dunst."
      (interactive)
      (let* ((proc-name "update-sddm-wallpaper")
             (output-buffer "*sddm-wallpaper-output*")
             (script-path (expand-file-name "~/.config/emacs/scripts/update-sddm-wallpaper.sh"))
             (terminal-command
              (format "alacritty -e bash -c 'bash %s; read -n 1 -s -r -p \"[✓] Press any key to close...\"'" script-path))
             (proc (start-process-shell-command proc-name output-buffer terminal-command)))
    
        ;; Notify when update starts
        (start-process-shell-command "notify-sddm-start" nil
                                      "notify-send 'SDDM' '🖼️ Updating SDDM wallpaper...' -u low")
    
        ;; Notify when process finishes
        (set-process-sentinel
         proc
         (let ((buf output-buffer)) ;; 👈 pass buffer into lambda
           (lambda (_process event)
             (when (get-buffer buf)
               (kill-buffer buf))
             (if (string= event "finished\n")
                 (start-process-shell-command "notify-sddm-end" nil
                                              "notify-send 'SDDM' '✅ SDDM wallpaper updated successfully!' -u normal")
               (start-process-shell-command "notify-sddm-fail" nil
                                            "notify-send 'SDDM' '❌ SDDM wallpaper update failed!' -u critical")))))))


### SHORTCUT FOR LUNCHING APPLICATION

     (defun my/launch-firefox ()
      "launch firefox browser."
      (interactive)
      (start-process-shell-command "firefox" nil "firefox"))
    
     (defun my/launch-nitrogen ()
      "launch firefox browser."
      (interactive)
      (start-process-shell-command "nitrogen" nil "nitrogen"))
    
    (defun my/launch-thunar ()
      "Launch Thunar file manager."
      (interactive)
      (start-process-shell-command "thunar" nil "thunar"))
    
    ;; Global Emacs keybindings (optional, if you want to use outside EXWM buffers too)
    (global-set-key (kbd "M-B") #'my/launch-firefox)
    (global-set-key (kbd "M-e") #'my/launch-thunar)
    (global-set-key (kbd "M-N") #'my/launch-nitrogen)
    
    
    ;; EXWM-specific keybindings
    (with-eval-after-load 'exwm
      (define-key exwm-mode-map (kbd "M-B") #'my/launch-firefox)
      (define-key exwm-mode-map (kbd "M-e") #'my/launch-thunar))
      (define-key exwm-mode-map (kbd "M-N") #'my/launch-nitrogen)
    
    ;; ALACRITTY TOGGLE 
    (defvar my/alacritty-process-name "alacritty")
    (defun my/kill-alacritty ()
      "Kill all kitty windows."
      (interactive)
      (dolist (buffer (buffer-list))
        (with-current-buffer buffer
          (when (and (eq major-mode 'exwm-mode)
                     (string-match "alacritty" (or exwm-class-name "")))
            (kill-buffer buffer)))))
    
    (defun my/toggle-alacritty ()
      "Toggle alacritty terminal: launch if not visible, close if focused."
      (interactive)
      (let ((alacritty-buffer
             (seq-find (lambda (buf)
                         (with-current-buffer buf
                           (and (eq major-mode 'exwm-mode)
                                (string-match "alacritty" (or exwm-class-name "")))))
                       (buffer-list))))
        (if (and alacritty-buffer (eq (current-buffer) alacritty-buffer))
            ;; We're in the alacritty window, so kill it
            (my/kill-alacritty)
          ;; Else, launch it
          (start-process-shell-command my/alacritty-process-name nil "alacritty"))))
    
    (global-set-key (kbd "M-t") #'my/toggle-alacritty)
    (define-key exwm-mode-map (kbd "M-t") #'my/toggle-alacritty)
    
    ;; FULLSCREEN TOGGLE
    (defvar my/fullscreen-p nil
      "Toggle fullscreen mode.")
    
    (defun my/toggle-fullscreen ()
      (interactive)
      (if (not my/fullscreen-p)
          (progn
            ;; Emacs frame fullscreen
            (set-frame-parameter nil 'fullscreen 'fullboth)
            ;; EXWM window fullscreen (works for tiling too)
            (when (eq major-mode 'exwm-mode)
              (exwm-layout-set-fullscreen t))
            (setq my/fullscreen-p t))
        (progn
          ;; Emacs frame normal
          (set-frame-parameter nil 'fullscreen nil)
          ;; EXWM window un-fullscreen
          (when (eq major-mode 'exwm-mode)
            (exwm-layout-unset-fullscreen))
          (setq my/fullscreen-p nil))))
    
    (global-set-key (kbd "M-m x") #'my/toggle-fullscreen)
    (define-key exwm-mode-map (kbd "M-m x") #'my/toggle-fullscreen)


### CUSTOMIZED FUNCTION NAME

    ;; Power Menu
    (defalias 'Power-menu #'my/power-menu)
    
    ;; Lock Screen
    (defalias 'Lock-screen #'my/lock-screen)
    
    ;; Update Lock Screen Background
    (defalias 'Update-lockscreen-bg #'my/update-lockscreen-background)
    
    ;; Update SDDM Wallpaper
    (defalias 'Update-sddm-wallpaper #'my/update-sddm-wallpaper)
    
    (defalias 'ORG-TO-MD-CONVERT #'my/org-md-export-to-markdown-with-header)


### EXWM KEYBINDINGS

-   BUFFER

        ;; Unbind M-b from any previous behavior (like backward-word)
        (define-key exwm-mode-map (kbd "M-b") nil)  ;; Start defining a prefix for M-b in EXWM
        
        ;; EXWM controls under M-b
        (define-key exwm-mode-map (kbd "M-b r") 'exwm-reset) ;; Reset EXWM
        (define-key exwm-mode-map (kbd "M-b w") 'exwm-workspace-switch) ;; Switch workspace
        (define-key exwm-mode-map (kbd "M-b i") 'exwm-workspace-switch-to-buffer) ;; Uncomment if needed
        (define-key exwm-mode-map (kbd "M-b d") 'exwm-workspace-delete) ;; Delete workspace
        (define-key exwm-mode-map (kbd "M-b h") 'windmove-left)  ;; Move focus left
        (define-key exwm-mode-map (kbd "M-b j") 'windmove-down)  ;; Move focus down
        (define-key exwm-mode-map (kbd "M-b l") 'windmove-right)  ;; Move focus right
        (define-key exwm-mode-map (kbd "M-b k") 'kill-buffer-and-window)  ;; Kill buffer + window
        (define-key exwm-mode-map (kbd "M-b f") 'exwm-floating-toggle-floating) ;; Toggle floating mode
        (define-key exwm-mode-map (kbd "M-b m") 'exwm-layout-toggle-mode-line) ;; Toggle mode-line visibility
        (define-key exwm-mode-map (kbd "M-b q") 'exwm-input-release-keyboard) ;; Release EXWM keyboard Release

-   WINDOW

        ;; Define M-w as a prefix key for EXWM
        (define-key exwm-mode-map (kbd "M-w") nil)  ;; Start defining a prefix for M-w in EXWM
        
        ;; Window management keybindings
        (define-key exwm-mode-map (kbd "M-w c") 'evil-window-delete)
        (define-key exwm-mode-map (kbd "M-w n") 'evil-window-new)
        (define-key exwm-mode-map (kbd "M-w s") 'evil-window-split)
        (define-key exwm-mode-map (kbd "M-w v") 'evil-window-vsplit)
        (define-key exwm-mode-map (kbd "M-w W") 'exwm-workspace-move-window)
        
        ;; Window motions
        (define-key exwm-mode-map (kbd "M-w h") 'evil-window-left)
        (define-key exwm-mode-map (kbd "M-w j") 'evil-window-down)
        (define-key exwm-mode-map (kbd "M-w k") 'evil-window-up)
        (define-key exwm-mode-map (kbd "M-w l") 'evil-window-right)
        (define-key exwm-mode-map (kbd "M-w w") 'evil-window-next)
        
        ;; Move windows
        (define-key exwm-mode-map (kbd "M-w H") 'buf-move-left)
        (define-key exwm-mode-map (kbd "M-w J") 'buf-move-down)
        (define-key exwm-mode-map (kbd "M-w K") 'buf-move-up)
        (define-key exwm-mode-map (kbd "M-w L") 'buf-move-right)
        (define-key exwm-mode-map (kbd "M-w m") 'save-buffers-kill-emacs)

-   DIRED AND MENU

        ;; Define M-d as a prefix key in EXWM mode
        (define-key exwm-mode-map (kbd "M-d") nil)
        
        ;; Dired keybindings under M-d for exwm
        ;; (define-key exwm-mode-map (kbd "M-d D") 'dired) ;; Open dired
        (define-key exwm-mode-map (kbd "M-d D") 'counsel-linux-app) ;; Open dired
        (define-key exwm-mode-map (kbd "M-d d") 'app-launcher-run-app)
        (define-key exwm-mode-map (kbd "M-d j") 'dired-jump) ;; Jump to current directory in Dired
        (define-key exwm-mode-map (kbd "M-d n") 'neotree-dir) ;; Open directory in Neotree
        (define-key exwm-mode-map (kbd "M-d p") 'peep-dired) ;; Peep Dired preview

-   PERSONAL KEYBINDINGS

        ;; ===== personal keybinding for menus =====
        (define-key exwm-mode-map (kbd "M-m") nil)
        
        (define-key exwm-mode-map (kbd "M-m m") #'ORG-TO-MD-CONVERT)
        (define-key exwm-mode-map (kbd "M-m l") #'Lock-screen)
        (define-key exwm-mode-map (kbd "M-m b") #'Update-lockscreen-bg)
        (define-key exwm-mode-map (kbd "M-m p") #'Update-sddm-wallpaper)
        (define-key exwm-mode-map (kbd "M-m x") 'exwm-layout-toggle-fullscreen)

