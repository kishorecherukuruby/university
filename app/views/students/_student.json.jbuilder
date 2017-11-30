json.extract! student, :id, :fname, :lname, :full_name, :dob, :email, :phno, :gender, :created_at, :updated_at
json.url student_url(student, format: :json)
