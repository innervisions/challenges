class Element
  attr_reader :datum, :next

  def initialize(datum, next_el = nil)
    @datum = datum
    @next = next_el
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(item)
    @head = Element.new(item, @head)
  end

  def pop
    old_head = @head
    @head = old_head&.next
    old_head&.datum
  end

  def peek
    @head&.datum
  end

  def size
    size = 0
    current_element = @head
    while current_element
      size += 1
      current_element = current_element.next
    end
    size
  end

  def empty?
    size.zero?
  end

  def to_a
    array = []
    current_element = @head
    while current_element
      array << current_element.datum
      current_element = current_element.next
    end
    array
  end

  def self.from_a(array)
    array = [] if array.nil?
    list = SimpleLinkedList.new
    array.reverse_each { |el| list.push(el) }
    list
  end

  def reverse
    reversed_list = SimpleLinkedList.new
    current_element = @head
    while current_element
      reversed_list.push(current_element.datum)
      current_element = current_element.next
    end
    reversed_list
  end
end
