.class public Lcom/sun/org/apache/bcel/internal/util/ClassQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected vec:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->vec:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public dequeue()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    return-object p0
.end method

.method public empty()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public enqueue(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassQueue;->vec:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
