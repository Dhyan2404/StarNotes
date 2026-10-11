.class public Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field public static final k:[D

.field public static final l:[[D

.field public static final m:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->k:[D

    new-array v1, v0, [[D

    const/4 v2, 0x1

    new-array v3, v2, [D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    aput-object v3, v1, v6

    const/4 v3, 0x2

    new-array v4, v3, [D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v11

    div-double/2addr v9, v7

    aput-wide v9, v4, v6

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    sub-double v9, v7, v9

    div-double/2addr v9, v7

    aput-wide v9, v4, v2

    aput-object v4, v1, v2

    new-array v4, v0, [D

    const-wide/16 v9, 0x0

    aput-wide v9, v4, v6

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    neg-double v9, v9

    div-double/2addr v9, v7

    aput-wide v9, v4, v2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    add-double/2addr v9, v7

    div-double/2addr v9, v7

    aput-wide v9, v4, v3

    aput-object v4, v1, v3

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->l:[[D

    const/4 v1, 0x4

    new-array v1, v1, [D

    const-wide v4, 0x3fc5555555555555L    # 0.16666666666666666

    aput-wide v4, v1, v6

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    sub-double v9, v7, v9

    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    div-double/2addr v9, v11

    aput-wide v9, v1, v2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    add-double/2addr v9, v7

    div-double/2addr v9, v11

    aput-wide v9, v1, v3

    aput-wide v4, v1, v0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->m:[D

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 8

    const-string v1, "Gill"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->k:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->l:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->m:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    return-void
.end method
