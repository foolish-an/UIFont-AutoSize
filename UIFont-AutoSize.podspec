Pod::Spec.new do |s|
    s.name         = 'UIFont-AutoSize'
    s.version      = '1.0.0'
    s.summary      = 'OC Adapt to different phone font sizes'
    s.homepage     = 'https://github.com/foolish-an'
    s.license      = {:type => 'MIT', :file => 'LICENSE'}
    s.authors      = {'foolish-an' => '441468953@qq.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/foolish-an/UIFont+AutoSize.git', :tag => s.version}
    s.source_files = 'UIFont+AutoSize/*.{h,m}'
    s.requires_arc = true
end