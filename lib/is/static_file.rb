
require 'fileutils'
require 'jekyll'

module IS

  class StaticFile < ::Jekyll::StaticFile

    attr_accessor :content
    attr_reader :target, :name, :base, :source

    def initialize site, target, name, source: nil, content: nil
      @site = site
      @target = target
      @name = name
      @source = source
      @content = content
      @base = File.dirname(@source || "/")
      super @site, @base, "", @name
    end

    def path
      @source
    end

    def destination dest
      File.join dest, @target, @name
    end

    def relative_path 
      File.join @target, @name
    end

    def write dest
      return super(dest) if @source
      return false unless @content

      dest_path = destination dest
      FileUtils.mkdir_p(File.dirname(dest_path))
      File.open dest_path, 'wb' do |io|
        io.write(@content || '')
      end
      true
    end

    def modified?
      return super if @source
      !!@content
    end

  end

end
