cask "nextmeeting" do
  version "1.3.0-beta.2"
  sha256 "f9a185dcf0949459f43b13fdf533e43d2d1ffed291cbe95706c5468170044310"

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
