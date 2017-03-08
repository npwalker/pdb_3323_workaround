# How to use

Classify the node running PostgreSQL in your PE deployment with the
pdb_3323_workaround class.

The next time the puppet agent runs on that node you should see the following change.

~~~
Notice: /Stage[main]/Pdb_3323_workaround/Pdb_3323_workaround::Create_index[pdb_3323_idx_reports_hash]/Pdb_3323_workaround_postgresql_psql[Create index pdb_3323_idx_reports_hash]/command: command changed 'notrun' to 'CREATE INDEX pdb_3323_idx_reports_hash ON reports(hash)'
~~~

# What is the purpose of this module?

If you are affected by [PDB-3323](https://tickets.puppetlabs.com/browse/PDB-3323) then this module
creates an index that provides a short-term workaround to the issue.

The advantage of this module over creating the index manually is that this module
ensures the index is dropped when you upgrade to a version of PE that addresses
the issues directly.

You can safely classify this module to your pe-postgresql node and never think
about it again.  Although, someday you may prefer to remove the module altogether.
