.class public Lorg/apache/commons/collections4/bidimap/TreeBidiMap$e;
.super Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap<",
        "TK;TV;>.k;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$e;->k:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;-><init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V

    return-void
.end method


# virtual methods
.method public final c(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/collections4/keyvalue/UnmodifiableMapEntry;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;->v()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;->r()Ljava/lang/Comparable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/keyvalue/UnmodifiableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public d()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->a()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$e;->c(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$k;->b()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$e;->c(Lorg/apache/commons/collections4/bidimap/TreeBidiMap$h;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$e;->d()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$e;->e()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
