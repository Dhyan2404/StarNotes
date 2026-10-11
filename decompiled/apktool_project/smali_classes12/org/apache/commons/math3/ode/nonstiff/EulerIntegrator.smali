.class public Lorg/apache/commons/math3/ode/nonstiff/EulerIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field public static final k:[D

.field public static final l:[[D

.field public static final m:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [D

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/EulerIntegrator;->k:[D

    new-array v1, v0, [[D

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/EulerIntegrator;->l:[[D

    const/4 v1, 0x1

    new-array v1, v1, [D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/EulerIntegrator;->m:[D

    return-void
.end method

.method public constructor <init>(D)V
    .locals 8

    const-string v1, "Euler"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/EulerIntegrator;->k:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/EulerIntegrator;->l:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/EulerIntegrator;->m:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    return-void
.end method
