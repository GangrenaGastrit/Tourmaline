object ServerContainer1: TServerContainer1
  OldCreateOrder = False
  DisplayName = 'Tourmaline'
  OnStart = ServiceStart
  Height = 271
  Width = 415
  object DSServer1: TDSServer
    AutoStart = True
    HideDSAdmin = False
    Left = 96
    Top = 11
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Port = 6589
    PoolSize = 0
    Server = DSServer1
    BufferKBSize = 32
    Filters = <>
    KeepAliveEnablement = kaDefault
    Left = 96
    Top = 73
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    LifeCycle = 'Session'
    Left = 200
    Top = 11
  end
end
