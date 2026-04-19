cask "nextmeeting" do
  version "1.2.3"
  sha256 "a2e92676537e256d471a3e87ab9aa98a9e5f568a4fb9ffbfe7c33aa9f2cccfe9"

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
