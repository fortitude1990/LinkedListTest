//
//  LinkedListTest.m
//  ObjcTest
//
//  Created by 李志敬 on 2019/1/6.
//  Copyright © 2019 李志敬. All rights reserved.
//

#import "LinkedListTest.h"


struct ListNode{
    int value;
    struct ListNode * next;
};


struct ListNode * listHead;

struct ListNode * getNode(int x, struct ListNode *next){
    struct ListNode  * node = (struct ListNode *)malloc(sizeof(struct ListNode *));
    node -> value = x;
    node -> next = next;
    return node;
}

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


@implementation LinkedListTest


+ (void)test{
    
    createList();
    printList(listHead);
    reverseList(listHead);
    printf("\n");
    printList(listHead);
    
}


@end
