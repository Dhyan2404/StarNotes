.class public Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ee43e318c38873aL


# instance fields
.field private final transient coefficients:Lorg/apache/commons/math3/linear/RealVector;

.field private final constantTerm:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->constantTerm:D

    return-void
.end method

.method public constructor <init>([DD)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;-><init>(Lorg/apache/commons/math3/linear/RealVector;D)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const-string v0, "coefficients"

    invoke-static {p0, v0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->deserializeRealVector(Ljava/lang/Object;Ljava/lang/String;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->serializeRealVector(Lorg/apache/commons/math3/linear/RealVector;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->constantTerm:D

    iget-wide v5, p1, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->constantTerm:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getCoefficients()Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    return-object p0
.end method

.method public getConstantTerm()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->constantTerm:D

    return-wide v0
.end method

.method public getValue(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->constantTerm:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public getValue([D)D
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->constantTerm:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->constantTerm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;->coefficients:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
