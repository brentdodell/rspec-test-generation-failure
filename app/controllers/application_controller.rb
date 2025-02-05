class ApplicationController < ActionController::Base
  include Authentication

  # Only allow modern browsers supporting features used by TailwindCSS 4.
  #
  # Safari, Chrome, and Firefox values came from https://tailwindcss.com/docs/compatibility
  #
  # I left Opera with the current "modern" default defined by Rails. Opera 104 seems to be
  # based on Chromium 118, and was released October 2023, so I think we're safe.
  # https://en.wikipedia.org/wiki/History_of_the_Opera_web_browser
  allow_browser versions: { safari: 16.4, chrome: 111, firefox: 128, opera: 104, ie: false }
end
