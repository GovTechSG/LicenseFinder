require 'pathname'
require 'yaml'
require 'erb'

module LicenseFinder
  ROOT_PATH = Pathname.new(__FILE__).dirname
  BIN_PATH = ROOT_PATH.join("../bin")

  autoload :Logger,               'license_finder/logger'
  autoload :CLI,                  'license_finder/cli'
  autoload :Decisions,            'license_finder/decisions'
  autoload :PackageManager,       'license_finder/package_manager'
  autoload :DecisionApplier,      'license_finder/decision_applier'
  autoload :PackageSaver,         'license_finder/package_saver'
  autoload :License,              'license_finder/license'
  autoload :PossibleLicenseFile,  'license_finder/possible_license_file'
  autoload :PossibleLicenseFiles, 'license_finder/possible_license_files'
  autoload :Configuration,        'license_finder/configuration'
  autoload :Platform,             'license_finder/platform'

  autoload :Package,              'license_finder/package'
  autoload :Bower,                'license_finder/package_managers/bower'
  autoload :Bundler,              'license_finder/package_managers/bundler'
  autoload :NPM,                  'license_finder/package_managers/npm'
  autoload :Pip,                  'license_finder/package_managers/pip'
  autoload :Maven,                'license_finder/package_managers/maven'
  autoload :CocoaPods,            'license_finder/package_managers/cocoa_pods'
  autoload :Gradle,               'license_finder/package_managers/gradle'
  autoload :ManualPackage,        'license_finder/package_managers/manual_package'
  autoload :BowerPackage,         'license_finder/package_managers/bower_package'
  autoload :BundlerPackage,       'license_finder/package_managers/bundler_package'
  autoload :PipPackage,           'license_finder/package_managers/pip_package'
  autoload :NpmPackage,           'license_finder/package_managers/npm_package'
  autoload :MavenPackage,         'license_finder/package_managers/maven_package'
  autoload :GradlePackage,        'license_finder/package_managers/gradle_package'
  autoload :CocoaPodsPackage,     'license_finder/package_managers/cocoa_pods_package'

  autoload :DependencyReport,     'license_finder/reports/dependency_report'
  autoload :FormattedReport,      'license_finder/reports/formatted_report'
  autoload :HtmlReport,           'license_finder/reports/html_report'
  autoload :MarkdownReport,       'license_finder/reports/markdown_report'
  autoload :TextReport,           'license_finder/reports/text_report'
  autoload :DetailedTextReport,   'license_finder/reports/detailed_text_report'

  def self.config
    @config ||= Configuration.ensure_default
  end
end
