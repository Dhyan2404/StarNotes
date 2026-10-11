.class public abstract Lnet/sf/saxon/expr/instruct/Instruction;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/TailCallReturner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    return-void
.end method

.method public static assembleParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/ParameterSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v5

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/WithParam;->isTypeChecked()Z

    move-result v3

    invoke-virtual {v0, v4, v5, v3}, Lnet/sf/saxon/expr/instruct/ParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Sequence;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static assembleTunnelParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lnet/sf/saxon/expr/instruct/ParameterSet;

    array-length v2, p1

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/expr/instruct/ParameterSet;-><init>(Lnet/sf/saxon/expr/instruct/ParameterSet;I)V

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    invoke-virtual {v1, v5, v4, v2}, Lnet/sf/saxon/expr/instruct/ParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Sequence;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/instruct/TerminationException;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    return-object p1
.end method


# virtual methods
.method public alwaysCreatesNewNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->alwaysCreatesNewNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->mayCreateNewNodes()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/high16 p0, 0x800000

    or-int/2addr p0, v0

    return p0
.end method

.method public final evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->getImplementationMethod()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getItemFromProcessMethod(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateItem() is not implemented in the subclass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->getInstructionNameCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v4, 0x400

    if-ge v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    invoke-static {v0}, Lnet/sf/saxon/om/StandardNames;->getDisplayName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->getExpressionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getSourceLocator()Ljavax/xml/transform/SourceLocator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isXSLT()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result p0

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->getImplementationMethod()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getIteratorFromProcessMethod(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iterate() is not implemented in the subclass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract operands()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/Instruction;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public abstract processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public final someOperandCreatesNewNodes()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
