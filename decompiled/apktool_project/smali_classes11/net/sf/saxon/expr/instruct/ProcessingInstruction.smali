.class public Lnet/sf/saxon/expr/instruct/ProcessingInstruction;
.super Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;
.source "SourceFile"


# static fields
.field public static final o:Lnet/sf/saxon/str/UnicodeString;


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->PI_END:[B

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->o:Lnet/sf/saxon/str/UnicodeString;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->n:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public static checkContentXQuery(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->o:Lnet/sf/saxon/str/UnicodeString;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->removeLeadingWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Invalid characters (?>) in processing instruction"

    const-string v1, "XQDY0026"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static checkContentXSLT(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 7

    :goto_0
    sget-object v0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->o:Lnet/sf/saxon/str/UnicodeString;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->indexOf(Lnet/sf/saxon/str/UnicodeString;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->removeLeadingWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->checkContentXSLT(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->checkContentXQuery(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final d(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    const-string v1, "Processing instruction name "

    if-eqz v0, :cond_4

    instance-of v0, p1, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "XTDE0890"

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid NCName"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "XQDY0041"

    :goto_0
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_1
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Processing instructions cannot be named \'xml\' in any combination of upper/lower case"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "XQDY0064"

    :goto_1
    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_3
    return-object p1

    :cond_4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not of type xs:string or xs:untypedAtomic"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "XPTY0004"

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public final e(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    instance-of v1, v0, Lnet/sf/saxon/value/StringValue;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->d(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Processing instruction name is not a string"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string v1, "XPTY0004"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public evaluateNodeName(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeName;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->e(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

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

    const-string v0, "procInst"

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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->getNameExp()Lnet/sf/saxon/expr/Expression;

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

.method public getDependencies()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public getNameExp()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->n:Lnet/sf/saxon/expr/Operand;

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

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v1, 0x4

    const-string v2, "processing-instruction/name"

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v2, v3, p2, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->setNameExp(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->getNameExp()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    instance-of p2, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->d(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->checkContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
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

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->n:Lnet/sf/saxon/expr/Operand;

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

    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->e(Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->checkContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p1, p0, p3}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setNameExp(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
