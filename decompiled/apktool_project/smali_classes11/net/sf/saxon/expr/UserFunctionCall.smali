.class public Lnet/sf/saxon/expr/UserFunctionCall;
.super Lnet/sf/saxon/expr/FunctionCall;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/UserFunctionResolvable;
.implements Lnet/sf/saxon/expr/ComponentInvocation;
.implements Lnet/sf/saxon/expr/ContextOriginator;


# static fields
.field public static final FOREIGN_TAIL_CALL:I = 0x1

.field public static final NOT_TAIL_CALL:I = 0x0

.field public static final SELF_TAIL_CALL:I = 0x2

.field public static final v:I = 0x36d

.field public static final w:I


# instance fields
.field public o:Lnet/sf/saxon/value/SequenceType;

.field public p:Lnet/sf/saxon/expr/instruct/UserFunction;

.field public q:I

.field public r:I

.field public s:Lnet/sf/saxon/om/StructuredQName;

.field public t:Z

.field public u:[Lnet/sf/saxon/expr/parser/Evaluator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/FunctionCall;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->q:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->r:I

    iput-boolean v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->addExternalFunctionCallToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public allocateArgumentEvaluators()V
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/parser/Evaluator;

    iput-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArgumentType(I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v3

    if-nez v1, :cond_0

    iget-object v4, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredStreamability()Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/trans/FunctionStreamability;->isConsuming()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$StreamingArgument;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$StreamingArgument;

    aput-object v3, v2, v1

    goto/16 :goto_1

    :cond_0
    iget-object v4, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->isIndexedVariable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;

    aput-object v3, v2, v1

    goto/16 :goto_1

    :cond_1
    instance-of v4, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v4, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$Literal;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Literal;

    aput-object v3, v2, v1

    goto/16 :goto_1

    :cond_2
    instance-of v4, v2, Lnet/sf/saxon/expr/VariableReference;

    if-eqz v4, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_3
    const/16 v4, 0x4000

    if-ne v3, v4, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v4

    and-int/lit16 v4, v4, 0x36d

    if-eqz v4, :cond_5

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    new-instance v3, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    invoke-direct {v3}, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;-><init>()V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v4

    invoke-static {v4}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    new-instance v3, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    invoke-direct {v3}, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;-><init>()V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_6
    const/16 v4, 0x6000

    if-ne v3, v4, :cond_7

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_7
    instance-of v3, v2, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v3, :cond_8

    check-cast v2, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Block;->isCandidateForSharedAppend()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public computeCardinality()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->o:Lnet/sf/saxon/value/SequenceType;

    if-nez p0, :cond_0

    const p0, 0xe000

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaredVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_4

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->gatherCalledFunctions(Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeterminism()Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->PROACTIVE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    if-eq p0, v1, :cond_3

    const/high16 p0, 0x800000

    or-int/2addr v0, p0

    :cond_3
    return v0

    :cond_4
    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-direct {v0}, Lnet/sf/saxon/expr/UserFunctionCall;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->o:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/UserFunctionCall;->setStaticType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v1

    new-array v2, v1, [Lnet/sf/saxon/expr/Expression;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "UserFunctionCall.copy()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->isTailCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/UserFunctionCall;->e(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)V

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->q:I

    if-ltz v1, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->getTargetComponent(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->isHiddenAbstractComponent()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2, p1, p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call an abstract function ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->s:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") with no implementation"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTDE3052"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v2, p1, p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    :goto_0
    :try_start_0
    invoke-virtual {v2, p1, v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException$StackOverflow;

    const-string v0, "SXLM0001"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const-string v1, "Too many nested function calls. May be due to infinite recursion"

    invoke-direct {p1, v1, v0, p0}, Lnet/sf/saxon/trans/XPathException$StackOverflow;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public final e(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->q:I

    if-ltz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;

    invoke-direct {v0}, Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->getTargetComponent(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/Component;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;->component:Lnet/sf/saxon/expr/Component;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    iput-object v2, v0, Lnet/sf/saxon/expr/TailCallLoop$TailCallComponent;->function:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->isHiddenAbstractComponent()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->requestTailCall(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;[Lnet/sf/saxon/om/Sequence;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call an abstract function ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->s:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") with no implementation"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XTDE3052"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/TailCallLoop$TailCallFunction;

    invoke-direct {v0}, Lnet/sf/saxon/expr/TailCallLoop$TailCallFunction;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    iput-object p0, v0, Lnet/sf/saxon/expr/TailCallLoop$TailCallFunction;->function:Lnet/sf/saxon/expr/instruct/UserFunction;

    check-cast p1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->requestTailCall(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;[Lnet/sf/saxon/om/Sequence;)V

    :goto_0
    return-void
.end method

.method public evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/UserFunctionCall;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;Z)[Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public evaluateArguments(Lnet/sf/saxon/expr/XPathContext;Z)[Lnet/sf/saxon/om/Sequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    .line 3
    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->makeSequenceArray(I)[Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->allocateArgumentEvaluators()V

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 8
    iget-object v3, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 9
    sget-object v4, Lnet/sf/saxon/expr/parser/Evaluator$StreamingArgument;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$StreamingArgument;

    if-ne v3, v4, :cond_2

    if-nez p2, :cond_2

    .line 10
    :cond_1
    sget-object v3, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    .line 11
    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lnet/sf/saxon/expr/parser/Evaluator;->evaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v3

    aput-object v3, v1, v2

    if-nez v3, :cond_3

    .line 12
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->d(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->callUpdating([Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/PendingUpdateList;)V

    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "ufCall"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    iget v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->r:I

    if-nez v0, :cond_0

    const-string v0, "false"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "self"

    goto :goto_0

    :cond_1
    const-string v0, "foreign"

    :goto_0
    const-string v1, "tailCall"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getBindingSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bSlot"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/Evaluator;->getCode()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eval"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "inline"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    :cond_6
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getArgumentEvaluators()[Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    return-object p0
.end method

.method public getBindingSlot()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->q:I

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "userFunctionCall"

    return-object p0
.end method

.method public getFixedTarget()Lnet/sf/saxon/expr/Component;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public getFunction()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public final getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->s:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->o:Lnet/sf/saxon/value/SequenceType;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "target"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    return-object v0
.end method

.method public getTarget()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public getTargetComponent(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/Component;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->getTargetComponent(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public bridge synthetic getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    return-object p0
.end method

.method public isBeingInlined()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->t:Z

    return p0
.end method

.method public isRecursiveTailCall()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->r:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTailCall()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->r:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpdatingExpression()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->isUpdating()Z

    move-result p0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UserFunctionCall;->d(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public markTailFunctionCalls(Lnet/sf/saxon/om/StructuredQName;I)I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->r:I

    return p1
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->tryInlineFunctionCall(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/UserFunctionCall;->evaluateArguments(Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UserFunctionCall;->isTailCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/expr/UserFunctionCall;->e(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)V

    return-void

    :cond_0
    iget v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->q:I

    if-ltz v1, :cond_2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/UserFunctionCall;->getTargetComponent(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, p2, p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p2

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v2, p2, v0, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->process(Lnet/sf/saxon/expr/XPathContextMajor;[Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Outputter;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot call a function defined with visibility=abstract"

    const-string p2, "XTDE3052"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1, p2, p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p2

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0, p2, v0, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->process(Lnet/sf/saxon/expr/XPathContextMajor;[Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Outputter;)V

    :goto_0
    return-void
.end method

.method public resetLocalStaticProperties()V
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public setArgumentEvaluators([Lnet/sf/saxon/expr/parser/Evaluator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->u:[Lnet/sf/saxon/expr/parser/Evaluator;

    return-void
.end method

.method public setBeingInlined(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->t:Z

    return-void
.end method

.method public setBindingSlot(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->q:I

    return-void
.end method

.method public setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-void
.end method

.method public final setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->s:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setStaticType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->o:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p2, p0, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/FunctionCall;->checkFunctionCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->o:Lnet/sf/saxon/value/SequenceType;

    if-eqz p1, :cond_1

    sget-object p2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->p:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/UserFunctionCall;->o:Lnet/sf/saxon/value/SequenceType;

    :cond_2
    return-object p0
.end method
