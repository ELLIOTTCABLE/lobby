##
# Simply the "root class" of this library, to expediate things.
class LobbyConstructor
  Version = 1
  
  ##
  # This method is responsible for constructing the "lobby environment."
  def self.construct!
    lobby = ::Kernel::lobby
    def lobby.inspect
      "lobby"
    end
    
    root_object_eigenclass = class<<lobby;self;end
    ::Kernel.send :const_set, "Lobby", root_object_eigenclass
    def root_object_eigenclass.inspect
      "Lobby"
    end
  end
end

module ::Kernel
  
  ##
  # This method returns the global "root object," also known as "main."
  def lobby
    ::Kernel.eval('self', ::TOPLEVEL_BINDING)
  end
  
end
