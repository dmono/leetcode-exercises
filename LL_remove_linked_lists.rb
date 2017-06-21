# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}

# iterative solution

def remove_elements(head, val)
  return nil if head.nil?

  while head != nil && head.val == val do
    head = head.next
  end

  current = head
  
  while current.next do
    if current.next.val == val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head
end


# recursive solution

def remove_elements(head, val)
  return nil if head.nil?
  
  tail = head.next
  if head.val == val
    remove_elements(tail, val)
  else
    head.next = remove_elements(tail, val)
    head
  end
end
