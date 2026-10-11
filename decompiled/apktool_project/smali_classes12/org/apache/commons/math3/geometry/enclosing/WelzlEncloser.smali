.class public Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/Encloser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "P::",
        "Lorg/apache/commons/math3/geometry/Point<",
        "TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/Encloser<",
        "TS;TP;>;"
    }
.end annotation


# instance fields
.field public final a:D

.field public final b:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
            "TS;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
            "TS;TP;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->a:D

    iput-object p3, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->b:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TP;>;I",
            "Ljava/util/List<",
            "TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->b:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    invoke-interface {v0, p3}, Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupportSize()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v2

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/Point;

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->a:D

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->contains(Lorg/apache/commons/math3/geometry/Point;D)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->a(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v4, v2

    :goto_1
    if-lez v4, :cond_0

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final b(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/Point;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/Point;->getSpace()Lorg/apache/commons/math3/geometry/Space;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/Space;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->a(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->selectFarthest(Ljava/lang/Iterable;Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;)Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->a:D

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->contains(Lorg/apache/commons/math3/geometry/Point;D)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v1, v4, v2}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->a(Ljava/util/List;ILjava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getSupportSize()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0
.end method

.method public enclose(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TP;>;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->b(Ljava/lang/Iterable;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/enclosing/WelzlEncloser;->b:Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object p0

    return-object p0
.end method

.method public selectFarthest(Ljava/lang/Iterable;Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;)Lorg/apache/commons/math3/geometry/Point;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TP;>;",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "TS;TP;>;)TP;"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/Point;

    invoke-interface {v2, p0}, Lorg/apache/commons/math3/geometry/Point;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v3

    cmpl-double v5, v3, v0

    if-lez v5, :cond_0

    move-object p2, v2

    move-wide v0, v3

    goto :goto_0

    :cond_1
    return-object p2
.end method
