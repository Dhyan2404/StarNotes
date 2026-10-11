.class public Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/functions/SystemFunction;

.field public final f:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/SystemFunction;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->e:Lnet/sf/saxon/functions/SystemFunction;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p1

    instance-of p2, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->isStreamed()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->f:Lnet/sf/saxon/om/Item;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/tree/iter/ManualIterator;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->f:Lnet/sf/saxon/om/Item;

    invoke-direct {v0, v1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->e:Lnet/sf/saxon/functions/SystemFunction;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->e:Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->e:Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->e:Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/SystemFunctionWithBoundContextItem;->e:Lnet/sf/saxon/functions/SystemFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method
