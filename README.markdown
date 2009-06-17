Lobby
=====
Welcome to Ruby. Pull up a chair:
    
    require 'lobby'
    LobbyConstructor::construct!
    
Tell us about yourself!
    
    def i_am
      "me"
    end
    
    class Somewhere
      class Deep
        class In
          class A
            class GodForsaken
              class Wasteland
                
                puts Kernel::lobby.instance_eval { i_am }
                
              end
            end
          end
        end
      end
    end
    
From where do you hail?
    
    class Somewhere
      class Deep
        class In
          class A
            class GodForsaken
              class Wasteland
                
                class ::Lobby
                  def who_knows
                    puts "somewere deep..."
                  end
                end
                
              end
            end
          end
        end
      end
    end
    
    who_knows()
    
Getting
-------
The authoritative source for this project is available at
<http://github.com/elliottcable/lobby>. You can clone your own copy with
the following command:

    git clone git://github.com/elliottcable/lobby.git

If you want to make changes to the codebase, you need to fork your own GitHub
repository for said changes. Send a pullrequest to [elliottcable](http://github.com/elliottcable "elliottcable on GitHub")
when you've got something ready for the master branch that you think should be
merged.

Requirements
------------
To use Lobby, you need... nothing!

Contributing
------------
To develop and contribute to Lobby, you need...

- `gem install rake`
- `gem install elliottcable-echoe`
- `gem install rspec`
- `gem install relevance-rcov`
- `gem install lsegal-yard`
