# 写一个简单的链表
> 虽然开发中很少用到链表，不过面试的时候，有的面试官还是会问链表问题的，今天就使用C简单写了一个链表

> 创建一个结构体
```
struct ListNode{
    int value;
    struct ListNode * next;
};
```

> 定义一个链表的头
```
struct ListNode * listHead;
```

> 定义一个结构体生成的函数
```
struct ListNode * getNode(int x, struct ListNode *next){
    struct ListNode  * node = (struct ListNode *)malloc(sizeof(struct ListNode *));
    node -> value = x;
    node -> next = next;
    return node;
}
```

> 写一个生成链表的函数
```
void createList(){
    
    struct ListNode * preListNode = NULL;
    struct ListNode * rootListNode = NULL;
    
    for (int i = 0; i < 10; i ++) {
        
        struct ListNode * note = getNode(i, NULL);
        
        rootListNode = note;
        
        if (rootListNode == NULL) {
            return;
        }
        
        if (listHead == NULL) {
            listHead = rootListNode;
            preListNode = listHead;
            continue;
        }
        
        preListNode -> next = rootListNode;
        preListNode = rootListNode;
        
    }
    
}
```

> 写一个链表倒序的函数
```
void reverseList(struct ListNode * head){
    
    struct ListNode * rootNode = NULL;
    struct ListNode * reversedHead = NULL;
    struct ListNode * preNode = NULL;

    if (head == NULL) {
        return;
    }
    
    rootNode = head;
    
    while (rootNode != NULL) {
        
        struct ListNode * nextNode = rootNode -> next;
        if (nextNode == NULL) {
            reversedHead = rootNode;
        }
        
        rootNode -> next = preNode;
        preNode = rootNode;
        rootNode = nextNode;

    }
    
    listHead = reversedHead;
}
```

> 写一个链表打印的函数
```
void printList(struct ListNode *head){
    
    if (head != NULL) {
        printf("%d", head -> value);
    }
    
    struct ListNode *nextNode = head -> next;
    while (nextNode != NULL) {
        printf("%d", nextNode -> value);
        nextNode = nextNode -> next;
    }
    
}
```

> 执行一下函数、打印一下结果
```
@implementation LinkedListTest


+ (void)test{
    
    createList();
    printList(listHead);
    reverseList(listHead);
    printf("\n");
    printList(listHead);
    
}


@end
```
> 执行结果日志

![图片.png](https://upload-images.jianshu.io/upload_images/686735-6195b1751af62e8a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



