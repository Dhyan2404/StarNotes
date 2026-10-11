.class public abstract Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public h:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public i:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->e:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_0

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v0, v1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->h:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->f:I

    iget p1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->i:I

    return-void
.end method


# virtual methods
.method public currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->h:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->e:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->i:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->h:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->f:I

    iget-object v3, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    :goto_0
    if-nez v3, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-object v3, v0, v2

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->h:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->f:I

    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-object v1

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No next() entry in the iteration"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->e:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v2, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->i:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->e:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->i:I

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() can only be called once after next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->g:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Iterator[]"

    return-object p0
.end method
