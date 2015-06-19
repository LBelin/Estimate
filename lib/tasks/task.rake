desc "Delete"
task :delete => :environment do
  Feature.delete_all
  FogBugzCase.delete_all
end
