module ProoflinkConnect
  class ShareButton
    attr_accessor :message
    
    def initialize(message = nil)
      @message = message
    end
    
    def to_html
      "<iframe src='#{ProoflinkConnect.config.protocol}://#{[ProoflinkConnect.config.subdomain, ProoflinkConnect.config.provider_endpoint].compact.join(".")}/shares/button?message=#{@message}' style='width: 100px; height: 100px; border: 0;display: block' frameborder='0'></iframe>".html_safe
    end
  end
end