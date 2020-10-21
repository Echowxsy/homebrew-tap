cask "hopper-disassembler" do
  version '4.5.29'
  sha256 'fec9c3fb5931a0a2c72c0c7a9f50ab571fd4073467590ffa87aeec9d4a816f0f'

  url "https://d2ap6ypl1xbe4k.cloudfront.net/Hopper-#{version}-demo.dmg"
  appcast "https://www.hopperapp.com/rss/changelog.php"
  name 'Hopper Disassembler'
  desc 'The reverse engineering tool that lets you disassemble, decompile and debug your applications'
  homepage 'https://www.hopperapp.com/'

  app 'Hopper Disassembler v4.app'
end
