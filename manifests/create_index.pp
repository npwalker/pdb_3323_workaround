define pdb_3323_workaround::create_index (
  String $db,
  String $index_name,
  String $table_name,
  String $column_name,
) {
  postgresql_psql { "Create index ${index_name}" :
      command    => "CREATE INDEX ${index_name} ON ${table_name}(${column_name})",
      unless     => "SELECT 1 FROM pg_class c JOIN pg_namespace n ON n.oid = c.relnamespace WHERE c.relname = '${index_name}'",
      db         => $db,
      psql_user  => 'pe-postgres',
      psql_group => 'pe-postgres',
      psql_path  => '/opt/puppetlabs/server/bin/psql',
  }
}
