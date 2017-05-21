require 'json'

def statuscheck(serverid)
    request = Net::HTTP.get(URI.parse('http://www.tiffit.net/RealmInfo/api/servers'))
    status = JSON.parse(request)[serverid]
    if status == "True";
        status = "up"
    else;
        status = "down"
    end
    event << "Hi, #{event.user.name}!"
    event << ("#{serverid} is currently #{status}.")
    event << "#####"
    event << "[c/o walmart-givenchii]"
end
