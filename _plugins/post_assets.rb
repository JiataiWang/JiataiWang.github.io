module Jekyll
  class PostFile < StaticFile
    def initialize(site, base, dir, name, dest_dir)
      super(site, base, dir, name)
      @dest_dir = dest_dir
    end

    def destination(dest)
      File.join(dest, @dest_dir, @name)
    end

    def url
      File.join("/", @dest_dir, @name)
    end
  end

  class PostAssetGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.posts.docs.each do |post|
        post_dir = File.dirname(post.path)
        next if File.basename(post_dir) == "_posts"

        rel_dir = post_dir.sub(site.source + "/", "")
        dest_dir = post.url.chomp("/")

        Dir.glob(File.join(post_dir, "*")).each do |asset_path|
          next unless File.file?(asset_path)
          next if asset_path == post.path
          next if File.extname(asset_path).downcase == ".md"

          site.static_files << PostFile.new(
            site,
            site.source,
            rel_dir,
            File.basename(asset_path),
            dest_dir,
          )
        end
      end
    end
  end
end
