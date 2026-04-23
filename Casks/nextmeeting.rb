cask "nextmeeting" do
  version "1.3.1"
  sha256 "20d4bca8902cea025a26002b7c113fdce8055c286e1f24330e1750f9f4507180"

  url "https://github.com/dytsou/NextMeeting/releases/download/v#{version}/NextMeeting.zip"
  name "NextMeeting"
  desc "Menu bar app that shows your next calendar meeting"
  homepage "https://github.com/dytsou/NextMeeting"

  depends_on macos: ">= :ventura"

  app "NextMeeting.app"

  livecheck do
    url "https://github.com/dytsou/NextMeeting/releases/latest"
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Preferences/com.nextmeeting.app.plist",
  ]
end
