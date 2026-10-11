.class Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;
.super Ljavax/xml/validation/TypeInfoProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMLSchemaTypeInfoProvider"
.end annotation


# instance fields
.field private fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

.field private fElementAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

.field private fInStartElement:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/xml/validation/TypeInfoProvider;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;-><init>()V

    return-void
.end method

.method private checkState()V
    .locals 3

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "TypeInfoProviderIllegalState"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAttributeType(I)Lorg/w3c/dom/TypeInfo;
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkState()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ATTRIBUTE_PSVI"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getTypeInfoFromPSVI(Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTypeInfoFromPSVI(Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getValidity()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of p1, v0, Lorg/w3c/dom/TypeInfo;

    if-eqz p1, :cond_1

    move-object p0, v0

    check-cast p0, Lorg/w3c/dom/TypeInfo;

    :cond_1
    return-object p0

    :cond_2
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v0, p1, Lorg/w3c/dom/TypeInfo;

    if-eqz v0, :cond_3

    move-object p0, p1

    check-cast p0, Lorg/w3c/dom/TypeInfo;

    :cond_3
    return-object p0
.end method


# virtual methods
.method public beginEndElement(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-void
.end method

.method public beginStartElement(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-void
.end method

.method public finishEndElement()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-void
.end method

.method public finishStartElement()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-void
.end method

.method public getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "ATTRIBUTE_PSVI"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkState()V

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeType(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkState()V

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkState()V

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    if-eqz p0, :cond_0

    const-string v0, "ELEMENT_PSVI"

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getElementTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkState()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "ELEMENT_PSVI"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getTypeInfoFromPSVI(Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public isIdAttribute(I)Z
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkState()V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeType(I)Lorg/w3c/dom/TypeInfo;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result p0

    return p0
.end method

.method public isSpecified(I)Z
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkState()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0
.end method
