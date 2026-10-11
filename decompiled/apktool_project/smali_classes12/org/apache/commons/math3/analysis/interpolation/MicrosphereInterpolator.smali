.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/MultivariateInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_BRIGHTNESS_EXPONENT:I = 0x2

.field public static final DEFAULT_MICROSPHERE_ELEMENTS:I = 0x7d0


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_1

    if-lez p1, :cond_0

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->a:I

    .line 4
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->b:I

    return-void

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public interpolate([[D[D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    new-instance v5, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(I)V

    new-instance v6, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;

    iget v3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->b:I

    iget v4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolator;->a:I

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereInterpolatingFunction;-><init>([[D[DIILorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;)V

    return-object v6
.end method
