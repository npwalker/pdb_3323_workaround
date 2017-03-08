class pdb_3323_workaround {

  if $::pe_server_version =~ /^2016.5./ {
    pdb_3323_workaround::create_index { 'pdb_3323_idx_reports_hash' :
      db          => 'pe-puppetdb',
      index_name  => 'pdb_3323_idx_reports_hash',
      table_name  => 'reports',
      column_name => 'hash',
    }
  }

  if versioncmp( '2017.1.0', $::pe_server_version ) <= 0 {
    pdb_3323_workaround::drop_index { 'pdb_3323_idx_reports_hash' :
      db          => 'pe-puppetdb',
      index_name  => 'pdb_3323_idx_reports_hash',
      table_name  => 'reports',
      column_name => 'hash',
    }
  }

}
