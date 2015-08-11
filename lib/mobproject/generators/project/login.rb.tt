require_relative '../../support/mobile/platform/platforms'

class Login
  extend Mobile::Platform
  extend PageObject::Accessors

  def initialize(selenium_driver)
    @driver = selenium_driver
  end

  ios do
    text_field(:username, name: 'username')
    text_field(:password, name: 'password')
    button(:login, name: 'login')
  end

  android do
    text_field(:username, id: 'android:id/username')
    text_field(:password, id: 'android:id/password')
    button(:login, id: 'android:id/login')
  end

  ios do
    #place your ios specific methods within this block
  end

  android do
    #place your android specific methods within this block
  end

  #place methods that apply to both platforms outside the blocks
end
