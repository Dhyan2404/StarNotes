.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:D

.field public final f:I


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->e:D

    iput p3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->f:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->f:I

    return p0
.end method


# virtual methods
.method public b(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;)I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->e:D

    iget-wide p0, p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->e:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->b(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->e:D

    check-cast p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;

    iget-wide p0, p1, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->e:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$a;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    const-wide/32 v4, 0x15f34e

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
