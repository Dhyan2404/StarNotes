.class public final Lnet/sf/saxon/expr/instruct/FixedAttribute;
.super Lnet/sf/saxon/expr/instruct/AttributeCreator;
.source "SourceFile"


# static fields
.field public static final synthetic t:Z


# instance fields
.field public final s:Lnet/sf/saxon/om/NodeName;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setSchemaType(Lnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setValidationAction(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setOptions(I)V

    return-void
.end method


# virtual methods
.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result p2

    const/16 v0, 0x281

    if-eq p2, v0, :cond_5

    const/16 v0, 0x283

    if-eq p2, v0, :cond_5

    const/16 v0, 0x282

    if-eq p2, v0, :cond_5

    const/16 v0, 0x284

    if-ne p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of p2, p1, Lnet/sf/saxon/type/SimpleType;

    const-string v0, "XTTE1510"

    const-string v1, "XQDY0027"

    const-string v2, "Attribute "

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not permitted in the content model of the simple type "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p2

    :cond_2
    :try_start_0
    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/type/ComplexType;

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-interface {p2, v4}, Lnet/sf/saxon/type/ComplexType;->getAttributeUseType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SimpleType;

    move-result-object p2
    :try_end_0
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_4

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not permitted in the content model of the complex type "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p2

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getSchemaType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->isInstruction()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setInstruction(Z)V

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/FixedAttribute;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/util/Orphan;

    .line 3
    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->validateOrphanAttribute(Lnet/sf/saxon/tree/util/Orphan;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public evaluateNodeName(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "att"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nsuri"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->describe(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "validation"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getSchemaType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getSchemaType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

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

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/FixedAttribute;->getAttributeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getAttributeFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getAttributeName()Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    const/16 p0, 0x4000

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "att"

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x89

    return p0
.end method

.method public localTypeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    sget-object v0, Lnet/sf/saxon/om/StandardNames;->XML_ID_NAME:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const-class v2, Lnet/sf/saxon/functions/NormalizeSpace_1;

    invoke-virtual {p2, v2}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    new-array v2, v1, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "normalize-space"

    invoke-static {v3, p2, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getSchemaType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/Configuration;->getAttributeDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p1

    const-string p2, "XTTE1510"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/type/SimpleType;

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strict validation fails: there is no global attribute declaration for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {p2, v4}, Lnet/sf/saxon/Configuration;->getAttributeDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/type/SimpleType;

    const-string p2, "XTTE1515"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lax validation has no effect: there is no global attribute declaration for "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_4
    const-string p2, "XTTE1540"

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isAtomic(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;->getInstance()Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;

    move-result-object v4

    invoke-interface {v3, p1, v4, v2}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not the match the required type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    move p2, v0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-lt v2, v3, :cond_8

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_8

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_8

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_8

    const/16 v3, 0x26

    if-eq v2, v3, :cond_8

    const/16 v3, 0x22

    if-eq v2, v3, :cond_8

    const/16 v3, 0x27

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    move v0, v1

    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->setNoSpecialChars()V

    :cond_a
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedAttribute;->s:Lnet/sf/saxon/om/NodeName;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=...}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
