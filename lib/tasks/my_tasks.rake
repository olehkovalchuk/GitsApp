namespace :my_tasks do
    desc "reset and fill up database"
    task reset: [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ] do
        puts "Reseeding completed."
    end

    desc  "create email list"
    task create_emails: :environment do
        emails_file = File.new("app/assets/emails.csv", "w")
        Author.all.each do |author|
            emails_file.puts "#{author.name} #{author.email}"
        end
        emails_file.close
    end

    desc "delete emeil file"
    task delete_emails: :environment do 
        File.delete("app/assets/emails.csv")
    end

    desc "create report"
    task create_report: :environment do
        report_file = File.new("app/assets/report.html", "w")
        

        report_file.close
    end
    desc "delete report file"
    task delete_report: :environment do 
        File.delete("app/assets/report.html")
    end
end