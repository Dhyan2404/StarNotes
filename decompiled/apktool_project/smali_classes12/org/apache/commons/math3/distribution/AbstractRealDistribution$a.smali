.class public Lorg/apache/commons/math3/distribution/AbstractRealDistribution$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:D

.field public final synthetic f:Lorg/apache/commons/math3/distribution/AbstractRealDistribution;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/distribution/AbstractRealDistribution;D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$a;->f:Lorg/apache/commons/math3/distribution/AbstractRealDistribution;

    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$a;->e:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$a;->f:Lorg/apache/commons/math3/distribution/AbstractRealDistribution;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$a;->e:D

    sub-double/2addr p1, v0

    return-wide p1
.end method
