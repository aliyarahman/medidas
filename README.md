==================================
Medidas 1.0
==================================

Medidas ("Measures") is an app in English and Spanish that allows low-wage workers to record their hours work as a measure to fight wage theft.

This app is developed alongside the organizers at the Cincinnati Interfaith Workers Center for Latino, Immigrant, African American, and other Low Wage Workers.


Development
-----------
Developed in Ruby (2.1.2) on Rails (4.1.1)



Models
------
- Users stores app user info. Users may have one or two first and last names/apellidos
- HoursEntries stores evidence of hours worked, timestamped.

A one-to-many relationship exists in the database between users and hours_entries.
