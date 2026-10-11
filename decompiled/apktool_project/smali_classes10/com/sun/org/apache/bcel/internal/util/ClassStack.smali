.class public Lcom/sun/org/apache/bcel/internal/util/ClassStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private stack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassStack;->stack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result p0

    return p0
.end method

.method public pop()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    return-object p0
.end method

.method public push(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public top()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ClassStack;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    return-object p0
.end method
