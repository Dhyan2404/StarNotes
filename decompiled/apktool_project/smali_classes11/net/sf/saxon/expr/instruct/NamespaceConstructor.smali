.class public Lnet/sf/saxon/expr/instruct/NamespaceConstructor;
.super Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->n:Lnet/sf/saxon/expr/Operand;

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "XQDY0101"

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v1, "XTDE0925"

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Namespace prefix \'xml\' and namespace uri http://www.w3.org/XML/1998/namespace must only be used together"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-direct {p1, p2, v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v1, "XTDE0930"

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Namespace URI is an empty string"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-direct {p1, p2, v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "XTDE0905"

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v1, v0

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "A namespace node cannot have the reserved namespace http://www.w3.org/2000/xmlns/"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-direct {p1, p2, v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getXsdVersion()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_7

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/lib/StandardURIChecker;->isValidURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "The string value of the constructed namespace node must be a valid URI"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_0
    return-void
.end method

.method public final e(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/value/StringValue;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v1, :cond_5

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "XTDE0920"

    if-nez v1, :cond_2

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "XQDY0074"

    :goto_0
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Namespace prefix is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_2
    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "XQDY0101"

    :goto_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Namespace prefix \'xmlns\' is not allowed"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "XPTY0004"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    const-string v3, "Namespace prefix is not an xs:string or xs:untypedAtomic"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 3
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1, v2, p1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->d(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public evaluateNodeName(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeName;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->e(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "namespace"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->isLocal()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flags"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xb5

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public getNameExp()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public localTypeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v1, 0x4

    const-string v2, "namespace/name"

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v2, v3, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->setNameExp(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->e(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->selectOp:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->n:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public processValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->e(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->d(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    const/16 p0, 0x20

    invoke-virtual {p2, v0, p1, p0}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setNameExp(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
