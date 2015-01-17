;;;; grovel.lisp

(in-package #:cl-fsnotify-inotify)

(include "unistd.h")
(include "limits.h")
(include "sys/inotify.h")

(constant (o-nonblock      "IN_NONBLOCK"))

(constant (e-again          "EAGAIN"))
(constant (e-wouldblock     "EWOULDBLOCK"))

(constant (in-access        "IN_ACCESS"))
(constant (in-modify        "IN_MODIFY"))
(constant (in-attrib        "IN_ATTRIB"))
(constant (in-close-write   "IN_CLOSE_WRITE"))
(constant (in-close-nowrite "IN_CLOSE_NOWRITE"))
(constant (in-close         "IN_CLOSE"))
(constant (in-open          "IN_OPEN"))
(constant (in-moved-from    "IN_MOVED_FROM"))
(constant (in-moved-to      "IN_MOVED_TO"))
(constant (in-move          "IN_MOVE"))
(constant (in-create        "IN_CREATE"))
(constant (in-delete        "IN_DELETE"))
(constant (in-delete-self   "IN_DELETE_SELF"))
(constant (in-move-self     "IN_MOVE_SELF"))
(constant (in-unmount       "IN_UNMOUNT"))
(constant (in-q-overflow    "IN_Q_OVERFLOW"))
(constant (in-ignored       "IN_IGNORED"))
(constant (in-onlydir       "IN_ONLYDIR"))
(constant (in-dont-follow   "IN_DONT_FOLLOW"))
(constant (in-mask-add      "IN_MASK_ADD"))
(constant (in-isdir         "IN_ISDIR"))
(constant (in-oneshot       "IN_ONESHOT"))
(constant (in-all-events    "IN_ALL_EVENTS"))

(define "RAW_EVENT_SIZE" "sizeof(struct inotify_event)")
(constant (raw-event-size   "RAW_EVENT_SIZE"))
