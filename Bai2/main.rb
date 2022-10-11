class Document
  attr_accessor :id, :nxb, :number

  def initialize(id, nxb, number)
    @id = id
    @nxb = nxb
    @number = number
  end
end

class Book < Document
  attr_accessor :author, :numberPage

  def initialize(id, nxb, number, author, numberPage)
    super(id, nxb, number)
    @author = author
    @numberPage = numberPage
  end
end

class Journal < Document
  attr_accessor :issueNumber, :monthIssue

  def initialize(id, nxb, number, issueNumber, monthIssue)
    super(id, nxb, number)
    @issueNumber = issueNumber
    @monthIssue = monthIssue
  end
end

class Newspaper < Document
  attr_accessor :dayIssue

  def initialize(id, nxb, number, dayIssue)
    super(id, nxb, number)
    @dayIssue = dayIssue
  end
end

class ManagerDocument
  public Documents = []

  def initialize()
    return Documents
  end

  def addDocument(document)
    Documents << document
  end

  def findByID(id)
    return Documents.filter { |dcm|dcm.id == id}
  end

  def deleteDocument(id)
    for dcm in Documents do
      if dcm.id == id
        Documents.delete(dcm)
      end
    end
  end

  def displayDocument()
    for document in Documents do
      puts("ID: #{document.id} - NXB: #{document.nxb} - Number: #{document.number}")
    end
  end

  def searchByBook()
    return Documents.filter { |dcm|dcm.class == Book}
  end


  def searchByNewspaper()
    return Documents.filter { |dcm|dcm.class == Newspaper}
  end


  def searchByJournal()
    return Documents.filter { |dcm|dcm.class == Journal}
  end
end

managerDocument = ManagerDocument.new()
while true
  puts "Application Manager Document"
  puts "1. Insert Document"
  puts "2. Search document by category"
  puts "3. Show information documents"
  puts "4. To remove document by id"
  puts "5. Exit"
  print "Input your choose: "
  line = gets.to_i
  case line
  when 1
    puts "1. Insert Book"
    puts "2. Insert Newspaper"
    puts "3. Insert Journal"
    print "Input your choose: "
    typeDoc = gets.to_i
    case typeDoc
    when 1
      print "Input ID: "
      id = gets.to_i
      print "Input NXB: "
      nxb = gets.to_s
      print "Input number: "
      number = gets.to_s
      print "Input author: "
      author = gets.to_s
      print "Input page number: "
      pagenumber = gets.to_i
      book = Book.new(id, nxb, number, author, pagenumber)
      managerDocument.addDocument(book)
    when 2
      print "Input ID: "
      id = gets.to_i
      print "Input NXB: "
      nxb = gets.to_s
      print "Input number: "
      number = gets.to_s
      print "Enter Day issue: "
      day_issue = gets.to_s
      newspaper = Newspaper.new(id, nxb, number, day_issue)
      managerDocument.addDocument(newspaper)
    when 3
      print "Input ID: "
      id = gets.to_i
      print "Input NXB: "
      nxb = gets.to_s
      print "Input number: "
      number = gets.to_s
      print "Enter issue number: "
      issue_number = gets.to_s
      print "Enter Month issue: "
      month_issue = gets.to_s
      journal = Journal.new(id, nxb, number, issue_number, month_issue)
      managerDocument.addDocument(journal)
    else
      puts "Nhap sai"
    end
  when 2
    puts "1. Search Book"
    puts "2. Search Newspaper"
    puts "3. Search Journal"
    print "Input your choose: "
    choose_search = gets.to_i
    case choose_search
    when 1
      for rs in managerDocument.searchByBook() do
        puts "ID: #{rs.id} - NXB: #{rs.nxb} - Number: #{rs.number}"
      end
    when 2
      for rs in managerDocument.searchByNewspaper() do
        puts "ID: #{rs.id} - NXB: #{rs.nxb} - Number: #{rs.number}"
      end
    when 3
      for rs in managerDocument.searchByJournal() do
        puts "ID: #{rs.id} - NXB: #{rs.nxb} - Number: #{rs.number}"
      end
    else
      puts "Input Error"
    end
  when 3
    puts "List of Documents"
    managerDocument.displayDocument()
  when 4
    print "Enter id of document want to remove: "
    id_remove = gets.to_i
    managerDocument.deleteDocument(id_remove)
    managerDocument.displayDocument()
  else
    puts "Exit"
  end
end
