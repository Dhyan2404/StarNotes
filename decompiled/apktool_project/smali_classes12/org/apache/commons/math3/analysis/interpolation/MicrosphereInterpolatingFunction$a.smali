.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/linear/RealVector;

.field public b:D

.field public c:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->a:Lorg/apache/commons/math3/linear/RealVector;

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->b:D

    return-wide v0
.end method

.method public b()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->a:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->b:D

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->c:Ljava/util/Map$Entry;

    return-void
.end method

.method public d()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->c:Ljava/util/Map$Entry;

    return-object p0
.end method

.method public e(DLjava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map$Entry<",
            "Lorg/apache/commons/math3/linear/RealVector;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->b:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->b:D

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction$a;->c:Ljava/util/Map$Entry;

    :cond_0
    return-void
.end method
