;;;; cl-fsnotify.lisp

(in-package #:cl-fsnotify)

(defgeneric add-watch (path)
 (:documentation "Adds a path to the notification watchlist."))

(defgeneric del-watch (path)
 (:documentation "Removes a path to the notification watchlist."))

(defmethod get-files-in-directory ((dir pathname))
  (directory (make-pathname :name :wild :type :wild :directory (pathname-directory dir))))

(defmethod add-directory ((dir pathname))
  (let ((dirlist (get-files-in-directory dir)))
    (dolist (file-in-dir dirlist)
      (when (pathname-name file-in-dir) ; Only watch files in directories, not sub-directories
        (add-watch file-in-dir)))))

(defmethod del-directory ((dir pathname))
  (let ((dirlist (get-files-in-directory dir)))
    (dolist (file-in-dir dirlist)
      (when (pathname-name file-in-dir) ; Only watch files in directories, not sub-directories
        (del-watch file-in-dir)))))
