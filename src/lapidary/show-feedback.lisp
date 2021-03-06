(defun show-feedback ()
  (let* ((feedback (g-value lapidary::*selection-info* :p-selected))
	 (s-selected (g-value lapidary::*selection-info* :s-selected))
	 (parent (g-local-value s-selected :parent :parent)))
    (s-value feedback :obj-over (car (g-value parent :components)))
    (opal:update-all)))
