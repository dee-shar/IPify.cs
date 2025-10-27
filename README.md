# IPify.cs
Web-API for [geo.ipify.org](https://geo.ipify.org) an IP Geolocation API that lets you look up IP locations accurately

## Example
```bash
using IPifyApi;

namespace Application
{
    internal class Program
    {
        static async Task Main()
        {
            var api = new IPify();
            api.SetApiKey("apiKey");
            string ipInfo = await api.GetIpInfo("192.168.1.1");
            Console.WriteLine(ipInfo);
        }
    }
}
```
