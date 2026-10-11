.class public Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x49a5cea5cb791ffdL


# instance fields
.field private final weight:D

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->weight:D

    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->x:D

    iput-wide p5, p0, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->y:D

    return-void
.end method


# virtual methods
.method public getWeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->weight:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->y:D

    return-wide v0
.end method
