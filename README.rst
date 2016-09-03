*********************
docker-bind-cacheonly
*********************

Introduction
============

Dockerfile to create a resolving and caching nameserver which emulates the same functionality as
the ``caching-nameserver`` package available on Red Hat style systems. 

A detailed explanation of a "Caching Name Server" can be found in `chapter 4`_ of the book `Pro DNS and BIND`_  
while the detailed configuration is described in `chapter 6`_ of the book.

This Dockerfile uses the `Alpine Linux`_ image as base to keep the resulting image size minimal.

.. _`chapter 4`: http://www.zytrax.com/books/dns/ch4/index.html#caching
.. _`chapter 6`: http://www.zytrax.com/books/dns/ch6/#caching on the same site
.. _`Alpine Linux`: https://hub.docker.com/_/alpine/

Installation
============

Either pull the ``mjuenema/docker-bind-cacheonly`` image from Docker Hub, 

  docker pull mjuenema/docker-bind-cacheonly
  
or build the image yourself.

  docker build -t mjuenema/docker-bind-cacheonly github.com/mjuenema/docker-bind-cacheonly

Usage
=====

  docker run --name bind --publish 53:53/udp mjuenema/docker-bind-cacheonly

There are a couple of things to be aware of:

* Your host's firewall configuration may prevent DNS traffic between the Docker container
  and external DNS servers.
* Another DNS server may already be running on the host. In this case the NAT rule Docker
  tries to add to the firewall configuration will be rejected.
  
See also
========

* `Deploying a DNS Server using Docker`_.
* `Pro DNS and BIND`_ book.

.. _`Deploying a DNS Server using Docker`: https://www.damagehead.com/blog/2015/04/28/deploying-a-dns-server-using-docker
.. _`Pro DNS and BIND`: http://www.netwidget.net/books/apress/dns/

Markus Juenemann, 03-Sep-2016
