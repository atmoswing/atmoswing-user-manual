.. _versioning-migration:

Versioning scheme and migration
===============================

Versioning scheme
-----------------

AtmoSwing follows a versioning structure with version numbers as MAJOR.MINOR.PATCH. The rules are the following:

1. MAJOR version: major changes in the overall structure or addition of a new tool,
2. MINOR version: addition of functionality that might be backwards-incompatible,
3. PATCH version: backwards-compatible bug fixes and small improvements.

Support Policy
--------------

When a new version is published, the development of previous versions is not continued, except for LTS (Long Term Support) releases, where bug fixes are provided for 2 years.

=======  ==========  =============== 
Version  Release     Bug Fixes Until
=======  ==========  ===============
2.0      19.11.2018  23.05.2019
2.1 LTS  23.05.2019  23.05.2021
=======  ==========  ===============


Upgrade Guide
-------------

v2.0 to v2.1
~~~~~~~~~~~~

**Parameters files**

* Changes to the reanalyses ``dataset_id``. Check the new values under :ref:`the reanalyses page<reanalyses>`.

