# docker-powershell-arm64
For some reason, Microsoft currently doesn't supply a standard Docker image for Powershell on arm64 (e.g. Mac M-series CPUs). Every now and then I need it, so here it is.

If/when Microsoft finally gets around to releasing an "official" Powershell Docker image for arm64, I'll probably deprecate this...

## To build

I prefer <https://podman.io/> over Docker these days. If you're using Docker, just substitute `docker` for `podman` in the below commands (then go read about podman and see if you'd be better off switching!)

Using `podman`

`$ podman build -f Dockerfile -t powershell-arm64`

## To run

`$ podman run -ti localhost/powershell-arm64:latest`

and you'll be at a Powershell prompt
