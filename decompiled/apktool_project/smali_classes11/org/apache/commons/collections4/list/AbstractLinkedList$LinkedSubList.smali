.class public Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public e:Lorg/apache/commons/collections4/list/AbstractLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
            "TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-ltz p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_0

    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iput p2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->f:I

    sub-int/2addr p3, p2

    iput p3, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    iget p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") > toIndex("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "toIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fromIndex = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->f:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->h:I

    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 5
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v3, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->f:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->h:I

    .line 7
    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    .line 8
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public checkModCount()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iget p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->h:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->f:I

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public rangeCheck(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' out of bounds for size \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->f:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->h:I

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->f:I

    add-int/2addr p1, p0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    iget p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->g:I

    return p0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->e:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget p0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->f:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;II)V

    return-object v0
.end method
