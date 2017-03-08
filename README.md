# What is the purpose of this module?

If you are affected by [PDB-3323](https://tickets.puppetlabs.com/browse/PDB-3323) then this module
creates an index that provides a short-term workaround to the issue.

The advantage of this module over creating the index manually is that this module
ensures the index is dropped when you upgrade to a version of PE that addresses
the issues directly.

You can safely classify this module to your pe-postgresql node and never think
about it again.  Although, someday you may prefer to remove the module altogether.
