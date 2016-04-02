Pod::Spec.new do |spec|
  spec.name = "OverlayAlert"
  spec.version = "0.0.3"
  spec.summary = "Sample framework from blog post, not for real world use."
  spec.homepage = "https://github.com/rodrigoalvesvieira/OverlayAlert"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Rodrigo Alves Vieira" => 'rodrigoalvesvieira@me.com' }
  spec.social_media_url = "http://github.com/rodrigoalvesvieira"

  spec.platform = :ios, "9.1"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/rodrigoalvesvieira/OverlayAlert.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "OverlayAlert/**/*.{h,swift}"
end
