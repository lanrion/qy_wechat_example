# 应用套件的回调通知处理
# http://qydev.weixin.qq.com/wiki/index.php?title=%E7%AC%AC%E4%B8%89%E6%96%B9%E5%9B%9E%E8%B0%83%E5%8D%8F%E8%AE%AE
class QyServicesController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :receive_ticket

  # TODO: 需要创建表: suites
  def receive_ticket
    param_xml = request.body.read
    aes_key   = "NJgquXf6vnYlGpD5APBqlndAq7Nx8fToiEz5Wbaka47"
    aes_key   = Base64.decode64("#{aes_key}=")
    hash      = MultiXml.parse(param_xml)['xml']
    @body_xml = OpenStruct.new(hash)
    suite_id  = "tj86cd0f5b8f7ce20d"
    content   = QyWechat::Prpcrypt.decrypt(aes_key, @body_xml.Encrypt, suite_id)[0]
    hash      = MultiXml.parse(content)["xml"]
    Rails.logger.info hash
    render text: "success"
    # {"SuiteId"=>"tj86cd0f5b8f7ce20d",
    #  "SuiteTicket"=>"Pb5M0PEQFZSNondlK1K_atu2EoobY9piMcQCdE3URiCG3aTwX5WBTQaSsqCzaD-0",
    #  "InfoType"=>"suite_ticket",
    #  "TimeStamp"=>"1426988061"}
  end
end
