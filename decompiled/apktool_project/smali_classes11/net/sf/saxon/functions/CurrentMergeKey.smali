.class public Lnet/sf/saxon/functions/CurrentMergeKey;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public h:Lnet/sf/saxon/expr/sort/MergeInstr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentMergeKey;->h:Lnet/sf/saxon/expr/sort/MergeInstr;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/CurrentMergeKey;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getControllingInstruction()Lnet/sf/saxon/expr/sort/MergeInstr;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentMergeKey;->h:Lnet/sf/saxon/expr/sort/MergeInstr;

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/expr/sort/GroupIterator;->getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "There is no current merge key"

    const-string v0, "XTDE3510"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/CurrentMergeKey$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/CurrentMergeKey$a;-><init>(Lnet/sf/saxon/functions/CurrentMergeKey;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public setControllingInstruction(Lnet/sf/saxon/expr/sort/MergeInstr;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/CurrentMergeKey;->h:Lnet/sf/saxon/expr/sort/MergeInstr;

    return-void
.end method
