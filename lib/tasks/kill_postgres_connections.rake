task :kill_postgres_connections => :environment do
  if Rails.env == 'development'
    db_name = "rm_dev"
  end
  sh = <<EOF
ps xa \
  | grep postgres: \
  | grep #{db_name} \
  | grep -v grep \
  | awk '{print $1}' \
  | xargs kill
EOF
  puts `#{sh}`
end

task "db:drop" => :kill_postgres_connections
