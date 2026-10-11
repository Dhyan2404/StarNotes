.class public Lnet/sf/saxon/functions/CurrentGroupCall;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public n:Z

.field public o:Lnet/sf/saxon/type/ItemType;

.field public p:Lnet/sf/saxon/expr/instruct/ForEachGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->n:Z

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    return-void
.end method

.method public static findControllingInstruction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/ForEachGroup;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    if-eqz p0, :cond_2

    instance-of v1, p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSortKeyDefinitionList()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v2

    if-ne v0, v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

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

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/CurrentGroupCall;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

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

.method public computeSpecialProperties()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CurrentGroupCall;->getControllingInstruction()Lnet/sf/saxon/expr/instruct/ForEachGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/functions/CurrentGroupCall;

    invoke-direct {p1}, Lnet/sf/saxon/functions/CurrentGroupCall;-><init>()V

    iget-boolean v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->n:Z

    iput-boolean v0, p1, Lnet/sf/saxon/functions/CurrentGroupCall;->n:Z

    iget-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    iput-object v0, p1, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    iput-object p0, p1, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    return-object p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "currentGroup"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getControllingInstruction()Lnet/sf/saxon/expr/instruct/ForEachGroup;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/functions/CurrentGroupCall;->findControllingInstruction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/ForEachGroup;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    return-object p0
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
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getScopingExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CurrentGroupCall;->getControllingInstruction()Lnet/sf/saxon/expr/instruct/ForEachGroup;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "CurrentGroup"

    return-object p0
.end method

.method public isInHigherOrderOperand()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->n:Z

    return p0
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/sort/GroupIterator;->iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "There is no current group"

    const-string v1, "XTDE1061"

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public resetLocalStaticProperties()V
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public setControllingInstruction(Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/type/ItemType;Z)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CurrentGroupCall;->resetLocalStaticProperties()V

    iput-object p1, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->p:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    iput-boolean p3, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->n:Z

    iput-object p2, p0, Lnet/sf/saxon/functions/CurrentGroupCall;->o:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CurrentGroupCall;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "current-group()"

    return-object p0
.end method
