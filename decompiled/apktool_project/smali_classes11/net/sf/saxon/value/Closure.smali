.class public Lnet/sf/saxon/value/Closure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Sequence;
.implements Lnet/sf/saxon/expr/ContextOriginator;


# instance fields
.field protected depth:I

.field protected expression:Lnet/sf/saxon/expr/Expression;

.field protected inputIterator:Lnet/sf/saxon/om/SequenceIterator;

.field protected savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/value/Closure;->depth:I

    return-void
.end method

.method public static make(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;I)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lnet/sf/saxon/Configuration;->makeClosure(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/Closure;->expression:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getSavedXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    return-object p0
.end method

.method public head()Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/Closure;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

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

.method public iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/value/Closure;->inputIterator:Lnet/sf/saxon/om/SequenceIterator;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/value/Closure;->expression:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/Closure;->inputIterator:Lnet/sf/saxon/om/SequenceIterator;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A Closure can only be read once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeRepeatable()Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public reduce()Lnet/sf/saxon/om/GroundedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/Closure;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public saveContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StackFrame;->getStackFrameValues()[Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getSlotsUsed()[I

    move-result-object p1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StackFrame;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v2

    new-array v2, v2, [Lnet/sf/saxon/om/Sequence;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, p1, v4

    aget-object v6, v1, v5

    instance-of v7, v6, Lnet/sf/saxon/value/Closure;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lnet/sf/saxon/value/Closure;

    iget v7, v7, Lnet/sf/saxon/value/Closure;->depth:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_0

    invoke-interface {v6}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    iget v6, p0, Lnet/sf/saxon/value/Closure;->depth:I

    if-le v7, v6, :cond_1

    iput v7, p0, Lnet/sf/saxon/value/Closure;->depth:I

    :cond_1
    :goto_1
    aget-object v6, v1, v5

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;[Lnet/sf/saxon/om/Sequence;)V

    :cond_3
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/FocusIterator;->current()Lnet/sf/saxon/om/Item;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {p2, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    iget-object p0, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :cond_4
    return-void
.end method

.method public setExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/value/Closure;->expression:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public setSavedXPathContext(Lnet/sf/saxon/expr/XPathContextMajor;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    return-void
.end method
