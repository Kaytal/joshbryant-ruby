ActionMailer::Base.smtp_settings = {
  address: "smtp.mandrillapp.com",
  port: 587,
  enable_startttls_auto: true,
  user_name: "kaytal@gmail.com",
  password: "6lJxV3HJRJ_596aEU2fJVg",
  authentication: "login"
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"
