.class public Lnet/sf/saxon/expr/flwor/ForClause;
.super Lnet/sf/saxon/expr/flwor/Clause;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z


# instance fields
.field protected allowsEmpty:Z

.field protected positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

.field protected rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

.field protected sequenceOp:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/Clause;-><init>()V

    return-void
.end method


# virtual methods
.method public addPredicate(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/Clause;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/lib/Feature;->TRACE_OPTIMIZER_DECISIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v5, v7}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v7

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v3, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v11

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    instance-of v12, v12, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/SlashExpression;->isAbsolute()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v9}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v11}, Lnet/sf/saxon/expr/SlashExpression;->getRemainingSteps()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v9}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v12

    :goto_1
    move-object/from16 v18, v11

    move-object v11, v9

    move-object/from16 v9, v18

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v12}, Lnet/sf/saxon/expr/SlashExpression;->tryToMakeAbsolute()Lnet/sf/saxon/expr/SlashExpression;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v0, v12}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v12}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    invoke-virtual {v12}, Lnet/sf/saxon/expr/SlashExpression;->getRemainingSteps()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v9}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v12

    goto :goto_1

    :cond_2
    move-object v12, v11

    move-object v11, v10

    :goto_2
    iget-object v13, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getNominalReferenceCount()I

    move-result v13

    if-nez v13, :cond_3

    iput-object v10, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    :cond_3
    iget-object v13, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v13, :cond_b

    instance-of v10, v4, Lnet/sf/saxon/expr/ValueComparison;

    if-nez v10, :cond_4

    instance-of v10, v4, Lnet/sf/saxon/expr/GeneralComparison;

    if-nez v10, :cond_4

    instance-of v10, v4, Lnet/sf/saxon/expr/CompareToIntegerConstant;

    if-eqz v10, :cond_b

    :cond_4
    new-array v10, v15, [Lnet/sf/saxon/expr/Binding;

    aput-object v13, v10, v14

    invoke-static {v4, v10}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v10, v4

    check-cast v10, Lnet/sf/saxon/expr/ComparisonExpression;

    const/4 v13, 0x2

    new-array v15, v13, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v10}, Lnet/sf/saxon/expr/ComparisonExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v16

    aput-object v16, v15, v14

    invoke-interface {v10}, Lnet/sf/saxon/expr/ComparisonExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v15, v13

    new-array v10, v13, [Lnet/sf/saxon/expr/Binding;

    iget-object v13, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    aput-object v13, v10, v14

    invoke-static {v1, v10}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v10

    if-eqz v10, :cond_5

    return v14

    :cond_5
    move v10, v14

    const/4 v13, 0x2

    :goto_3
    if-ge v10, v13, :cond_b

    const/4 v13, 0x1

    new-array v3, v13, [Lnet/sf/saxon/expr/Binding;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v13

    aput-object v13, v3, v14

    iget-object v13, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    if-eqz v13, :cond_9

    aget-object v13, v15, v10

    instance-of v13, v13, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v13, :cond_9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-static {v4, v14, v13}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v17, v11

    const/4 v11, 0x1

    if-ne v14, v11, :cond_a

    const/4 v11, 0x0

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aget-object v11, v15, v10

    if-ne v13, v11, :cond_a

    rsub-int/lit8 v11, v10, 0x1

    aget-object v13, v15, v11

    invoke-static {v13}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnFocus(Lnet/sf/saxon/expr/Expression;)Z

    move-result v13

    if-nez v13, :cond_a

    aget-object v11, v15, v11

    invoke-static {v11, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v11

    invoke-direct {v3, v11}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    const-string v11, "position"

    const/4 v13, 0x0

    new-array v14, v13, [Lnet/sf/saxon/expr/Expression;

    invoke-static {v11, v3, v14}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v11, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v11}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v4, v11}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    if-nez v10, :cond_6

    move-object v10, v11

    check-cast v10, Lnet/sf/saxon/expr/ComparisonExpression;

    invoke-interface {v10}, Lnet/sf/saxon/expr/ComparisonExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v10

    goto :goto_4

    :cond_6
    move-object v10, v11

    check-cast v10, Lnet/sf/saxon/expr/ComparisonExpression;

    invoke-interface {v10}, Lnet/sf/saxon/expr/ComparisonExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v10

    :goto_4
    invoke-virtual {v10, v3}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    if-eqz v7, :cond_7

    const-string v3, "Replaced positional variable in predicate by position()"

    invoke-virtual {v6, v3, v11}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :cond_7
    new-instance v3, Lnet/sf/saxon/expr/FilterExpression;

    invoke-direct {v3, v9, v11}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {v11, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v12, v7}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v9

    invoke-virtual {v3, v2, v9}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    new-array v3, v7, [Lnet/sf/saxon/expr/Binding;

    iget-object v7, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    const/4 v10, 0x0

    aput-object v7, v3, v10

    invoke-static {v1, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v3, 0x0

    iput-object v3, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    :cond_8
    const/4 v13, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v17, v11

    :cond_a
    const/4 v3, 0x0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p3

    move-object/from16 v11, v17

    const/4 v13, 0x2

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v17, v11

    const/4 v13, 0x0

    :goto_5
    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    new-array v3, v1, [Lnet/sf/saxon/expr/Binding;

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v3, v7

    invoke-virtual {v6, v4, v3}, Lnet/sf/saxon/expr/parser/Optimizer;->isVariableReplaceableByDot(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->inlineVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v5, v1, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v8, v6, v7}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v6, v7, :cond_c

    new-instance v6, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    new-array v7, v3, [Lnet/sf/saxon/expr/Expression;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const-string v1, "boolean"

    invoke-static {v1, v6, v7}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :cond_c
    new-instance v6, Lnet/sf/saxon/expr/FilterExpression;

    invoke-direct {v6, v9, v1}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {v1, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v5, v12, v3}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    move v15, v3

    goto :goto_6

    :cond_d
    move v15, v13

    :goto_6
    if-eqz v15, :cond_11

    if-nez v17, :cond_e

    invoke-virtual {v0, v9}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_8

    :cond_e
    move-object/from16 v10, v17

    instance-of v1, v10, Lnet/sf/saxon/expr/RootExpression;

    if-eqz v1, :cond_f

    const-class v1, Lnet/sf/saxon/functions/KeyFn;

    invoke-virtual {v9, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v9}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_8

    :cond_f
    invoke-static {v10, v9}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v3, v1, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v3, :cond_11

    invoke-static {v4, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v3, v4, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->convertPathExpressionToKey(Lnet/sf/saxon/expr/SlashExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    :goto_7
    iget-object v1, v0, Lnet/sf/saxon/expr/flwor/ForClause;->sequenceOp:Lnet/sf/saxon/expr/Operand;

    move-object/from16 v3, p3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, v0, Lnet/sf/saxon/expr/flwor/ForClause;->sequenceOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :cond_11
    :goto_8
    return v15
.end method

.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/parser/PathMap;->registerPathForVariable(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    return-void
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/Clause;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/flwor/ForClause;->copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/ForClause;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/flwor/ForClause;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/flwor/ForClause;

    invoke-direct {v0}, Lnet/sf/saxon/expr/flwor/ForClause;-><init>()V

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/Clause;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->copy()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->copy()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/flwor/ForClause;->initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V

    .line 9
    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    return-object v0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "var"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slot"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "at"

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "at-slot"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public gatherVariableReferences(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/ExpressionVisitor;",
            "Lnet/sf/saxon/expr/Binding;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Ljava/util/List;)V

    return-void
.end method

.method public getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/flwor/Clause$ClauseName;->FOR:Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    return-object p0
.end method

.method public getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public getPullStream(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePull;
    .locals 0

    iget-boolean p2, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    if-eqz p2, :cond_0

    new-instance p2, Lnet/sf/saxon/expr/flwor/ForClauseOuterPull;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/flwor/ForClauseOuterPull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForClause;)V

    return-object p2

    :cond_0
    new-instance p2, Lnet/sf/saxon/expr/flwor/ForClausePull;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/expr/flwor/ForClausePull;-><init>(Lnet/sf/saxon/expr/flwor/TuplePull;Lnet/sf/saxon/expr/flwor/ForClause;)V

    return-object p2
.end method

.method public getPushStream(Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/flwor/TuplePush;
    .locals 0

    iget-boolean p3, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    if-eqz p3, :cond_0

    new-instance p3, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;

    invoke-direct {p3, p2, p1, p0}, Lnet/sf/saxon/expr/flwor/ForClauseOuterPush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/ForClause;)V

    return-object p3

    :cond_0
    new-instance p3, Lnet/sf/saxon/expr/flwor/ForClausePush;

    invoke-direct {p3, p2, p1, p0}, Lnet/sf/saxon/expr/flwor/ForClausePush;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/flwor/TuplePush;Lnet/sf/saxon/expr/flwor/ForClause;)V

    return-object p3
.end method

.method public getRangeVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public getRangeVariables()[Lnet/sf/saxon/expr/flwor/LocalVariableBinding;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    aput-object p0, v0, v2

    return-object v0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    aput-object p0, v3, v2

    aput-object v0, v3, v1

    return-object v3
.end method

.method public getSequence()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->sequenceOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public initSequence(Lnet/sf/saxon/expr/flwor/FLWORExpression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/Clause;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->REPEAT_NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->sequenceOp:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public isAllowingEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    return p0
.end method

.method public processOperands(Lnet/sf/saxon/expr/flwor/OperandProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->sequenceOp:Lnet/sf/saxon/expr/Operand;

    invoke-interface {p1, p0}, Lnet/sf/saxon/expr/flwor/OperandProcessor;->processOperand(Lnet/sf/saxon/expr/Operand;)V

    return-void
.end method

.method public refineVariableType(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Ljava/util/List;Lnet/sf/saxon/expr/Expression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/ExpressionVisitor;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;",
            "Lnet/sf/saxon/expr/Expression;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    instance-of p3, p1, Lnet/sf/saxon/type/ErrorType;

    if-eqz p3, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/expr/VariableReference;

    iget-boolean v0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x6000

    goto :goto_1

    :cond_1
    const/16 v0, 0x4000

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, p1, v0, v2, v1}, Lnet/sf/saxon/expr/VariableReference;->refineVariableType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAllowingEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    return-void
.end method

.method public setPositionVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->positionVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-void
.end method

.method public setRangeVariable(Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-void
.end method

.method public setSequence(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->sequenceOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "at $"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getClauseKey()Lnet/sf/saxon/expr/flwor/Clause$ClauseName;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getPositionVariable()Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "at $"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    iget-boolean v0, p0, Lnet/sf/saxon/expr/flwor/ForClause;->allowsEmpty:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const v4, 0xc000

    invoke-static {v3, v4, v0}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    const v0, 0xe000

    invoke-static {p2, v0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v3, p0, Lnet/sf/saxon/expr/flwor/ForClause;->rangeVariable:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/flwor/ForClause;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    invoke-static {v1, p2, v0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->strictTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/flwor/ForClause;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
