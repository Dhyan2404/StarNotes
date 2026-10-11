.class public Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$e;->a:D

    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$e;->a:D

    neg-double p0, p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public b(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/MultivariateFunctionMappingAdapter$e;->a:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method
