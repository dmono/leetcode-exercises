# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}

# iterative solution

def reverse_list(head)
  return nil if head.nil?

  current = head
  prev = nil

  while current do
    stored = current.next
    current.next = prev
    prev = current
    current = stored
  end

  prev
end

# recursive solution

def reverse_list(head)
  if !head || !head.next
    return head
  else
    new_start = reverse_list(head.next)
  end

  head.next.next = head
  head.next = nil
  new_start
end
