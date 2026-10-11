.class public Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xdee872d75051531L


# instance fields
.field private final point:D

.field private final value:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->point:D

    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->value:D

    return-void
.end method


# virtual methods
.method public getPoint()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->point:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->value:D

    return-wide v0
.end method
