.class public Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field public static final k:[D

.field public static final l:[[D

.field public static final m:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->k:[D

    new-array v1, v0, [[D

    const/4 v2, 0x1

    new-array v3, v2, [D

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    aput-object v3, v1, v6

    const/4 v3, 0x2

    new-array v4, v3, [D

    fill-array-data v4, :array_1

    aput-object v4, v1, v2

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->l:[[D

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->m:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd5555555555555L    # 0.3333333333333333
        0x3fe5555555555555L    # 0.6666666666666666
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        -0x402aaaaaaaaaaaabL    # -0.3333333333333333
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x4010000000000000L    # -1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3
    .array-data 8
        0x3fc0000000000000L    # 0.125
        0x3fd8000000000000L    # 0.375
        0x3fd8000000000000L    # 0.375
        0x3fc0000000000000L    # 0.125
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 8

    const-string v1, "3/8"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->k:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->l:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->m:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    return-void
.end method
