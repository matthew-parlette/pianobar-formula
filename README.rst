================
pianobar-formula
================

A saltstack formula that is empty. It has dummy content to help with a quick
start on a new formula.

.. note::

    See the official pianobar repository at
    <https://github.com/PromyLOPh/pianobar>`_.

Available states
================

.. contents::
    :local:

``pianobar``
------------

Installs the pianobar package, config file, and fifo file.

``pianobar.install``
--------------------

Install the pianobar package.

``pianobar.config``
-------------------

Setup the pianobar config from pillar data.

``pianobar.fifo``
-----------------

Create the pianobar fifo file for remote control.
