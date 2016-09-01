*********************
docker-bind-cacheonly
*********************

.. note:: This is work-in-progress!

Introduction
============

Dockerfile to create a resolving and caching nameserver which emulates the same functionality as
the ``caching-nameserver`` package available on Red Hat style systems. 

A detailed explanation of a "Caching Name Server" can be found in `chapter 4`_ of the book `Pro DNS and BIND`_  
while the detailed configuration is described in `chapter 6`_ of the book.

This Dockerfile uses the `Alpine Linux`_ image as base to keep the resulting image size minimal.

.. _`chapter 4`: http://www.zytrax.com/books/dns/ch4/index.html#caching
.. _`chapter 6`: http://www.zytrax.com/books/dns/ch6/#caching on the same site
.. _`Pro DNS and BIND`: http://www.netwidget.net/books/apress/dns/
.. _`Alpine Linux`: https://hub.docker.com/_/alpine/

Installation
============

Either pull the ``mjuenema/docker-bind-cacheonly`` image from Docker Hub, 

  docker pull mjuenema/docker-bind-cacheonly
  
or build the image yourself.

  docker build -t mjuenema/docker-bind-cacheonly github.com/mjuenema/docker-bind-cacheonly

Usage
=====

  docker run --name bind -d --restart=always --publish 53:53/udp mjuenema/docker-bind-cacheonly
  


