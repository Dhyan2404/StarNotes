.class public Lorg/apache/commons/math3/random/GaussianRandomGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# instance fields
.field public final a:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/random/GaussianRandomGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/random/GaussianRandomGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method
