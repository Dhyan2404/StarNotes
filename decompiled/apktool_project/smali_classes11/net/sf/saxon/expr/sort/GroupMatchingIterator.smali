.class public abstract Lnet/sf/saxon/expr/sort/GroupMatchingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/expr/sort/GroupIterator;


# instance fields
.field protected baseContext:Lnet/sf/saxon/expr/XPathContext;

.field protected current:Lnet/sf/saxon/om/Item;

.field protected currentMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected nextItem:Lnet/sf/saxon/om/Item;

.field protected pattern:Lnet/sf/saxon/pattern/Pattern;

.field protected population:Lnet/sf/saxon/om/FocusIterator;

.field protected position:I

.field protected runningContext:Lnet/sf/saxon/expr/XPathContext;

.field protected select:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->current:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->position:I

    return-void
.end method


# virtual methods
.method public abstract advance()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->population:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->population:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->nextItem:Lnet/sf/saxon/om/Item;

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

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->currentMembers:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->nextItem:Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->current:Lnet/sf/saxon/om/Item;

    iget v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->position:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->advance()V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->current:Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->current:Lnet/sf/saxon/om/Item;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/sort/GroupMatchingIterator;->position:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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
