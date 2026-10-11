.class public Lnet/sf/saxon/expr/flwor/WindowClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/flwor/WindowClause$Window;
    }
.end annotation


# static fields
.field public static final END_ITEM:I = 0x5

.field public static final END_ITEM_POSITION:I = 0x6

.field public static final END_NEXT_ITEM:I = 0x8

.field public static final END_PREVIOUS_ITEM:I = 0x7

.field public static final START_ITEM:I = 0x1

.field public static final START_ITEM_POSITION:I = 0x2

.field public static final START_NEXT_ITEM:I = 0x4

.field public static final START_PREVIOUS_ITEM:I = 0x3

.field public static final WINDOW_VAR:I


# instance fields
.field public d:Z

.field public e:Z

.field public f:Lnet/sf/saxon/expr/Operand;

.field public g:Lnet/sf/saxon/expr/Operand;

.field public h:Lnet/sf/saxon/expr/Operand;

.field public i:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/expr/flwor/LocalVariableBinding;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lnet/sf/saxon/expr/ItemTypeCheckingFunction;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->e:Z

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->b(Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public static makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot use document projection with windowing"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkWindowContents(Lnet/sf/saxon/expr/flwor/WindowClause$Window;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required type of window allows only a single item; window has length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XPTY0004"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getItemTypeChecker()Lnet/sf/saxon/expr/ItemTypeCheckingFunction;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lnet/sf/saxon/expr/ItemMappingIterator;

    new-instance v1, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    iget-object p1, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->contents:Ljava/util/List;

    invoke-direct {v1, p1}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V

    new-instance p0, Lcom/sunia/HTREnginev2/n7o;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/n7o;-><init>()V

    invoke-static {v0, p0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    :cond_2
    return-void
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/flwor/WindowClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/WindowClause;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-boolean v1, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->d:Z

    iput-boolean v1, v0, Lnet/sf/saxon/expr/flwor/WindowClause;->d:Z

    iget-boolean v1, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->e:Z

    iput-boolean v1, v0, Lnet/sf/saxon/expr/flwor/WindowClause;->e:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getStartCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->initStartCondition(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->initEndCondition(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    iput-object p0, v0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    return-object v0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->isSlidingWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "slidingWindow"

    goto :goto_0

    :cond_0
    const-string v0, "tumblingWindow"

    :goto_0
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startSubsidiaryElement(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endSubsidiaryElement()V

    const-string v0, "start"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startSubsidiaryElement(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getStartCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endSubsidiaryElement()V

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->h:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_1

    const-string v0, "end"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startSubsidiaryElement(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endSubsidiaryElement()V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->WINDOW:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getEndCondition()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->h:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getItemTypeChecker()Lnet/sf/saxon/expr/ItemTypeCheckingFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->j:Lnet/sf/saxon/expr/ItemTypeCheckingFunction;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/flwor/WindowClausePull;

    invoke-direct {v0, p1, p0, p2}, Lnet/sf/saxon/expr/flwor/WindowClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/WindowClause;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 0

    new-instance p3, Lnet/sf/saxon/expr/flwor/WindowClausePush;

    invoke-direct {p3, p2, p1, p0}, Lnet/sf/saxon/expr/flwor/WindowClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/WindowClause;)V

    return-object p3
.end method

.method public getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0}, Lnet/sf/saxon/z/IntHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->valueSet()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    add-int/lit8 v3, v1, 0x1

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSequence()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->f:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStartCondition()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->g:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public initEndCondition(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->h:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->f:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public initStartCondition(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->g:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public isIncludeUnclosedWindows()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->e:Z

    return p0
.end method

.method public isSlidingWindow()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->d:Z

    return p0
.end method

.method public isTumblingWindow()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->d:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isWindowMustBeSingleton()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->k:Z

    return p0
.end method

.method public matchesEnd(Lnet/sf/saxon/expr/flwor/WindowClause$Window;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;ILnet/sf/saxon/expr/XPathContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    iget-object v1, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startItem:Lnet/sf/saxon/om/Item;

    invoke-interface {p6, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    iget v2, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPosition:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p6, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    iget-object v1, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startNextItem:Lnet/sf/saxon/om/Item;

    invoke-static {v1}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    invoke-interface {p6, v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    iget-object p1, p1, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->startPreviousItem:Lnet/sf/saxon/om/Item;

    invoke-static {p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-interface {p6, v0, p1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_3
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p1

    invoke-interface {p6, p1, p3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_4
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p1

    new-instance p3, Lnet/sf/saxon/value/Int64Value;

    int-to-long v0, p5

    invoke-direct {p3, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p6, p1, p3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p1

    invoke-static {p4}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object p3

    invoke-interface {p6, p1, p3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_6
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p1

    invoke-static {p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    invoke-interface {p6, p1, p2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getEndCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p6}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public matchesStart(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;ILnet/sf/saxon/expr/XPathContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    invoke-interface {p5, v0, p2}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p2

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    int-to-long v1, p4

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p5, p2, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_1
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p2

    invoke-static {p3}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object p3

    invoke-interface {p5, p2, p3}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_2
    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result p2

    invoke-static {p1}, Lnet/sf/saxon/expr/flwor/WindowClause;->makeValue(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-interface {p5, p2, p1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getStartCondition()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p5}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->f:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->g:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->h:Lnet/sf/saxon/expr/Operand;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    :cond_0
    return-void
.end method

.method public setEndCondition(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->h:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setIncludeUnclosedWindows(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->e:Z

    return-void
.end method

.method public setIsSlidingWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->d:Z

    return-void
.end method

.method public setSequence(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->f:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setStartCondition(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->g:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setVariableBinding(ILnet/sf/saxon/expr/flwor/LocalVariableBinding;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0}, Lnet/sf/saxon/z/IntHashMap;->valueSet()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Two variables in a window clause cannot have the same name ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XQST0103"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->i:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/WindowClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/expr/flwor/WindowClause$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const-string v4, "XPTY0004"

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/4 p1, 0x5

    if-eq v3, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The items in the window will always be instances of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", never of the required type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p2, p1, v4, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p2

    :cond_1
    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/flwor/WindowClause;->getVariableBinding(I)Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3, p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    new-instance p2, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-direct {p2, v1, v2, v3, p1}, Lnet/sf/saxon/expr/ItemTypeCheckingFunction;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/Configuration;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->j:Lnet/sf/saxon/expr/ItemTypeCheckingFunction;

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/flwor/WindowClause;->k:Z

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_2

    return-void

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const-string p2, "The value of the window variable can never be an empty sequence"

    invoke-direct {p1, p2, v4, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
