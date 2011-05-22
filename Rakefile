#require 'bundler'
#Bundler.setup
#Bundler::GemHelper.install_tasks

require 'active_record'
require 'yaml'


task :default => [:gem]
#[:clean, :test, :gem]

task :clean do
 # rm_rf "pkg"
end

task :test do
  Spec::Rake::SpecTask.new('spec') do |t|
    t.spec_files = FileList['spec/**/*.rb']
  end
end

task :gem => :build

desc "Migrate the database through scripts in db/migrate. Target specific version with VERSION=x"
task :migrate => :environment do
  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
end

task :environment do
  ActiveRecord::Base.establish_connection(YAML::load(File.open('config/database.yml'))['development'])
#  ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'a'))
end

