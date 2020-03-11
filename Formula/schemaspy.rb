require "formula"

class Schemaspy < Formula
  desc "Database documentation tool"
  homepage "http://schemaspy.sourceforge.net"
  version "6.1.0"
  url "https://github.com/schemaspy/schemaspy/releases/download/v" + version + "/schemaspy-" + version + ".jar"
  sha256 "873e4c76907cd6075ca45eb3bccf50c80e8ffe7b0350b1dc29287578c232ff51"

  depends_on "graphviz"

  def install
    libexec.install Dir["*.jar"]
    system "echo '#!/bin/bash\njava -jar /usr/local/Cellar/schemaspy/" + version + "/libexec/schemaspy-" + version + ".jar $@' > schemaspy"
    bin.install Dir["schemaspy"]
  end
end
