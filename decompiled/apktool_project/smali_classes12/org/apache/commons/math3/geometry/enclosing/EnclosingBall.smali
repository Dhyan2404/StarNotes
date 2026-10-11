.class public Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133505eL


# instance fields
.field private final center:Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final radius:D

.field private final support:[Lorg/apache/commons/math3/geometry/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;D[TP;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    invoke-virtual {p4}, [Lorg/apache/commons/math3/geometry/Point;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/geometry/Point;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/Point;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public contains(Lorg/apache/commons/math3/geometry/Point;D)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;D)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    add-double/2addr p0, p2

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCenter()Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->center:Lorg/apache/commons/math3/geometry/Point;

    return-object p0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->radius:D

    return-wide v0
.end method

.method public getSupport()[Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TP;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    invoke-virtual {p0}, [Lorg/apache/commons/math3/geometry/Point;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/geometry/Point;

    return-object p0
.end method

.method public getSupportSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->support:[Lorg/apache/commons/math3/geometry/Point;

    array-length p0, p0

    return p0
.end method
