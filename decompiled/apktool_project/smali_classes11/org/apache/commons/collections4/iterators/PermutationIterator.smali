.class public Lorg/apache/commons/collections4/iterators/PermutationIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final e:[I

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final g:[Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->e:[I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->g:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->f:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->e:[I

    add-int/lit8 v4, v2, -0x1

    aput v2, v3, v4

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->h:Ljava/util/List;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The collection must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->h:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->next()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 3
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->e:[I

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v2, v6, :cond_3

    .line 4
    iget-object v6, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->g:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_0

    array-length v8, v5

    sub-int/2addr v8, v7

    if-ge v2, v8, :cond_0

    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, v5, v8

    if-gt v7, v8, :cond_1

    :cond_0
    if-nez v6, :cond_2

    if-lez v2, :cond_2

    aget v6, v5, v2

    add-int/lit8 v7, v2, -0x1

    aget v7, v5, v7

    if-le v6, v7, :cond_2

    .line 5
    :cond_1
    aget v5, v5, v2

    if-le v5, v3, :cond_2

    move v4, v2

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_4

    .line 6
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->h:Ljava/util/List;

    return-object v0

    .line 8
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->g:[Z

    aget-boolean v6, v2, v4

    if-eqz v6, :cond_5

    move v1, v7

    .line 9
    :cond_5
    aget v8, v5, v4

    add-int/2addr v1, v4

    .line 10
    aget v9, v5, v1

    aput v9, v5, v4

    .line 11
    aput v8, v5, v1

    .line 12
    aget-boolean v5, v2, v1

    aput-boolean v5, v2, v4

    .line 13
    aput-boolean v6, v2, v1

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->e:[I

    array-length v4, v2

    if-ge v0, v4, :cond_7

    .line 16
    aget v2, v2, v0

    if-le v2, v3, :cond_6

    .line 17
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->g:[Z

    aget-boolean v5, v4, v0

    xor-int/2addr v5, v7

    aput-boolean v5, v4, v0

    .line 18
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->f:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->h:Ljava/util/List;

    .line 20
    iput-object v1, p0, Lorg/apache/commons/collections4/iterators/PermutationIterator;->h:Ljava/util/List;

    return-object v0

    .line 21
    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
