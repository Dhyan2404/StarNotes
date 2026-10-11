.class public Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;
.super Lorg/apache/commons/math3/linear/RealVector$Entry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/OpenMapRealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenMapEntry"
.end annotation


# instance fields
.field public final c:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

.field public final synthetic d:Lorg/apache/commons/math3/linear/OpenMapRealVector;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/OpenMapRealVector;Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->d:Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->c:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->c:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result p0

    return p0
.end method

.method public getValue()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->c:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->value()D

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->d:Lorg/apache/commons/math3/linear/OpenMapRealVector;

    invoke-static {v0}, Lorg/apache/commons/math3/linear/OpenMapRealVector;->access$000(Lorg/apache/commons/math3/linear/OpenMapRealVector;)Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/OpenMapRealVector$OpenMapEntry;->c:Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap$Iterator;->key()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToDoubleHashMap;->put(ID)D

    return-void
.end method
