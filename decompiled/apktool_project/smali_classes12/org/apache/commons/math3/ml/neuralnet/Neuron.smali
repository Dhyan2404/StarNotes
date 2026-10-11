.class public Lorg/apache/commons/math3/ml/neuralnet/Neuron;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299fL


# instance fields
.field private final features:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[D>;"
        }
    .end annotation
.end field

.field private final identifier:J

.field private final numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final size:I


# direct methods
.method public constructor <init>(J[D)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    array-length p1, p3

    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private containSameValues([D[D)Z
    .locals 6

    array-length v0, p2

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-ge v1, v2, :cond_1

    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;

    iget-wide v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron$SerializationProxy;-><init>(J[D)V

    return-object v0
.end method


# virtual methods
.method public compareAndSetFeatures([D[D)Z
    .locals 2

    array-length v0, p2

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->containSameValues([D[D)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getIdentifier()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;-><init>(J[D)V

    iget-object v1, v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, v0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFeatures()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->features:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getIdentifier()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->identifier:J

    return-wide v0
.end method

.method public getNumberOfAttemptedUpdates()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfAttemptedUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfSuccessfulUpdates()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->numberOfSuccessfulUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->size:I

    return p0
.end method
