.class public Lnet/sf/saxon/expr/flwor/GroupByClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;,
        Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;
    }
.end annotation


# instance fields
.field public d:Lnet/sf/saxon/Configuration;

.field public e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

.field public f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

.field public g:Lnet/sf/saxon/expr/Operand;

.field public h:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->d:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot use document projection with group-by"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsNonInlineableVariableReference(Lnet/sf/saxon/expr/Binding;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->includesBinding(Lnet/sf/saxon/expr/Binding;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getGroupingTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/TupleExpression;->includesBinding(Lnet/sf/saxon/expr/Binding;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/GroupByClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/GroupByClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/GroupByClause;
    .locals 4

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/flwor/GroupByClause;

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->d:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/flwor/GroupByClause;-><init>(Lnet/sf/saxon/Configuration;)V

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    array-length v1, v1

    new-array v1, v1, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    iput-object v1, v0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, v0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->copy()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    iput-object v1, v0, Lnet/sf/saxon/expr/flwor/GroupByClause;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/flwor/TupleExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/flwor/GroupByClause;->initRetainedTupleExpression(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/TupleExpression;)V

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getGroupingTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/flwor/TupleExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/flwor/TupleExpression;

    invoke-virtual {v0, p1, p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->initGroupingTupleExpression(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/TupleExpression;)V

    return-object v0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3

    const-string v0, "group-by"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/LocalVariableReference;

    const-string v1, "by"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startSubsidiaryElement(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/VariableReference;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "var"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/LocalBinding;->getLocalSlotNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slot"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endSubsidiaryElement()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->GROUP_BY:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getComparisonKey(Lnet/sf/saxon/expr/flwor/Tuple;[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;)Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/Tuple;->getMembers()[Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/GroupByClause$TupleComparisonKey;-><init>([Lnet/sf/saxon/om/Sequence;[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;)V

    return-object p0
.end method

.method public getGroupingTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->h:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/flwor/TupleExpression;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/flwor/GroupByClausePull;

    invoke-direct {v0, p1, p0, p2}, Lnet/sf/saxon/expr/flwor/GroupByClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/GroupByClause;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/flwor/GroupByClausePush;

    invoke-direct {v0, p2, p1, p0, p3}, Lnet/sf/saxon/expr/flwor/GroupByClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/GroupByClause;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->g:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/flwor/TupleExpression;

    return-object p0
.end method

.method public initGroupingTupleExpression(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/TupleExpression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->FLWOR_TUPLE_CONSTRAINED:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->h:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public initRetainedTupleExpression(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/flwor/TupleExpression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->FLWOR_TUPLE_CONSTRAINED:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->g:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getGroupingTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/TupleExpression;->getSize()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getNominalReferenceCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sub-int v2, v1, v0

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRetainedTupleExpression()Lnet/sf/saxon/expr/flwor/TupleExpression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/flwor/TupleExpression;->setVariables(Ljava/util/List;)V

    return-void
.end method

.method public processGroup(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/GroupByClause;->getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;

    iget-object v1, v1, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->groupingValues:Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/Tuple;->getMembers()[Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v3

    invoke-interface {p2, v3, v2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;

    iget-object v4, v4, Lnet/sf/saxon/expr/flwor/GroupByClause$ObjectToBeGrouped;->retainedValues:Lnet/sf/saxon/expr/flwor/Tuple;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/flwor/Tuple;->getMembers()[Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    array-length v5, v1

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v3, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {v3, v2}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v2

    invoke-interface {p2, v2, v3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->h:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->g:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public setComparers([Lnet/sf/saxon/expr/sort/GenericAtomicComparer;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->f:[Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    return-void
.end method

.method public setGroupingTupleExpression(Lnet/sf/saxon/expr/flwor/TupleExpression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->h:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setRetainedTupleExpression(Lnet/sf/saxon/expr/flwor/TupleExpression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->g:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setVariableBindings([Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/GroupByClause;->e:[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "group by ... "

    return-object p0
.end method
