require 'uri'
def domain_name(url)
  # return just the domain name
  host = URI.parse(url).host.downcase
  if host.start_with?('www.')
    split = host[4..-1].split('.')
  else
    split = host.split('.')
  end
  split[0]
end

# domain_name("http://github.com/carbonfive/raygun")
domain_name("http://www.zombie-bites.com")
domain_name("https://www.cnet.com")