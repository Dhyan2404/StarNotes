.class Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/Neuron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final features:[D

.field private final identifier:J


# direct methods
.method public constructor <init>(J[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->identifier:J

    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->features:[D

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->identifier:J

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;->features:[D

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;-><init>(J[D)V

    return-object v0
.end method
