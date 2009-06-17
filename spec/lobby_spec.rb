($:.unshift File.expand_path(File.join( File.dirname(__FILE__), '..', 'lib' ))).uniq!
require 'lobby'

describe LobbyConstructor do
  describe '::construct' do
    before :all do
      LobbyConstructor::construct
    end
    
    it 'should rename the root object to "lobby"' do
      ::Kernel.eval('self', ::TOPLEVEL_BINDING).inspect.should == "lobby"
    end
    
    it 'should provide a singleton class named "Lobby"' do
      class<<::Kernel.eval('self', ::TOPLEVEL_BINDING);self;end.inspect.should == "Lobby"
    end
    
    it 'should provide the "Lobby" singleton class under the Lobby constant' do
      class<<::Kernel.eval('self', ::TOPLEVEL_BINDING);self;end.should == 
        ::Kernel.eval('Lobby', ::TOPLEVEL_BINDING)
    end
    
    it 'should not allow instantiation of Lobby' do
      lambda {
        class<<::Kernel.eval('Lobby', ::TOPLEVEL_BINDING);self;end.new
      }.should raise_error(TypeError)
    end
    
    it 'should allow the definition of methods on Lobby' do
      ::Kernel.eval(<<-END, ::TOPLEVEL_BINDING)
        class Lobby
          def foo
            return "foo"
          end
        end
      END
      
      ::Kernel.eval("foo()", ::TOPLEVEL_BINDING).should == "foo"
    end
  end
end

describe 'Kernel#lobby' do
  it 'should be made available' do
    lambda { ::Kernel.eval('self', ::TOPLEVEL_BINDING).instance_eval {
      lobby
    } }.should_not raise_error
  end
  
  it 'should make the main object available from anywhere' do
    ::Kernel.eval('self', ::TOPLEVEL_BINDING).instance_eval {
      lobby
    }.should == ::Kernel.eval('self', ::TOPLEVEL_BINDING)
  end
end
