namespace :notification do
  desc "Sends SMS notification to employees asking them to log any overtime"
  task sms: :environment do
    if Time.now.sunday?
      
    end
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
  

  desc "Sends email notification to managers (admin users) each day to inform of pending overtime requets"
  task manager_email: :environment do
   #1. Iterate over the list of pending overtime requests
   #2. Check to see if there are any requests
   #3. Iterate over the list of admin users/managers
   #4. Send the email to each admin
   submitted_posts = Post.submitted     #1
   admin_users = AdminUser.all          #goes with 3
   
   if submitted_posts.count > 0         #2
    admin_users.each do |admin|         #3
      ManagerMailer.email(admin).deliver_later  #4
    end
   end
   
  end

end
