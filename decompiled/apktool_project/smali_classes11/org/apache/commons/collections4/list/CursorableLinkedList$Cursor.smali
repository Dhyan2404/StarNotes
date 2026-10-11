.class public Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->f:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->g:Z

    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->e:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    return-void
.end method

.method public checkModCount()V
    .locals 1

    iget-boolean p0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Cursor closed"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections4/list/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->e:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic hasNext()Z
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public nextIndex()I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v2, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    goto :goto_1

    :cond_0
    iget-object v0, v2, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_1
    iput v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->f:Z

    :cond_2
    iget p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return p0
.end method

.method public nodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    return-void
.end method

.method public nodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, p1, :cond_1

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->f:Z

    :goto_0
    return-void
.end method

.method public nodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v3, :cond_0

    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->g:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->g:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->g:Z

    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->f:Z

    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->g:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic previousIndex()I
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->g:Z

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
