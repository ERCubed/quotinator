# encoding: utf-8

class Quotinator
  
  def self.about
    puts "This is a basic gem which is designed to replace all "
    puts "the special and fancy characters Microsoft places in "
    puts "its text with the basic counterparts."
  end
  
  # Just a shorthand function for the replace_all function. 
  def self.replace(txt)
    return replace_all(txt)
  end
  
  # txt.gsub!(/ /," ") ?? Need to figure this character out.
  
  def self.replace_all(txt)
    txt = doublequotes(txt)
    txt = singlequotes(txt)
    txt = ellipsis(txt)
    txt = longdash(txt)
    return txt
  end
  
  def self.doublequotes(txt)
    txt.gsub!(/”/,'"')
    txt.gsub!(/“/,'"')
    # There seems to be two different sets of special quotes.
    txt.gsub!(/”/,'"')
    txt.gsub!(/“/,'"')
    return txt
  end
  
  def self.singlequotes(txt)
    txt.gsub!(/’/,"'")
    txt.gsub!(/‘/,"'")
    return txt
  end
  
  def self.ellipsis(txt)
    txt.gsub!(/…/,"...")
    return txt
  end
  
  def self.longdash(txt)
    txt.gsub!(/—/,"-")
    return txt
  end
  
end

