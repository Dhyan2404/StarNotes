.class public Lorg/apache/commons/math3/ode/EquationsMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x132de4dL


# instance fields
.field private final dimension:I

.field private final firstIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    iput p2, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    return-void
.end method


# virtual methods
.method public extractEquationData([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p2

    iget v1, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget p0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public getDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    return p0
.end method

.method public getFirstIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    return p0
.end method

.method public insertEquationData([D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iget p0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->firstIndex:I

    invoke-static {p1, v0, p2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget p0, p0, Lorg/apache/commons/math3/ode/EquationsMapper;->dimension:I

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method
