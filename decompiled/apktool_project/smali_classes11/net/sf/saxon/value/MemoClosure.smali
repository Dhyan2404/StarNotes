.class public Lnet/sf/saxon/value/MemoClosure;
.super Lnet/sf/saxon/value/Closure;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextOriginator;


# instance fields
.field public e:Lnet/sf/saxon/om/Sequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/Closure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/value/Closure;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/Closure;->setExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 4
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    .line 6
    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/Closure;->setSavedXPathContext(Lnet/sf/saxon/expr/XPathContextMajor;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/Closure;->saveContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/value/MemoClosure;->e:Lnet/sf/saxon/om/Sequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/value/Closure;->expression:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/Closure;->inputIterator:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    iget-object v0, p0, Lnet/sf/saxon/value/Closure;->inputIterator:Lnet/sf/saxon/om/SequenceIterator;

    instance-of v1, v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->isActuallyGrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/Closure;->inputIterator:Lnet/sf/saxon/om/SequenceIterator;

    check-cast v0, Lnet/sf/saxon/tree/iter/GroundedIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/GroundedIterator;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/MemoClosure;->e:Lnet/sf/saxon/om/Sequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/value/Closure;->inputIterator:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->toMemoSequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/MemoClosure;->e:Lnet/sf/saxon/om/Sequence;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/MemoClosure;->a()V

    iget-object v0, p0, Lnet/sf/saxon/value/MemoClosure;->e:Lnet/sf/saxon/om/Sequence;

    instance-of v1, v0, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0, p1}, Lnet/sf/saxon/om/GroundedValue;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    instance-of v1, v0, Lnet/sf/saxon/om/MemoSequence;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/om/MemoSequence;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/MemoSequence;->itemAt(I)Lnet/sf/saxon/om/Item;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/MemoClosure;->a()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lnet/sf/saxon/value/MemoClosure;->e:Lnet/sf/saxon/om/Sequence;

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public makeRepeatable()Lnet/sf/saxon/om/Sequence;
    .locals 0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/value/MemoClosure;->e:Lnet/sf/saxon/om/Sequence;

    instance-of v1, v0, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/om/GroundedValue;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/MemoClosure;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method
