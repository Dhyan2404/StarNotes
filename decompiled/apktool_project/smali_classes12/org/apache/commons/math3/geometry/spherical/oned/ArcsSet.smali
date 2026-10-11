.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;,
        Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;",
        "Ljava/lang/Iterable<",
        "[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 2
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->m(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p5, p6}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;>;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->n()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->n()V

    return-void
.end method

.method public static synthetic d(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->s()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->t(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->y(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->D(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->x(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->r(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic k(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->E(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public static m(DDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-nez v1, :cond_3

    sub-double v1, p2, p0

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    cmpl-double v5, p0, p2

    const/4 v6, 0x1

    if-gtz v5, :cond_2

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p0

    add-double/2addr v1, p0

    new-instance p2, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance p3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {p3, p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p2, p3, v0, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object p0

    cmpg-double p1, v1, v3

    const/4 p2, 0x0

    if-gtz p1, :cond_1

    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance p3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {p3, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p1, p3, v6, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object p1

    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p4, p5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v1, p5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance p5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p5, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1, p5, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    invoke-direct {p3, p0, p4, v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance p3, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    sub-double/2addr v1, v3

    invoke-direct {p3, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p1, p3, v6, p4, p5}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/oned/SubLimitAngle;

    move-result-object p1

    new-instance p3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    new-instance p5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p5, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p4, p1, p5, v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-direct {p3, p0, p4, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    return-object p3

    :cond_2
    new-instance p4, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p4, p5, p0, p1, v6}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p4

    :cond_3
    :goto_0
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final A(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->isDirect()Z

    move-result p0

    return p0
.end method

.method public final B(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->o(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->p(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final C(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->p(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->o(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final D(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->o(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->B(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->v(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public final E(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->p(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->C(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->z(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public asList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Arc;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    new-instance v10, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;-><init>(DDD)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object p0

    return-object p0
.end method

.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public computeGeometricalProperties()V
    .locals 15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v4, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v6, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    const/4 v9, 0x1

    aget-wide v9, v8, v9

    aget-wide v11, v8, v0

    sub-double v13, v9, v11

    add-double/2addr v4, v13

    add-double/2addr v11, v9

    mul-double/2addr v13, v11

    add-double/2addr v6, v13

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setSize(D)V

    invoke-static {v4, v5, v2, v3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->NaN:Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_2

    :cond_3
    sget-wide v1, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v1, v4, v1

    if-ltz v1, :cond_4

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v1

    div-double/2addr v6, v4

    invoke-direct {v0, v6, v7}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    :goto_2
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[D>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$b;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V

    return-object v0
.end method

.method public final l(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;DZ)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v1, p2, p3}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide p3

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;ZD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCell(Lorg/apache/commons/math3/geometry/Point;D)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0
.end method

.method public final n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->t(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->u(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;-><init>()V

    throw p0
.end method

.method public final o(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->A(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->A(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public projectToBoundary(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    move v7, v2

    move-wide v5, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_0

    aget-wide v5, v8, v2

    :cond_0
    const/4 v9, 0x1

    if-nez v7, :cond_5

    aget-wide v10, v8, v2

    cmpg-double v12, v0, v10

    if-gez v12, :cond_3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    sub-double v5, v0, v3

    aget-wide v9, v8, v2

    sub-double/2addr v9, v0

    cmpg-double p0, v5, v9

    if-gez p0, :cond_2

    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v0, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    aget-wide v1, v8, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v0, v9, v10}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_3
    aget-wide v3, v8, v9

    cmpg-double v12, v0, v3

    if-gtz v12, :cond_5

    sub-double/2addr v10, v0

    sub-double/2addr v0, v3

    cmpg-double p0, v10, v0

    if-gez p0, :cond_4

    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    aget-wide v3, v8, v9

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    aget-wide v1, v8, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v0, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_5
    :goto_1
    aget-wide v3, v8, v9

    goto :goto_0

    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz p0, :cond_7

    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_7
    if-eqz v7, :cond_9

    sub-double v7, v3, v8

    sub-double v7, v0, v7

    sub-double v0, v5, v0

    cmpg-double p0, v7, v0

    if-gez p0, :cond_8

    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v0, v7, v8}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_8
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v2, v5, v6}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_9
    sub-double v10, v0, v3

    add-double/2addr v8, v5

    sub-double/2addr v8, v0

    cmpg-double p0, v10, v8

    if-gez p0, :cond_a

    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v0, v10, v11}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0

    :cond_a
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-direct {p0, p1, v0, v8, v9}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryProjection;-><init>(Lorg/apache/commons/math3/geometry/Point;Lorg/apache/commons/math3/geometry/Point;D)V

    return-object p0
.end method

.method public final q(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v3, v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v7

    sub-double/2addr v7, v5

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_4

    if-lez v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    sub-double/2addr v5, v7

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double p1, v5, v2

    if-lez p1, :cond_2

    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/2addr v2, v4

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    move v3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0, v2, v5, v6, v4}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->l(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0, v2, v5, v6, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->l(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;DZ)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-nez p1, :cond_7

    return-object v1

    :cond_7
    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTolerance()D

    move-result-wide v0

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object p1
.end method

.method public final r(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)D"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/LimitAngle;->getLocation()Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide p0

    return-wide p0
.end method

.method public final s()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->t(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->y(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->D(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public side(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object p0

    return-object p0
.end method

.method public split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    const/4 v9, 0x0

    aget-wide v10, v8, v9

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v12

    sub-double/2addr v10, v12

    aget-wide v12, v8, v9

    sub-double v14, v12, v10

    const/4 v9, 0x1

    aget-wide v16, v8, v9

    sub-double v16, v16, v14

    cmpg-double v10, v10, v5

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v10, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v10, v16, v5

    if-lez v10, :cond_1

    add-double v10, v5, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v10, v16, v18

    if-lez v10, :cond_0

    add-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v10, v16, v18

    if-lez v10, :cond_4

    add-double v10, v14, v18

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double v18, v5, v18

    cmpl-double v10, v16, v18

    if-lez v10, :cond_3

    add-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    aget-wide v8, v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->q(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->q(Ljava/util/List;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v2, v0, v1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$a;)V

    return-object v3
.end method

.method public final t(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->E(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->C(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->D(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->B(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->o(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final x(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->C(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->B(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final y(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->C(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->B(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final z(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->p(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
