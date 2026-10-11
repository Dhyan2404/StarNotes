.class public Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/OpenMapRealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenMapSparseIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/commons/math3/linear/RealVector$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

.field public final f:Lorg/apache/commons/math3/linear/RealVector$Entry;

.field public final synthetic g:Lorg/apache/commons/math3/linear/OpenMapRealVector;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;->g:Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->access$000(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;->e:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    new-instance v1, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;-><init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;->f:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;->e:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;->next()Lorg/apache/commons/math3/linear/RealVector$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/commons/math3/linear/RealVector$Entry;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;->e:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->advance()V

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapSparseIterator;->f:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
