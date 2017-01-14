namespace :notification do
  desc "Sends SMS notification to employees asking them to log any overtime"
  task sms: :environment do
    # 1. Schedule to run Sundays at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a message with instructions and a link to log time
    
    # User.all.each do |user|
    # SmsTool.send_sms()
    # end
   
    #number: "5555553323"
    # No spaces or dashes
    # All characters must be a number
    # must have exactly 10 numbers
  end

end
