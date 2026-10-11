.class public abstract Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field protected context:Lnet/sf/saxon/expr/XPathContext;

.field protected currentIter:Lnet/sf/saxon/om/SequenceIterator;

.field protected currentOperand:I

.field public e:Z

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->size:I

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentIter:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    return-void
.end method

.method public discharge()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->e:Z

    return-void
.end method

.method public abstract getNthChildIterator(I)Lnet/sf/saxon/om/SequenceIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public init(ILnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->size:I

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentIter:Lnet/sf/saxon/om/SequenceIterator;

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->getNthChildIterator(I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentIter:Lnet/sf/saxon/om/SequenceIterator;

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->e:Z

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentIter:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentIter:Lnet/sf/saxon/om/SequenceIterator;

    iget v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    iget v2, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->size:I

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/AbstractBlockIterator;->currentOperand:I

    return-object v1
.end method
