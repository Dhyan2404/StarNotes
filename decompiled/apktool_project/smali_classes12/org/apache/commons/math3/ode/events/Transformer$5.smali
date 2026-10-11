.class final enum Lorg/apache/commons/math3/ode/events/Transformer$5;
.super Lorg/apache/commons/math3/ode/events/Transformer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/Transformer;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/Transformer$1;)V

    return-void
.end method


# virtual methods
.method public transformed(D)D
    .locals 4

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    neg-double v2, p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method
