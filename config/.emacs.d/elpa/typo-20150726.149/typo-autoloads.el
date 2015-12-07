;;; typo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (typo-global-mode typo-mode) "typo" "typo.el" (21956
;;;;;;  50860 706528 445000))
;;; Generated autoloads from typo.el

(autoload 'typo-mode "typo" "\
Minor mode for typographic editing.

This mode changes some default keybindings to enter typographic
glyphs. In particular, this changes how quotation marks, the
dash, the dot, and the angle brackets work.

Most keys will cycle through various options when used
repeatedly.

\\{typo-mode-map}

\(fn &optional ARG)" t nil)

(defvar typo-global-mode nil "\
Non-nil if Typo-Global mode is enabled.
See the command `typo-global-mode' for a description of this minor mode.")

(custom-autoload 'typo-global-mode "typo" nil)

(autoload 'typo-global-mode "typo" "\
Minor mode for typographic editing.

This mode provides a prefix map under C-c 8 which complements the
default C-x 8 prefix map.

\\{typo-global-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("typo-pkg.el") (21956 50860 728254 402000))

;;;***

(provide 'typo-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; typo-autoloads.el ends here
