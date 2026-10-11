.class public Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;
.super Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/ObjectArrayIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public i:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->i:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->i:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;II)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->i:I

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

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "add() method is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->h:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->getStartIndex()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->h:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->i:I

    iget-object v1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->e:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->h:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->h:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->getStartIndex()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->h:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->i:I

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->e:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->h:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->getStartIndex()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->i:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->e:[Ljava/lang/Object;

    aput-object p1, p0, v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "must call next() or previous() before a call to set()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
