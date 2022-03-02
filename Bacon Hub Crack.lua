--//Sex\\--
local urlLink = "https://baconhubwhitelist%.magegaming%.repl%.co/Login%?0x15="
local oldSyn, hook;

--//Crack\\--
hook = hookfunction(game.HttpGet, function(self, Url, ...)
if Url and Url == "https://raw.githubusercontent.com/BaconLords/Why-are-we-here-to-suffer/b846b36b8fd79d44e80375ad764dd5731dcccac8/Dababy" then 
        Url = "https://rawscripts.net/raw/BaconThingHook_984"
    end;
    return hook(self, Url, ...);
end);

oldSyn = replaceclosure(syn.request, newcclosure(function(uri)
    if uri.Url:match(urlLink) then
        return {Body = " "};
    end;
end));


getfenv().Key = "10xHub"
loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconLords/Why-are-we-here-to-suffer/b846b36b8fd79d44e80375ad764dd5731dcccac8/Dababy"))();
