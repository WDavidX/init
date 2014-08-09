;; Successfully installed!

;;Add the following code to your .emacs:

(add-to-list 'load-path "~/init/eplugins/ac131teradyne/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/init/eplugins/ac131teradyne//ac-dict")
(ac-config-default)
