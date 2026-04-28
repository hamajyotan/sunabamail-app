# frozen_string_literal: true

class Sunabamail::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)

  def copy_files
    template "db/sunabamail_schema.rb"
  end

  def configure_adapter_and_database
    pathname = Pathname(destination_root).join("config/environments/development.rb")

    gsub_file pathname, /\n\s*config\.sunabamail\.connects_to\s+=.*\n/, "\n", verbose: false
    gsub_file pathname, /\n\s*config\.sunabamail\.use_turbo\s+=.*\n/, "\n", verbose: false
    gsub_file pathname, /(# )?config\.action_mailer\.delivery_method\s+=.*\n/,
      "config.action_mailer.delivery_method = :sunabamail\n" +
      "  config.sunabamail.connects_to = { database: { writing: :sunabamail } }\n" +
      "  config.sunabamail.use_turbo = false\n"
  end
end
