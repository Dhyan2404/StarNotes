.class public abstract Lnet/sf/saxon/expr/instruct/AttributeCreator;
.super Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ValidatingInstruction;


# static fields
.field public static final synthetic r:Z


# instance fields
.field public n:Lnet/sf/saxon/type/SimpleType;

.field public o:I

.field public p:I

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->n:Lnet/sf/saxon/type/SimpleType;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->p:I

    return-void
.end method


# virtual methods
.method public computeSpecialProperties()I
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->computeSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/high16 p0, 0x8000000

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    return-object p0
.end method

.method public getOptions()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->p:I

    return p0
.end method

.method public bridge synthetic getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getSchemaType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SimpleType;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->n:Lnet/sf/saxon/type/SimpleType;

    return-object p0
.end method

.method public getValidationAction()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->o:I

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->q:Z

    return p0
.end method

.method public processValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->evaluateNodeName(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getOptions()I

    move-result v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getSchemaType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result v2

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;->getInstance()Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;

    move-result-object v2

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    move-object v2, v0

    goto :goto_2

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attribute value "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the required type "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;->setSchemaType(Lnet/sf/saxon/type/SchemaType;)V

    const-string p1, "XTTE1540"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v2}, Lnet/sf/saxon/Configuration;->validateAttribute(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/str/UnicodeString;I)Lnet/sf/saxon/type/SimpleType;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :goto_2
    sget-object v0, Lnet/sf/saxon/om/StandardNames;->XML_ID_NAME:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lnet/sf/saxon/expr/instruct/Instruction;->dynamicError(Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    if-ne v2, v0, :cond_5

    const-string p2, "XTTE1510"

    goto :goto_3

    :cond_5
    const-string p2, "XTTE1515"

    :goto_3
    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1
.end method

.method public setInstruction(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->q:Z

    return-void
.end method

.method public setNoSpecialChars()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->p:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->p:I

    return-void
.end method

.method public setOptions(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->p:I

    return-void
.end method

.method public setRejectDuplicates()V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->p:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->p:I

    return-void
.end method

.method public setSchemaType(Lnet/sf/saxon/type/SimpleType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->n:Lnet/sf/saxon/type/SimpleType;

    return-void
.end method

.method public setValidationAction(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/AttributeCreator;->o:I

    return-void
.end method

.method public validateOrphanAttribute(Lnet/sf/saxon/tree/util/Orphan;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getSchemaType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/AttributeCreator;->getValidationAction()I

    move-result v2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/Orphan;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-static {}, Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;->getInstance()Lnet/sf/saxon/expr/instruct/DummyNamespaceResolver;

    move-result-object v2

    invoke-interface {v1, p2, v2, v0}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/tree/util/Orphan;->setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V

    invoke-interface {v1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot validate a parentless attribute whose content is namespace-sensitive"

    const-string p2, "XTTE1545"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/Orphan;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not the match the required type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/type/ValidationFailure;->setMessage(Ljava/lang/String;)V

    const-string p1, "XTTE1555"

    invoke-virtual {p2, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p2}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v1, 0x2

    if-ne v2, v1, :cond_4

    :cond_3
    :try_start_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-static {p1}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {p1}, Lnet/sf/saxon/tree/util/Orphan;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lnet/sf/saxon/Configuration;->validateAttribute(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/str/UnicodeString;I)Lnet/sf/saxon/type/SimpleType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/tree/util/Orphan;->setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v1
.end method
