cask "nextmeeting" do
  version "1.3.2"
  sha256 "75efd0435f9a4586d545ab5d215b57fc606962fa66115c216ba03e5f1ffd9b30"

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
