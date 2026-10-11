.class public Lnet/sf/saxon/expr/parser/Optimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field protected config:Lnet/sf/saxon/Configuration;

.field protected tracing:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_EE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/Optimizer;->a:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/Optimizer;->config:Lnet/sf/saxon/Configuration;

    sget-object v0, Lnet/sf/saxon/lib/Feature;->TRACE_OPTIMIZER_DECISIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/Optimizer;->tracing:Z

    return-void
.end method

.method public static trace(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    .line 7
    sget-object v0, Lnet/sf/saxon/lib/Feature;->TRACE_OPTIMIZER_DECISIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT : At line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPT : Expression after rewrite: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->verifyParentPointers()Lnet/sf/saxon/expr/Expression;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    const-class p0, Lnet/sf/saxon/functions/PositionAndLast$Position;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lnet/sf/saxon/functions/PositionAndLast$Last;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Lnet/sf/saxon/expr/IsLastExpression;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lnet/sf/saxon/expr/IsLastExpression;-><init>(Z)V

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lnet/sf/saxon/expr/IsLastExpression;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lnet/sf/saxon/expr/IsLastExpression;-><init>(Z)V

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public assessFunctionStreamability(Lnet/sf/saxon/style/XSLFunction;Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Streamable stylesheet functions are not supported in Saxon-HE"

    const-string p2, "XTSE3430"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public checkStreamability(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/expr/instruct/TemplateRule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public compileToByteCode(Lnet/sf/saxon/expr/parser/ICompilerService;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public convertPathExpressionToKey(Lnet/sf/saxon/expr/SlashExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public convertToFilterExpression(Lnet/sf/saxon/expr/SlashExpression;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/expr/FilterExpression;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public eliminateCommonSubexpressions(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p1
.end method

.method public evaluateStreamingArgument(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->eagerEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public generateMultithreadedInstruction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p1
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Optimizer;->config:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Optimizer;->a:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-object p0
.end method

.method public injectByteCodeCandidates(Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public isIndexableFilter(Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOptionSet(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Optimizer;->a:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isVariableReplaceableByDot(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z
    .locals 3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->hasSameFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->isVariableReplaceableByDot(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->dependsOnVariable(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Binding;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public makeByteCodeCandidate(Lnet/sf/saxon/expr/ExpressionOwner;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p2
.end method

.method public makeConditionalDocumentSorter(Lnet/sf/saxon/expr/sort/DocumentSorter;Lnet/sf/saxon/expr/SlashExpression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public makeCopyOperationsExplicit(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Operand;)V
    .locals 0

    return-void
.end method

.method public makeIndexedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Indexing requires Saxon-EE"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeInversion(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/NamedTemplate;)Lnet/sf/saxon/trans/rules/RuleTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public optimizeGeneralComparison(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/GeneralComparison;ZLnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p2
.end method

.method public optimizeNodeSetPattern(Lnet/sf/saxon/pattern/NodeSetPattern;)V
    .locals 0

    return-void
.end method

.method public optimizeNumberInstruction(Lnet/sf/saxon/expr/instruct/NumberInstruction;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public optimizeQuantifiedExpressionForStreaming(Lnet/sf/saxon/expr/QuantifiedExpression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public optimizeSaxonStreamFunction(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p3

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public optimizeValueComparison(Lnet/sf/saxon/expr/ValueComparison;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getOperator()I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "Rewrote position() ~= last()"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/BinaryExpression;->getOperator()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/Token;->inverse(I)I

    move-result v0

    invoke-virtual {p0, p3, p2, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p1, "Rewrote last() ~= position()"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method public prepareForStreaming(Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public promoteExpressionsToGlobal(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/trans/GlobalVariableManager;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public reorderPredicates(Lnet/sf/saxon/expr/FilterExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/FilterExpression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p1
.end method

.method public setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/Optimizer;->a:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/parser/Optimizer;->tracing:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Optimizer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT : At line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPT : Expression after rewrite: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->verifyParentPointers()Lnet/sf/saxon/expr/Expression;

    :cond_0
    return-void
.end method

.method public tryGeneralComparison(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;Lnet/sf/saxon/expr/OrExpression;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p3
.end method

.method public tryIndexedFilter(Lnet/sf/saxon/expr/FilterExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p1
.end method

.method public tryInlineFunctionCall(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p1
.end method

.method public trySwitch(Lnet/sf/saxon/expr/instruct/Choose;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p1
.end method
