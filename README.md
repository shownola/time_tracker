# Time Tracker application

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text_area
- x user -> Devise
- x AdminUser -> STI
- AuditLog
- 
##Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input -> Integrate with Heroku scheduler
- x Administrative admin dashboard
- x Block non admin and guest users 
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- 
##UI
- x Bootstrap -> formattting
- x Icons from Glyicons in bootstrap
- x Update the styles for forms
- 
## TODOS:

## NOTES:
- Goal of audit log
- keep track of whether or not an employee had overtime
- Dependencies:
- User
- Atributes: 
- Status:integer - (enum) pending, complete
- Start_Date:date -> default previous Monday
- Date_verified
 

