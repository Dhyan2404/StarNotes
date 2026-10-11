.class public Lnet/sf/saxon/expr/sort/MergeInstr;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;,
        Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;
    }
.end annotation


# static fields
.field public static final o:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field protected comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

.field protected mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

.field public n:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/sort/MergeInstr;->o:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->s(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr;->r(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/accum/AccumulatorManager;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lnet/sf/saxon/expr/sort/MergeInstr;->q(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/accum/AccumulatorManager;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Lnet/sf/saxon/expr/OperandRole;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/MergeInstr;->o:Lnet/sf/saxon/expr/OperandRole;

    return-object v0
.end method

.method public static synthetic i(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr;->m(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/expr/sort/MergeInstr;->p(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V
    .locals 6

    if-nez p0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-class v0, Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/CurrentMergeGroup;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/CurrentMergeGroup;->setControllingInstruction(Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    goto/16 :goto_5

    :cond_1
    const-class v0, Lnet/sf/saxon/functions/CurrentMergeKey;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/CurrentMergeKey;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/CurrentMergeKey;->setControllingInstruction(Lnet/sf/saxon/expr/sort/MergeInstr;)V

    goto/16 :goto_5

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p0, Lnet/sf/saxon/expr/sort/MergeInstr;

    if-ne p0, p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getMergeSources()[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_b

    aget-object v2, p0, v1

    iget-object v3, v2, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    :cond_5
    iget-object v3, v2, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    :cond_6
    iget-object v3, v2, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-nez p2, :cond_a

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->isEvaluatedRepeatedly()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v0, 0x1

    :goto_4
    invoke-static {v2, p1, v0}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    goto :goto_2

    :cond_b
    :goto_5
    return-void
.end method

.method private synthetic q(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/accum/AccumulatorManager;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p5}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p5

    invoke-virtual {p5}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lnet/sf/saxon/functions/DocumentFn;->makeDoc(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    iget-object p2, p4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->accumulators:Ljava/util/Set;

    invoke-virtual {p3, p1, p2}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->setApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;Ljava/util/Set;)V

    :cond_0
    return-object p0
.end method

.method private synthetic r(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic s(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p1, p2, p0, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method


# virtual methods
.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    return-void
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 6

    new-instance v0, Lnet/sf/saxon/expr/sort/MergeInstr;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/MergeInstr;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v1, v1

    new-array v1, v1, [Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    invoke-virtual {v4, v0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->copyMergeSource(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/expr/sort/MergeInstr;->init([Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/sort/MergeInstr;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "merge"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    const-string v4, "mergeSrc"

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->startSubsidiaryElement(Ljava/lang/String;)V

    iget-object v4, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v5, "saxon-merge-source-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "name"

    iget-object v5, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v4, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_1

    const-string v5, "validation"

    invoke-static {v4}, Lnet/sf/saxon/lib/Validation;->describe(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v4, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    if-ne v4, v6, :cond_2

    iget-object v4, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->schemaType:Lnet/sf/saxon/type/SchemaType;

    if-eqz v4, :cond_2

    const-string v5, "type"

    invoke-interface {v4}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_2
    iget-object v4, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->accumulators:Ljava/util/Set;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->accumulators:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v6}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v5, "accum"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-boolean v4, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->streamable:Z

    if-eqz v4, :cond_6

    const-string v4, "flags"

    const-string v5, "s"

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, "forEachItem"

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_7
    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, "forEachStream"

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_8
    const-string v4, "selectRows"

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getMergeKeyDefinitionSet()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endSubsidiaryElement()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public fixupGroupReferences()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Lnet/sf/saxon/expr/sort/MergeInstr;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/MergeInstr;Z)V

    return-void
.end method

.method public getAction()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getComparer(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;[Lnet/sf/saxon/expr/sort/AtomicComparer;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;",
            "[",
            "Lnet/sf/saxon/expr/sort/AtomicComparer;",
            ")",
            "Ljava/util/Comparator<",
            "Lnet/sf/saxon/value/ObjectValue<",
            "Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/sort/MergeInstr$b;

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr$b;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;[Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    return-object v0
.end method

.method public getGroupingKey()Lnet/sf/saxon/expr/Expression;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xae

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getMergeSources()[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "MergeInstr"

    return-object p0
.end method

.method public init([Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/sort/MergeInstr;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->n:Lnet/sf/saxon/expr/Operand;

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr;->m(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    invoke-virtual {p0, p1, v0, v2}, Lnet/sf/saxon/expr/sort/MergeInstr;->p(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {p0, v4, v0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getComparer(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;[Lnet/sf/saxon/expr/sort/AtomicComparer;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr;->o(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/LastPositionFinder;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;Lnet/sf/saxon/expr/LastPositionFinder;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/XPathContextMinor;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p1

    invoke-interface {p1, v3}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    new-instance v0, Lnet/sf/saxon/expr/ContextMappingIterator;

    new-instance v1, Lcom/sunia/HTREnginev2/nmj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nmj;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;)V

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/expr/ContextMappingIterator;-><init>(Lnet/sf/saxon/expr/ContextMappingFunction;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public final k([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x1

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Corresponding xsl:merge-key attributes in different xsl:merge-source elements do not have the same effective values"

    const-string v0, "XTDE2210"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final m(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v0, v0

    new-array v0, v0, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    aget-object v3, v3, v1

    iget-object v3, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    iget-object v4, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->fix(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/sort/MergeInstr;->k([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    aget-object v0, v0, v1

    iget-object v0, v0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    move v2, v1

    :goto_2
    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    aget-object v3, v3, v1

    iget-object v3, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    aget-object v3, v3, v1

    iget-object v3, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getFinalComparator()Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    aget-object v3, v3, v1

    iget-object v3, v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->makeComparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v3

    :cond_2
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final mayCreateNewNodes()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n([Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-interface {v0, v1}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    invoke-virtual {p3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p4}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p4

    invoke-interface {v0, p4}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    new-instance p4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;

    invoke-direct {p4, v0, p3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    new-instance v1, Lnet/sf/saxon/expr/ContextMappingIterator;

    new-instance v2, Lcom/sunia/HTREnginev2/lmj;

    invoke-direct {v2, p4}, Lcom/sunia/HTREnginev2/lmj;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;)V

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/expr/ContextMappingIterator;-><init>(Lnet/sf/saxon/expr/ContextMappingFunction;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0, p2, p1, p3, v1}, Lnet/sf/saxon/expr/sort/MergeInstr;->t(Lnet/sf/saxon/om/SequenceIterator;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/ContextMappingIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/LastPositionFinder;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/MergeInstr$a;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr$a;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget-object v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    if-eqz v5, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    if-eqz v5, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v5, Lnet/sf/saxon/expr/Operand;

    iget-object v4, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    sget-object v6, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v5, p0, v4, v6}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    aget-object v7, v2, v6

    invoke-virtual {v7}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v8, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {v7}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v8}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v8, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    sget-object v8, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v8, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, p2

    :goto_1
    iget-object v9, v7, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v9, p1, v8}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {v7}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v7

    if-nez v4, :cond_2

    move-object v4, v7

    goto :goto_2

    :cond_2
    invoke-static {v4, v7, v1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/MergeInstr;->setAction(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    aget-object p1, p1, v5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public final p(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->getInstance()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object v0

    iget-object v9, v6, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v10, v9

    const/4 v1, 0x0

    move-object v11, v0

    move v12, v1

    :goto_0
    if-ge v12, v10, :cond_4

    aget-object v13, v9, v12

    iget-boolean v0, v13, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->streamable:Z

    if-eqz v0, :cond_0

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    iget v0, v13, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    invoke-virtual {v2, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    iget-object v0, v13, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->schemaType:Lnet/sf/saxon/type/SchemaType;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    iget-object v0, v13, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->accumulators:Ljava/util/Set;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/lib/ParseOptions;->setApplicableAccumulators(Ljava/util/Set;)V

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object v4

    new-instance v15, Lcom/sunia/HTREnginev2/kmj;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/kmj;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/accum/AccumulatorManager;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    invoke-static {v14, v15}, Lnet/sf/saxon/expr/ItemMappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/XPathContextMinor;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v2

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    new-instance v3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;

    invoke-direct {v3, v2, v13}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    new-instance v4, Lnet/sf/saxon/expr/ContextMappingIterator;

    new-instance v5, Lcom/sunia/HTREnginev2/lmj;

    invoke-direct {v5, v3}, Lcom/sunia/HTREnginev2/lmj;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;)V

    invoke-direct {v4, v5, v2}, Lnet/sf/saxon/expr/ContextMappingIterator;-><init>(Lnet/sf/saxon/expr/ContextMappingFunction;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v6, v11, v7, v13, v4}, Lnet/sf/saxon/expr/sort/MergeInstr;->t(Lnet/sf/saxon/om/SequenceIterator;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/ContextMappingIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v11

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/XPathContextMinor;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v6, v7, v11, v13, v1}, Lnet/sf/saxon/expr/sort/MergeInstr;->n([Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v11

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v7, v11, v13, v8}, Lnet/sf/saxon/expr/sort/MergeInstr;->n([Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    move-object v11, v0

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v11
.end method

.method public prepareForStreaming()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->prepareForStreaming()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/sunia/HTREnginev2/mmj;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/mmj;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/event/Outputter;)V

    invoke-static {v0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    throw p0
.end method

.method public setAction(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public final t(Lnet/sf/saxon/om/SequenceIterator;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/ContextMappingIterator;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/sort/MergeIterator;

    iget-object p3, p3, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {p0, p3, p2}, Lnet/sf/saxon/expr/sort/MergeInstr;->getComparer(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;[Lnet/sf/saxon/expr/sort/AtomicComparer;)Ljava/util/Comparator;

    move-result-object p0

    invoke-direct {v0, p1, p4, p0}, Lnet/sf/saxon/expr/sort/MergeIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    move-object p4, v0

    :cond_1
    :goto_0
    return-object p4
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v6

    iget-object v7, v0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v5

    :goto_0
    if-ge v10, v8, :cond_7

    aget-object v12, v7, v10

    invoke-virtual {v12}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v13

    const/4 v14, 0x4

    if-eqz v13, :cond_0

    iget-object v13, v12, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v13, v1, v2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {v12}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v13

    invoke-virtual {v3, v13, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v13

    goto :goto_1

    :cond_0
    invoke-virtual {v12}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v13, v12, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v13, v1, v2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance v13, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v15, "xsl:merge/for-each-source"

    invoke-direct {v13, v14, v15, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v12}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v15

    sget-object v11, Lnet/sf/saxon/value/SequenceType;->STRING_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v6, v15, v11, v13, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v12, v11}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->setForEachStream(Lnet/sf/saxon/expr/Expression;)V

    sget-object v11, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v3, v11, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object v13, v2

    :goto_1
    iget-object v11, v12, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v11, v1, v13}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {v12}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v11}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v11

    if-nez v9, :cond_2

    move-object v9, v11

    goto :goto_2

    :cond_2
    invoke-static {v9, v11, v4}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v9

    :goto_2
    invoke-virtual {v3, v9, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v11

    iget-object v12, v12, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getSortKey()Lnet/sf/saxon/expr/Expression;

    move-result-object v15

    invoke-virtual {v15, v1, v11}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v15

    if-eqz v15, :cond_3

    new-instance v2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-object/from16 v16, v4

    const-string v4, "xsl:merge-key/select"

    invoke-direct {v2, v14, v4, v5}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v4, "XTTE1020"

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    const/16 v4, 0x6000

    invoke-static {v15, v4, v2}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    goto :goto_4

    :cond_3
    move-object/from16 v16, v4

    :goto_4
    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getLanguage()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v3, v9, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v13, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setLanguage(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v13, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setOrder(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCollationNameExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1, v11}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v13, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getCaseOrder()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v13, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCaseOrder(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v13}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->getDataTypeExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1, v11}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v13, v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setDataTypeExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_5
    move-object/from16 v2, p2

    move-object/from16 v4, v16

    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_7
    iget-object v2, v0, Lnet/sf/saxon/expr/sort/MergeInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3, v9, v5}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v1, v0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->fixupGroupReferences()V

    return-object v0
.end method
