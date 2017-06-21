class UrlParser

  def initialize(url)
    @new_url = url
  end

  def scheme
    @new_url.split(":")[0]
  end

  def domain
    @new_url.split(/[\/:]/)[3]
  end

  def port
    port = @new_url.split("/")[2].split(":")[1]
    if port
      return port
    else
      scheme == "https" ? (return "443") : (scheme == "http" ? (return "80") : (return "that's not a valid scheme silly"))
    end

 def path
    no_search = @new_url.split(/[\/?]/)[3]
    if no_search == ""
      no_search = nil
  end
no_search
end

 def query_string
    Hash[*@new_url.split(/[?#]/)[1].split(/[=&]/)]
  end

 def fragment_id
    @new_url.split("#")[1]
  end
end
