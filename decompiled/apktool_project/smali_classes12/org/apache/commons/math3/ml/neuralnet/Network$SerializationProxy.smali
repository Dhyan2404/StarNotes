.class Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final featureSize:I

.field private final neighbourIdList:[[J

.field private final neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

.field private final nextId:J


# direct methods
.method public constructor <init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->nextId:J

    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->featureSize:I

    iput-object p4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neighbourIdList:[[J

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->nextId:J

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->featureSize:I

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neuronList:[Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    iget-object v5, p0, Lorg/apache/commons/math3/ml/neuralnet/Network$SerializationProxy;->neighbourIdList:[[J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI[Lorg/apache/commons/math3/ml/neuralnet/Neuron;[[J)V

    return-object v6
.end method
