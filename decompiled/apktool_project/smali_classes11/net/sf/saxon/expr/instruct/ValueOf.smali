.class public final Lnet/sf/saxon/expr/instruct/ValueOf;
.super Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z


# instance fields
.field public n:I

.field public o:Z

.field public final p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ZZ)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->o:Z

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    iput p2, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    iput-boolean p3, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    instance-of p2, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p2, :cond_3

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p2

    const/16 p3, 0x21

    if-lt p2, p3, :cond_1

    const/16 p3, 0x7e

    if-gt p2, p3, :cond_1

    const/16 p3, 0x3c

    if-eq p2, p3, :cond_1

    const/16 p3, 0x3e

    if-eq p2, p3, :cond_1

    const/16 p3, 0x26

    if-ne p2, p3, :cond_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    iget p1, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    :cond_3
    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/instruct/ValueOf;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    return p0
.end method


# virtual methods
.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v1, p1, Lnet/sf/saxon/type/SimpleType;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/type/SimpleType;

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lnet/sf/saxon/type/ComplexType;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v1}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/type/ComplexType;->getSimpleContentType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p2

    invoke-interface {v1, p1, v2, p2}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/ValidationFailure;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "XTTE1540"

    goto :goto_1

    :cond_2
    const-string p0, "XQDY0027"

    :goto_1
    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :cond_3
    return-void

    :cond_4
    instance-of p2, p1, Lnet/sf/saxon/type/ComplexType;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p2}, Lnet/sf/saxon/type/ComplexType;->isMixedContent()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The containing element must be of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", which does not allow text content "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p2

    :cond_6
    :goto_2
    return-void
.end method

.method public computeCardinality()I
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x6000

    return p0

    :cond_0
    const/16 p0, 0x4000

    return p0
.end method

.method public convertToCastAsString()Lnet/sf/saxon/expr/Expression;
    .locals 3

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "string"

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/expr/CastExpression;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, v2, v1}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-object v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget v1, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v1

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->o:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/ValueOf;->setIsNumberingInstruction()V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ValueOf;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    .line 6
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    .line 7
    new-instance v1, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 p1, 0x3

    .line 8
    invoke-virtual {v1, p1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    .line 9
    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ValueOf;->isDisableOutputEscaping()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v1, p1}, Lnet/sf/saxon/tree/util/Orphan;->setDisableOutputEscaping(Z)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 13
    throw p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "valueOf"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ValueOf;->isDisableOutputEscaping()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "flags"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public gatherProperties(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const-string v0, "text"

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getInstructionNameCode()I
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->o:Z

    if-eqz v0, :cond_0

    const/16 p0, 0xba

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p0, :cond_1

    const/16 p0, 0xd3

    return p0

    :cond_1
    const/16 p0, 0xd7

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ValueOf;->isDisableOutputEscaping()Z

    move-result p0

    if-eqz p0, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    return v0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public getOptions()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    return p0
.end method

.method public isDisableOutputEscaping()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isNoNodeIfEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    return p0
.end method

.method public isNumberingInstruction()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->o:Z

    return p0
.end method

.method public localTypeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 0

    return-void
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/expr/instruct/ValueOf;->processValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ValueOf;->isDisableOutputEscaping()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    new-instance v2, Lnet/sf/saxon/expr/instruct/ValueOf$a;

    invoke-direct {v2, p0, p1, v0}, Lnet/sf/saxon/expr/instruct/ValueOf$a;-><init>(Lnet/sf/saxon/expr/instruct/ValueOf;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, v2, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v1

    :cond_2
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0
.end method

.method public processValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p3

    iget p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->n:I

    invoke-virtual {p2, p1, p3, p0}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setIsNumberingInstruction()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ValueOf;->o:Z

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->depict(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
