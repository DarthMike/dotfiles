load "#{Crafter::ROOT}/config/default_scripts.rb"

# All your configuration should happen inside configure block
Crafter.configure do

  # This are projects wide instructions
  add_platform({:platform => :ios, :deployment => 8.0})
  #add_git_ignore
  duplicate_configurations({:store => :release, :profiling => :release})

  # set of options, warnings, static analyser and anything else normal xcode treats as build options
  set_options %w(
    GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED
    GCC_WARN_MISSING_PARENTHESES
    GCC_WARN_ABOUT_RETURN_TYPE
    GCC_WARN_SIGN_COMPARE
    GCC_WARN_CHECK_SWITCH_STATEMENTS
    GCC_WARN_UNUSED_FUNCTION
    GCC_WARN_UNUSED_LABEL
    GCC_WARN_UNUSED_VALUE
    GCC_WARN_UNUSED_VARIABLE
    GCC_WARN_SHADOW
    GCC_WARN_64_TO_32_BIT_CONVERSION
    GCC_WARN_ABOUT_MISSING_FIELD_INITIALIZERS
    GCC_WARN_UNDECLARED_SELECTOR
    GCC_WARN_TYPECHECK_CALLS_TO_PRINTF
    GCC_WARN_UNINITIALIZED_AUTOS
    CLANG_WARN_INT_CONVERSION
    CLANG_WARN_ENUM_CONVERSION
    CLANG_WARN_CONSTANT_CONVERSION
    CLANG_WARN_BOOL_CONVERSION
    CLANG_WARN_EMPTY_BODY
    CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION
    GCC_WARN_64_TO_32_BIT_CONVERSION
    GCC_WARN_ABOUT_MISSING_NEWLINE
    GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS
    CLANG_WANR_IMPLICIT_SIGN_CONVERSION
    CLANG_WARN_DOCUMENTATION_DOCUMENTS

    CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS
    CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES

    CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF
    CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE


    RUN_CLANG_STATIC_ANALYZER
    GCC_TREAT_WARNINGS_AS_ERRORS
  )

  # target specific options, :default is just a name for you, feel free to call it whatever you like
  with :default do
    scripts << {:name => 'icon versioning', :script => Crafter.icon_versioning_script}
  end

  with :swift do
    add_option :swift_networking do
      pods << 'Alamofire'
    end
  end

  # more targets setup
  with :tests do
    add_option :kiwi do
      pods << 'Kiwi'
      scripts << {:name => 'command line unit tests', :script => Crafter.command_line_test_script}
    end

    add_option :quick do
      pods << 'Nimble'
      pods << 'Quick'
    end
  end
end
