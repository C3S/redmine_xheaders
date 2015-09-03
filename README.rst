================
Redmine Xheaders
================

A plugin for Redmine to simply add additional X-Headers in outgoing mails, useful for automated filtering and processing by email clients.

developed for `C3S - (Cultural Commons Collecting Society) <https://c3s.cc>`_


Details
=======

Adding/editing issues
---------------------

- Status (e.g. to emphasize a certain status)
- Priority (e.g. to emphasize a certain priority)


Compatibility
=============

This plugin has been tested with
::

    redmine 3.1.0


Installation
============

#. clone this repo into ``/path/to/redmine/plugins/xheaders``

     ``git clone https://github.com/C3S/redmine_xheaders /path/to/redmine/plugins/xheaders``

#. restart redmine

     ``sudo service apache2 restart``


Configuration
=============

Each individual X-Header may be (de-)activated within the plugin settings.


Contributions
=============

- `Alexander Blum <https://github.com/timegrid>`_


License
=======
::

    Redmine plugin for additional x-headers in outgoing mails
    Copyright (C) 2015 Alexander Blum <a.blum@free-reality.net>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.