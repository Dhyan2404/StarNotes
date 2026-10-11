.class public Lnet/sf/saxon/expr/sort/GroupEndingIterator;
.super Lnet/sf/saxon/expr/sort/GroupMatchingIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/GroupIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->select:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->pattern:Lnet/sf/saxon/pattern/Pattern;

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->baseContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->runningContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->population:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->nextItem:Lnet/sf/saxon/om/Item;

    return-void
.end method


# virtual methods
.method public advance()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->currentMembers:Ljava/util/List;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->current:Lnet/sf/saxon/om/Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->current:Lnet/sf/saxon/om/Item;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->nextItem:Lnet/sf/saxon/om/Item;

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->nextItem:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->pattern:Lnet/sf/saxon/pattern/Pattern;

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->runningContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->population:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->nextItem:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->population:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->nextItem:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->currentMembers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getLength()I
    .locals 3

    :try_start_0
    new-instance v0, Lnet/sf/saxon/expr/sort/GroupEndingIterator;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->select:Lnet/sf/saxon/expr/Expression;

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->pattern:Lnet/sf/saxon/pattern/Pattern;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->baseContext:Lnet/sf/saxon/expr/XPathContext;

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/expr/sort/GroupEndingIterator;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {v0}, Lnet/sf/saxon/functions/Count;->steppingCount(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
