.class public Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public final e:Lnet/sf/saxon/expr/Callable;

.field public final f:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Callable;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;->e:Lnet/sf/saxon/expr/Callable;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/FocusIterator;->position()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;I)V

    new-instance v0, Lcom/sunia/HTREnginev2/umd;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/umd;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/iter/ManualIterator;->setLengthFinder(Ljava/util/function/Supplier;)V

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;->b(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getLast()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;->e:Lnet/sf/saxon/expr/Callable;

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/CallableWithBoundFocus;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p1, p0, p2}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
