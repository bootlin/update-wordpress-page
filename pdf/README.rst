================
pdf-link-checker
================
**pdf-link-checker** is a simple tool that parses a PDF document and checks for
broken hyperlinks. This done by sending a simple HTTP request to each link
found in a given document.

Getting it running
==================

::

    pip install pdf-link-checker
    pdf-link-checker my-awesome-slides.pdf

Options
=======

* --max-threads

  Specifies the maximum number of allowed threads (default: 100).

  To speedup the run, pdf-linkchecker will launch several threads
  in order to check several links in parallel.
  This option allows to set a limit to the number of threads.

* --max-requests-per-host

  Specifies the maximum number of allowed requests per host.

  Some URLs may belong to the same host, and since pdf-link-checker
  can check many URLs at the same time, we may want to set a limit
  to the number of requests per host.
  Otherwise, some hosts may confuse the check with a DoS attack.

TODO
====

*(...because there's no active project without a TODO list!)*

* Fix: Make it understand mailto links (such as mailto:foo@domain.com').

* Fix: some documents are failing on doc.initialize().

Version History
===============

1.0
  * Initial release
