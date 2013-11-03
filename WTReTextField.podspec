Pod::Spec.new do |s|
	s.name = 'WTReTextField'
	s.summary = 'Subclass of UITextField with RegEx input validation and formatting as you type'
	s.homepage = 'https://github.com/pieceofsummer/WTReTextField'
	s.version  = '0.0.1'
  	s.license  = 'MIT'
	s.author = {
		'Alexey Skalozub' => 'pieceofsummer@gmail.com'
	}
	s.source = {
		:git => 'https://github.com/pieceofsummer/WTReTextField.git',
		:branch => 'master'
	}
	s.platform = :ios, '5.0'
	s.source_files = 'WTReTextField/*.{h,m}'
	s.requires_arc = true
end
