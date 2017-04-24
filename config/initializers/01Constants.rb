SITE_TITLE = "Lead and Galvanized Pipe Inspection"
FIRM_TITLE = "Residential Lead Pipe Testing, LLC"

SITE_HOSTS = {
  "development" => "localhost:3000",
  "production" =>  "www.leadpipetesting.com"
}

SITE_HOST = SITE_HOSTS[Rails.env]
