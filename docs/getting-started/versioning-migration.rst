.. _versioning-migration:

Versioning scheme and migration
===============================

Versioning scheme
-----------------

AtmoSwing follows a versioning structure with version numbers as MAJOR.MINOR.PATCH. The rules are the following:

1. MAJOR version: significant changes in the overall structure or addition of a new tool,
2. MINOR version: addition of functionality that might be backward-incompatible,
3. PATCH version: backward-compatible bug fixes and small improvements.

Support Policy
--------------

When a new version is published, the development of previous versions is not continued, except for LTS (Long Term Support) releases, where bug fixes are provided for a longer period.

=======  ==========  =============== 
Version  Release     Bug Fixes Until
=======  ==========  ===============
2.0      19.11.2018  01.07.2019
2.1      23.05.2019  01.07.2023
3.0 LTS  17.04.2023  01.07.2027
=======  ==========  ===============


Upgrade Guide
-------------

v2.1 to v3.0
~~~~~~~~~~~~

**Parameters files**

* Changes to the predictors ``dataset_id`` for the Forecaster. Check the new values under the :ref:`Forecaster data page<data-forecaster>`.

**Predictand DB**

* The predictand DB has been updated to include the projection information. The DB must be generated again with the new version of the software.

**Forecaster batch file**

* The extension of the batch file has changed to ``.xml``.

v2.0 to v2.1
~~~~~~~~~~~~

**Parameters files**

* Changes to the reanalyses ``dataset_id``. Check the new values under the :ref:`reanalyses page<reanalyses>`.

