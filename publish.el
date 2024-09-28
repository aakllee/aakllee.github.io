(require 'ox-publish)

(setq org-publish-project-alist
      `(("pages"
         :base-directory "~/Public/aakllee.github.io/org/"
         :base-extension "org"
         :recursive t
         :publishing-directory "~/Public/aakllee.github.io/docs/"
         :publishing-function org-html-publish-to-html)

        ("static"
         :base-directory "~/Public/aakllee.github.io/org/"
         :base-extension "css\\|txt\\|jpg\\|gif\\|png\\|webp"
         :recursive t
         :publishing-directory "~/Public/aakllee.github.io/docs/"
         :publishing-function org-publish-attachment)

        ("akll.org" :components ("pages" "static"))))
