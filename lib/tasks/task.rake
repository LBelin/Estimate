require 'csv'

desc "Import test data from csv file"
task :csv => [:environment] do

  csv_text = File.read('db/Feature_Tracker_Sample.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    BigTimeEntry.create!(row.to_hash)
  end

end
