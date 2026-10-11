.class public Lorg/apache/commons/math3/util/IterationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/util/IterationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/commons/math3/util/IterationManager$a;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/util/IterationManager$a;-><init>(Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/IterationManager;-><init>(ILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withCallback(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor$MaxCountExceededCallback;)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 7
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addIterationListener(Lorg/apache/commons/math3/util/IterationListener;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/IterationListener;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/util/IterationListener;->initializationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/IterationListener;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/util/IterationListener;->iterationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/IterationListener;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/util/IterationListener;->iterationStarted(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/IterationListener;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/util/IterationListener;->terminationPerformed(Lorg/apache/commons/math3/util/IterationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getIterations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getMaxIterations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public incrementIterationCount()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    return-void
.end method

.method public removeIterationListener(Lorg/apache/commons/math3/util/IterationListener;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/IterationManager;->b:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetIterationCount()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/util/IterationManager;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method
