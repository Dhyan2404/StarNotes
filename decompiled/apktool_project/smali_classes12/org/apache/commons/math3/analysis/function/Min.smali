.class public Lorg/apache/commons/math3/analysis/function/Min;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method
