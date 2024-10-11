
group "default" {
  targets = ["scratch"]
}

target "scratch" {
    labels = {
        "cloud.opsbox.author" = "seanly"
        "cloud.opsbox.image.name" = "scratch"
    }
    dockerfile = "./Dockerfile"
    context  = "./"
    platforms = ["linux/amd64", "linux/arm64"]
    tags = ["seanly/scratch"]
    output = ["type=image,push=true"]
}
