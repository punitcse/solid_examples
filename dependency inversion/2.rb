class Copier
  def initialize(reader, writer)
    @reader = reader
    @writer = writer
  end

  def self.copy
    @writer.write(@reader.until_eof)
  end
end


Copier.new(Keyboard.new, Printer.new).copy

# If you want to change the writer from Printer to Disk.
Copier.new(Keyboard.new, Disk.new).copy
