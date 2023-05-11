namespace :db do
    desc "Import comments from CSV file"
    task import_comments: :environment do
      require 'csv'
  
      csv_text = File.read(Rails.root.join('db', 'comment.csv'))
      csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
      csv.each do |row|
        comment = CommentModel.new
        comment.id = row['id']
        comment.gossip_id = row['gossip_id']
        comment.content = row['content']
        comment.save!
        puts "#{comment.id}, #{comment.gossip_id} saved"
      end
      puts "There are now #{CommentModel.count} rows in the comments table"
    end
  end
  