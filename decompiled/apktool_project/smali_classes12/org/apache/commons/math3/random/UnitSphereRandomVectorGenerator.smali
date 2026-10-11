.class public Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field public final a:Lorg/apache/commons/math3/random/RandomGenerator;

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->b:I

    .line 3
    iput-object p2, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method


# virtual methods
.method public nextVector()[D
    .locals 7

    iget v0, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->b:I

    new-array v0, v0, [D

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->b:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v5

    aput-wide v5, v0, v4

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v4, v1

    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/random/UnitSphereRandomVectorGenerator;->b:I

    if-ge v3, v1, :cond_1

    aget-wide v1, v0, v3

    mul-double/2addr v1, v4

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
