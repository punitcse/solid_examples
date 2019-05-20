class Copier
  def copy
    reader = Keyboard.new
    writer = Printer.new

    data = reader.read_until_eof
    writer.write(data)
  end
end
