.class public Lnet/sf/saxon/functions/CurrentGroupingKeyCall;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/CurrentGroupingKeyCall;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Lnet/sf/saxon/functions/CurrentGroupingKeyCall;

    invoke-direct {p0}, Lnet/sf/saxon/functions/CurrentGroupingKeyCall;-><init>()V

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "currentGroupingKey"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getScopingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/CurrentGroupCall;->findControllingInstruction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/ForEachGroup;

    move-result-object p0

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/sort/GroupIterator;->getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "There is no current grouping key"

    const-string v1, "XTDE1071"

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
