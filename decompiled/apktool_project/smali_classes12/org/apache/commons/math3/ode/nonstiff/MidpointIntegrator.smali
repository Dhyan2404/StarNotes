.class public Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field public static final k:[D

.field public static final l:[[D

.field public static final m:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [D

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    aput-wide v3, v1, v2

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->k:[D

    new-array v1, v0, [[D

    new-array v0, v0, [D

    aput-wide v3, v0, v2

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->l:[[D

    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->m:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 8

    const-string v1, "midpoint"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->k:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->l:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->m:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    return-void
.end method
