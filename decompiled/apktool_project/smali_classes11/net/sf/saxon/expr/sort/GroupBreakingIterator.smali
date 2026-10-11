.class public Lnet/sf/saxon/expr/sort/GroupBreakingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/expr/sort/GroupIterator;


# instance fields
.field public final e:Lnet/sf/saxon/expr/Expression;

.field public final f:Lnet/sf/saxon/om/FocusIterator;

.field public final g:Lnet/sf/saxon/om/Function;

.field public final h:Lnet/sf/saxon/expr/XPathContext;

.field public final i:Lnet/sf/saxon/expr/XPathContext;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lnet/sf/saxon/om/Item;

.field public l:Lnet/sf/saxon/om/Item;

.field public m:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->l:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->m:I

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->e:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->g:Lnet/sf/saxon/om/Function;

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->h:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->i:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->k:Lnet/sf/saxon/om/Item;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public final f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->j:Ljava/util/List;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->l:Lnet/sf/saxon/om/Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->k:Lnet/sf/saxon/om/Item;

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->g:Lnet/sf/saxon/om/Function;

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->i:Lnet/sf/saxon/expr/XPathContext;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/sf/saxon/om/Sequence;

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->j:Ljava/util/List;

    invoke-static {v4}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/BooleanValue;

    :try_start_0
    invoke-virtual {v1}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->k:Lnet/sf/saxon/om/Item;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Grouping key values are of non-comparable types"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->i:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->k:Lnet/sf/saxon/om/Item;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->j:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->k:Lnet/sf/saxon/om/Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->l:Lnet/sf/saxon/om/Item;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->m:I

    return-object v0

    :cond_0
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->l:Lnet/sf/saxon/om/Item;

    iget v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->m:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->f()V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupBreakingIterator;->l:Lnet/sf/saxon/om/Item;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
