.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Vector<",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final ONE:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

.field private static final serialVersionUID:J = 0x68deb3d42eaab0b5L


# instance fields
.field private final x:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ONE:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p1, v0

    iget-wide v0, p6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p4, v0

    add-double/2addr p1, p4

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p1, v0

    iget-wide v0, p6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p4, v0

    add-double/2addr p1, p4

    iget-wide p3, p9, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p7, p3

    add-double/2addr p1, p7

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;DLorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p1, v0

    iget-wide v0, p6, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p4, v0

    add-double/2addr p1, p4

    iget-wide p3, p9, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p7, p3

    add-double/2addr p1, p7

    iget-wide p3, p12, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p10, p3

    add-double/2addr p1, p10

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    return-void
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;)D
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 5
    check-cast p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 6
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v3

    mul-double/2addr p1, v3

    add-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 4
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide p0

    add-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 3
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v0, p0

    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 2
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 2
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide p0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v0, p0

    mul-double/2addr v0, v0

    return-wide v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)D"
        }
    .end annotation

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result p0

    return p0

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    cmpl-double p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getNorm()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormInf()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr v0, v0

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;

    move-result-object p0

    return-object p0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x1e69

    return p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e5

    return p0
.end method

.method public isInfinite()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic negate()Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->negate()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic normalize()Lorg/apache/commons/math3/geometry/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    mul-double/2addr p1, v1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p0

    return-object p0
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 5
    check-cast p3, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 6
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v3

    mul-double/2addr p1, v3

    sub-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    .line 4
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    iget-wide p0, p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->x:D

    sub-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/VectorFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
