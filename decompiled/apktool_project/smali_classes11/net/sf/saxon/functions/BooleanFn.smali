.class public Lnet/sf/saxon/functions/BooleanFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static rewriteEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v1

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unsortedIfHomogeneous(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of v1, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_1

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    instance-of p2, p1, Lnet/sf/saxon/value/BooleanValue;

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Lnet/sf/saxon/expr/ValueComparison;

    if-eqz v1, :cond_3

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/expr/ValueComparison;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/ValueComparison;->getResultWhenEmpty()Lnet/sf/saxon/value/BooleanValue;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object p2, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/ValueComparison;->setResultWhenEmpty(Lnet/sf/saxon/value/BooleanValue;)V

    :cond_2
    return-object p0

    :cond_3
    const-class v1, Lnet/sf/saxon/functions/BooleanFn;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_5

    return-object p0

    :cond_5
    const-class v0, Lnet/sf/saxon/functions/Count;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "exists"

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    move-object v4, p0

    check-cast v4, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p0, v1, v2

    invoke-static {v3, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/BooleanFn;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result p0

    .line 3
    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "BooleanFnCompiler"

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "BooleanFn"

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/BooleanFn$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/BooleanFn$a;-><init>(Lnet/sf/saxon/functions/BooleanFn;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public supplyTypeInformation(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p3, p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->ebvError(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    throw p0
.end method
