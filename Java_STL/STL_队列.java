import java.util.Queue;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Deque;
import java.util.Comparator;
class STL{
	public static void main(String args[]){
		System.out.println("----------Queue队列----------");
		Queue<Integer> queue = new LinkedList<Integer>(); // 创建一个int类型的队列
		queue.add(3); // 加入3这个元素，true成功返回 true ，如果当前没有可用的空间，则抛出 IllegalStateException 。
		queue.offer(5); // 如果在不违反容量限制的情况下立即执行，则将指定的元素插入到此队列中。  
		System.out.println(queue.peek()); // 检索但不删除此队列的头，如果此队列为空，则返回 null 。 
		System.out.println(queue.remove()); // 检索并删除此队列的头部，如果此队列为空，则返回 null 。 
		System.out.println(queue.element()); // 检索但是不删除这个队列的头 
		System.out.println(queue.poll()); // 检索并删除此队列的头。 
		// 3 3 5 5
		
		System.out.println("----------PriorityQueue优先队列----------");

		PriorityQueue<Integer> pq = new PriorityQueue<>(); // 优先队列默认为小根堆
		pq.add(7);
		pq.add(9);
		pq.offer(6);
		pq.offer(3);
		pq.offer(5);
		// 在输入这个几个数字之后，pq会自动进行c小根堆排序
		System.out.println(pq.poll()); // 返回小根堆堆顶的元素,并删除
		System.out.println(pq.contains(7)); // 询问7是否在pq里面
		for(int it : pq) // pq的迭代器
			System.out.println(it);
		System.out.println(pq.peek()); // 返回小根堆堆顶的元素，不删除
		System.out.println(pq.remove(6)); // 从pq中删除指定元素，如果存在的话,返回true
		System.out.println(pq.size()); // 返回pq大小
		// System.out.println(pq.spliterator());	
		pq.clear(); // 清空pq大小	
		System.out.println(pq.size()); // 返回pq大小
		// 3 true 5 6 7 9 5 true 3 0
		
		PriorityQueue<Integer> pq2 = new PriorityQueue<>(7,new Comparator<Integer>(){ // 创建大根堆
			public int compare(Integer o1,Integer o2){
				return o2 - o1;
			}
		});
		pq2.add(7);
		pq2.add(9);
		pq2.add(6);
		pq2.add(3);
		pq2.add(5);
		pq2.add(1);
		pq2.add(2);
		pq2.add(12);
		for(int num : pq2)
			System.out.println(num); // 输出大根堆的序列		
		// 12 9 6 7 5 1 2 3 
				
		System.out.println("----------Deque双端队列----------");
		Deque<String> dq = new LinkedList<>();		
		// 将元素添加到队首或者队尾 addLast()/offerLast()/addFirst()/offerFirst()i；
		// 从队首／队尾获取元素并删除：removeFirst()/pollFirst()/removeLast()/pollLast()；
		// 从队首／队尾获取元素但不删除：getFirst()/peekFirst()/getLast()/peekLast()；
		// 总是调用xxxFirst()/xxxLast()以便与Queue的方法区分开；
		// 避免把null添加到队列。
		// size 返回deque中的元素
	}
}
