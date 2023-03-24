puts "Admin User >>>"

require 'securerandom'

email_admin = "admin@admin.com"
password_admin = "12345678" if Rails.env == "development"
password_admin = SecureRandom.alphanumeric(10) if Rails.env == "production"

if !User.find_by(email: email_admin)
    if User.create(
            email: email_admin,
            name: "ADMIN",
            cpf: "000.000.000-00",
            active: true,
            password:  password_admin,
            password_confirmation: password_admin
            #confirmed_at: DateTime.now
        )
        puts ">>> Usuário ADMIN criado"
        puts ">>> E-mail: " + email_admin
        puts ">>> Password: " + password_admin
    else
        puts ">>> ERROR: Não foi possível criar usuário ADMIN!"
        puts ">>> E-mail: " + email_admin
    end
else
    puts ">>> Usuário ADMIN JÁ EXISTE!"
    puts ">>> E-mail: " + email_admin
end
