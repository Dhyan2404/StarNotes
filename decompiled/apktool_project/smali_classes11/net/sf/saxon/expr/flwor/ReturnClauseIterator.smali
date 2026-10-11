.class public Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/expr/flwor/TuplePull;

.field public final f:Lnet/sf/saxon/expr/Expression;

.field public final g:Lnet/sf/saxon/expr/XPathContext;

.field public h:Lnet/sf/saxon/om/SequenceIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->e:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/FLWORExpression;->getReturnClause()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->f:Lnet/sf/saxon/expr/Expression;

    iput-object p3, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->e:Lnet/sf/saxon/expr/flwor/TuplePull;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    :cond_0
    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object v1, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->e:Lnet/sf/saxon/expr/flwor/TuplePull;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/flwor/TuplePull;->nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->f:Lnet/sf/saxon/expr/Expression;

    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    iput-object v1, p0, Lnet/sf/saxon/expr/flwor/ReturnClauseIterator;->h:Lnet/sf/saxon/om/SequenceIterator;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method
