.class public Lnet/sf/saxon/value/SingletonClosure;
.super Lnet/sf/saxon/value/Closure;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Sequence;


# instance fields
.field public e:Z

.field public f:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/value/Closure;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/value/SingletonClosure;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/SingletonClosure;->f:Lnet/sf/saxon/om/Item;

    iput-object p1, p0, Lnet/sf/saxon/value/Closure;->expression:Lnet/sf/saxon/expr/Expression;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/value/Closure;->saveContext(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method


# virtual methods
.method public asItem()Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/value/SingletonClosure;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/Closure;->expression:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/SingletonClosure;->f:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/value/SingletonClosure;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/value/Closure;->savedXPathContext:Lnet/sf/saxon/expr/XPathContextMajor;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/SingletonClosure;->f:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getLength()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/value/SingletonClosure;->asItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public itemAt(I)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SingletonClosure;->asItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SingletonClosure;->asItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public bridge synthetic makeRepeatable()Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/value/SingletonClosure;->makeRepeatable()Lnet/sf/saxon/value/SingletonClosure;

    move-result-object p0

    return-object p0
.end method

.method public makeRepeatable()Lnet/sf/saxon/value/SingletonClosure;
    .locals 0

    .line 1
    return-object p0
.end method

.method public materialize()Lnet/sf/saxon/om/GroundedValue;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SingletonClosure;->asItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method
