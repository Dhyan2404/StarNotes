.class public Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "ListIteratorWrapper does not support optional operations of ListIterator."

.field public static final k:Ljava/lang/String; = "Cannot remove element at index {0}."


# instance fields
.field public final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v0, p0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hasPrevious()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    iget v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->f:Ljava/util/List;

    sub-int/2addr v1, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    iput-boolean v3, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->i:Z

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->i:Z

    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->f:Ljava/util/List;

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public remove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    iget v2, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    if-ne v1, v2, :cond_1

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->i:Z

    if-eqz v4, :cond_2

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    if-gt v2, v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->i:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot remove element at index {0}."

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v1, v0, Ljava/util/ListIterator;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/ListIterator;

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    if-ltz p0, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->g:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/ListIteratorWrapper;->e:Ljava/util/Iterator;

    instance-of v0, p0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
