.class public Lorg/apache/commons/math3/random/UniformRandomGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# static fields
.field public static final b:D


# instance fields
.field public final a:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->b:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 6

    sget-wide v0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->b:D

    iget-object p0, p0, Lorg/apache/commons/math3/random/UniformRandomGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method
