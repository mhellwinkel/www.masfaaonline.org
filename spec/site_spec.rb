require 'html-proofer'

describe 'Web site' do

  it 'outputs valid HTML' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :check_html => true,
        :checks_to_ignore => %w(ScriptCheck LinkCheck ImageCheck)
      }
    ).run
    expect(status).to eql(true)
  end

  it 'is a well-formed site' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :disable_external => true,
        :assume_extension => true,
        :check_favicon => true,
        :url_ignore => [/blob/]
      }
    ).run
    expect(status).to eql(true)
  end

  it 'has valid external links' do
    status = HTMLProofer.check_directory(
      "_site",
      {
        :external_only => true,
        :cache => { :timeframe => '1h' },
        :file_ignore => [ "_site/info.html" ],
        :url_ignore => [
          /mappingyourfuture.org/,
          /mygreatlakes.org/
        ]
      }
    ).run
    expect(status).to eql(true)
  end

end
