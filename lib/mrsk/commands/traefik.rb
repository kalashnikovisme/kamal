class Mrsk::Commands::Traefik < Mrsk::Commands::Base
  def run
    "docker run --name traefik " + 
      "-d --restart unless-stopped " +
      "-p 80:80 " +
      "-v /var/run/docker.sock:/var/run/docker.sock " +
      "traefik --providers.docker"
  end

  def start
    "docker container start traefik"
  end

  def stop
    "docker container stop traefik"
  end

  def info
    "docker ps --filter name=traefik"
  end
end