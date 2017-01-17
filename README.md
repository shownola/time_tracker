# Time Tracker application

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text_area
- x user -> Devise
- x AdminUser -> STI
- x AuditLog
- 
##Features:
- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> Integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users 
- x Email summary to managers for approval
- x Needs to be documented if employee did not log overtime
- x Create audit log for each text message
- x Update end_date when confirmed
- x Update audit log status when an overtime rejected
- x Home icon
- x Update button on employee homepage for mobile responsive
- x Update button to include time span
- x Update button sort order on employee homepage
- Implement Honeybadger error reporting
- Implement new relic for keeping the site alive/shorter load times for heroku
- Utilizing Github as a Project Management Tool
- 
##UI
- x Bootstrap -> formattting
- x Icons from Glyphicons in bootstrap
- x Update the styles for forms
- 
## TODOS:
- Create new attribute for posts that will have all the hours for a users work day
- Password field fix for User creation
- Refactor admin user call
- Mobile friendly
- last 4 of SSN
- Reporting Engine
- Create staging server
- Add company to employee
- Manager/Employee Relation
- Upgrad to Rails 5

## NOTES:


