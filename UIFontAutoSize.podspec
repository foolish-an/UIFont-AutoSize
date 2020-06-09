Pod::Spec.new do |s|
    s.name         = 'UIFontAutoSize'
    s.version      = '1.0.0'
    s.summary      = 'OC Adapt to different phone font sizes'
    s.homepage     = 'https://github.com/foolish-an'
    s.license      = {:type => 'MIT', :file => 'LICENSE'}
    s.authors      = {'foolish-an' => '441468953@qq.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/foolish-an/UIFont-AutoSize', :tag => s.version}
    s.source_files = 'UIFontAutoSize/*.{h,m}'
    s.requires_arc = true
end