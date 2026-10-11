.class public abstract Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;
.super Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/SortedBidiMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/SortedBidiMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/SortedBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/OrderedBidiMap;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decorated()Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decorated()Lorg/apache/commons/collections4/BidiMap;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decorated()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    return-object p0
.end method

.method public decorated()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractOrderedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/OrderedBidiMap;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/SortedBidiMap;

    return-object p0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    return-object p0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections4/SortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    return-object p0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/collections4/SortedBidiMap;->valueComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
