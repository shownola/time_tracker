namespace :notification do
  desc "Sends SMS notification to employees asking them to log any overtime"
  task sms: :environment do
   # if Time.now.sunday?
      employees = Employee.all
     
      notification_message = "Please log into the overtime management dashboard to log
              your time: https://shownola-time-tracker.herokuapp.com"
      
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
     # end
      
    end
   
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
