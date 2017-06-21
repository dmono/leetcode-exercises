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

def delete_duplicates(head)
  return nil if head.nil?

  current = head

  while current.next do
    if current.next.val == current.val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head 
end
