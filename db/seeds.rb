# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

xavier = User.create!(first_name: "Xavier", last_name: "Carty", email: "xaviercarty@gmail.com", title: "Fullstack Developer", linkedin: "https://www.linkedin.com/in/xaviercarty/", image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fmiro.medium.com%2Ffit%2Fc%2F336%2F336%2F0*7xHrCFDT1aLO_GGX&imgrefurl=https%3A%2F%2Fmedium.com%2F%40xaviercarty&tbnid=JwuKpXVpuEZhgM&vet=12ahUKEwjt5vXouOjpAhXUPt8KHdoECnMQMygAegUIARCTAQ..i&docid=8doJhQZ2a1eUfM&w=336&h=336&q=xavier%20carty&ved=2ahUKEwjt5vXouOjpAhXUPt8KHdoECnMQMygAegUIARCTAQ", portfolio: "N/A", github: "https://github.com/XavierCarty95/", resume: "pdf", skills: " Ruby, Rails, SQL, Postgres , Javscript, React", phone_number: "914-310-234" , password: "Save")


facebook = Company.create!(name: "Facebook", email: "facebook@gmail.com" , website: "https://www.facebook.com", about: "Facebook, Inc. is an American social media and technology company based in Menlo Park, California. It was founded by Mark Zuckerberg, along with his fellow roommates and students at Harvard College")
twitter = Company.create!(name: "Twitter", email: "twitter@gmail.com" , website: "https://www.twitter.com", about: "Twitter was created in March 2006 by Jack Dorsey, Noah Glass, Biz Stone, and Evan Williams, launched in July of that year. The service rapidly gained worldwide popularity. In 2012, more than 100 million users posted 340 million tweets a day,[18] and the service handled an average of 1.6 billion search queries per day.")
instagram = Company.create!(name: "Instagram", email: "instagram@gmail.com", website:"https://www.twitter.com", about: "Instagram (sometimes abbreviated as IG[10]) is an American photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger, and launched in October 2010 on iOS. A version for Android devices was released in April 2012, followed by a feature-limited website interface in November 2012, a Fire OS app on June 15, 2014 and an app for Windows 10 tablets and computers in October 2016")

facebook_job = Job.create!(name: "Facebook ", role:"Front-End Developer" , description:"hands on front end developers to help accelerate our growing Professional Services business. This is an excellent opportunity to join Amazons world class technical teams, working with some of the best and brightest engineers while also developing your skills and furthering your career within one of the most innovative and progressive technology companies.
", work_type: "Full-Time", location: "Springfield , Mass" , company_id: 1 )
twitter_job = Job.create!(name: "Twitter ", role:"Database Developer" , description:"We are looking for a NodeJS developer with kick-ass skills and burning passion for writing beautiful code and building a backend system to support awesome eCommerce products.You will work in a team, responsible of designing and developing our backend applications and services.​

", work_type: "Part-Time", location: "New York, New York" , company_id: 2)
instagram_job = Job.create!(name: "Instagram ", role:"Analytics and Statistics" , description:"Are you looking to solve exciting Fraud challenges in the cloud? Do you want to work on a Cloud business that is growing multiple fold annually? If so, we want to talk to you! We are seeking a talented Data Scientist to help us evolve our processes and to improve customer experience across the globe.
", work_type: "Remote", location: "Bronx,NY" , company_id: 3 )

facebook_apply = Application.create!(job_id: 1, user_id: 1, name: "Facebook")