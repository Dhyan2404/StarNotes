.class public Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->findHullVertices(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$a;->e:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)I
    .locals 8

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$a;->e:Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain;->getTolerance()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result p0

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/hull/MonotoneChain$a;->a(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)I

    move-result p0

    return p0
.end method
