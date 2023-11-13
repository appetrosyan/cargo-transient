;;; package --- Summary -*- lexical-binding: t; -*-
(define-package "cargo-transient" "0.0" "A transient porcelain over `cargo'" :keywords '("transient" "rust"))
;;; Commentary:
;; This package defines the `cargo' interface to transient, that can
;; be thought of as a `magit'-like porcelain to `cargo' in Rust.  This
;; is assumed to be used in conjunction with the `rust-mode' and/or
;; `rustic-mode' packages.


;;; Code:
(require 'transient)

(transient-define-prefix tsc-hello ()
  "Prefix that is minimal and uses an anonymous command suffix."
  [("c" "check" "call suffix"
    (lambda ()
      (interactive)
      (message "Called a suffix")))])


(provide 'cargo-transient)
;;; cargo-transient.el ends here.
