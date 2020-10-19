# Load everything in the local folder
I18n.enforce_available_locales = false
I18n.load_path.concat(Dir[File.join(File.dirname(__FILE__), "locale", "*.yml")])
Money.locale_backend = :i18n
Money.rounding_mode = BigDecimal::ROUND_HALF_EVEN