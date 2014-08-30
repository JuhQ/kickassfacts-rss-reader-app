
# For an explanation of the steroids.config properties, see the guide at
# http://guides.appgyver.com/steroids/guides/project_configuration/config-application-coffee/

steroids.config.name = "Kickass Facts RSS"

# ## Start Location
steroids.config.location = "http://localhost/views/home/index.html"



steroids.config.preloads = [
  {
    id: "contentView"
    location: "http://localhost/views/content/index.html"
  }
]



# ## Navigation Bar
steroids.config.navigationBar.tintColor = "#eeeeee"
steroids.config.navigationBar.titleColor = "#444444"
steroids.config.navigationBar.buttonTintColor = ""

steroids.config.navigationBar.buttonTintColor = "#eeeeee"
steroids.config.navigationBar.buttonTitleColor = "#444444"

# ## Android Loading Screen
steroids.config.loadingScreen.tintColor = "#262626"

# ## iOS Status Bar
steroids.config.statusBar.enabled = false
steroids.config.statusBar.style = "Light"
