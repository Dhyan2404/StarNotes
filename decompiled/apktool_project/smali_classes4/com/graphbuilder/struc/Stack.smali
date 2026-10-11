.class public Lcom/graphbuilder/struc/Stack;
.super Lcom/graphbuilder/struc/LinkedList;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/graphbuilder/struc/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public peek()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->userObject:Ljava/lang/Object;

    return-object p0
.end method

.method public pop()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/graphbuilder/struc/LinkedList;->removeHead()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/LinkedList;->addToHead(Ljava/lang/Object;)V

    return-void
.end method
