.class public Lcom/graphbuilder/struc/LinkedList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/struc/LinkedList$Node;
    }
.end annotation


# instance fields
.field protected head:Lcom/graphbuilder/struc/LinkedList$Node;

.field protected size:I

.field protected tail:Lcom/graphbuilder/struc/LinkedList$Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v0, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    return-void
.end method


# virtual methods
.method public addToHead(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lcom/graphbuilder/struc/LinkedList;->insertBefore(Lcom/graphbuilder/struc/LinkedList$Node;Ljava/lang/Object;)V

    return-void
.end method

.method public addToTail(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lcom/graphbuilder/struc/LinkedList;->insertAfter(Lcom/graphbuilder/struc/LinkedList$Node;Ljava/lang/Object;)V

    return-void
.end method

.method public createNode(Ljava/lang/Object;)Lcom/graphbuilder/struc/LinkedList$Node;
    .locals 1

    new-instance v0, Lcom/graphbuilder/struc/LinkedList$Node;

    invoke-direct {v0, p0, p1}, Lcom/graphbuilder/struc/LinkedList$Node;-><init>(Lcom/graphbuilder/struc/LinkedList;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getHead()Lcom/graphbuilder/struc/LinkedList$Node;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    return-object p0
.end method

.method public getTail()Lcom/graphbuilder/struc/LinkedList$Node;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    return-object p0
.end method

.method public insertAfter(Lcom/graphbuilder/struc/LinkedList$Node;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/graphbuilder/struc/LinkedList;->createNode(Ljava/lang/Object;)Lcom/graphbuilder/struc/LinkedList$Node;

    move-result-object p2

    iget v0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    if-ne p1, v1, :cond_1

    iput-object v1, p2, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, v1, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, v1, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v1, p2, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, p1, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p1, p2, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    return-void
.end method

.method public insertBefore(Lcom/graphbuilder/struc/LinkedList$Node;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/graphbuilder/struc/LinkedList;->createNode(Ljava/lang/Object;)Lcom/graphbuilder/struc/LinkedList$Node;

    move-result-object p2

    iget v0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    if-ne p1, v1, :cond_1

    iput-object v1, p2, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, v1, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, v1, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v1, p2, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p2, p1, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p1, p2, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeHead()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    invoke-virtual {p0, v0}, Lcom/graphbuilder/struc/LinkedList;->removeNode(Lcom/graphbuilder/struc/LinkedList$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public removeNode(Lcom/graphbuilder/struc/LinkedList$Node;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p1, Lcom/graphbuilder/struc/LinkedList$Node;->userObject:Ljava/lang/Object;

    iget-object v3, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    if-ne p1, v3, :cond_2

    iget-object v3, v3, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v3, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    if-nez v3, :cond_1

    iput-object v1, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_1
    iput-object v1, v3, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    if-ne p1, v3, :cond_3

    iget-object v3, v3, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v3, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v1, v3, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iget-object v4, p1, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v4, v3, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iget-object v4, p1, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v3, v4, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    :goto_0
    iput-object v1, p1, Lcom/graphbuilder/struc/LinkedList$Node;->list:Lcom/graphbuilder/struc/LinkedList;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    return-object v2
.end method

.method public removeTail()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/struc/LinkedList;->tail:Lcom/graphbuilder/struc/LinkedList$Node;

    invoke-virtual {p0, v0}, Lcom/graphbuilder/struc/LinkedList;->removeNode(Lcom/graphbuilder/struc/LinkedList$Node;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/graphbuilder/struc/LinkedList;->size:I

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList;->head:Lcom/graphbuilder/struc/LinkedList$Node;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/struc/LinkedList$Node;->userObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/graphbuilder/struc/LinkedList$Node;->userObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
