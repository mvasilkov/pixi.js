code = open("pixi.build.js").read()
wrapper = open("wrapper.js").read()

out = open("pixi.js", "w")
out.write(wrapper % code.strip())
out.close()
