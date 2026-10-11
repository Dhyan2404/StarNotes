.class public Lorg/apache/xerces/dom/PSVIElementNSImpl;
.super Lorg/apache/xerces/dom/ElementNSImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/ElementPSVI;


# static fields
.field static final serialVersionUID:J = 0x5e957bb41eca45c4L


# instance fields
.field protected fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

.field protected fErrorCodes:Lorg/apache/xerces/xs/StringList;

.field protected fErrorMessages:Lorg/apache/xerces/xs/StringList;

.field protected fNil:Z

.field protected fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

.field protected fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

.field protected fSpecified:Z

.field protected fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S

.field protected fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    new-instance p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object p3, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    iput-short p2, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    iput-short p2, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    new-instance p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object p3, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    iput-short p2, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    iput-short p2, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance p1, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public constant()Lorg/apache/xerces/xs/ItemPSVI;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xs/ElementPSVImpl;-><init>(ZLorg/apache/xerces/xs/ElementPSVI;)V

    return-object v0
.end method

.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getActualNormalizedValueType()S
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result p0

    return p0
.end method

.method public getElementDeclaration()Lorg/apache/xerces/xs/XSElementDeclaration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    return-object p0
.end method

.method public getErrorCodes()Lorg/apache/xerces/xs/StringList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    return-object p0
.end method

.method public getErrorMessages()Lorg/apache/xerces/xs/StringList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    return-object p0
.end method

.method public getIsSchemaSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    return p0
.end method

.method public getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lorg/apache/xerces/xs/ShortList;

    move-result-object p0

    return-object p0
.end method

.method public getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p0

    return-object p0
.end method

.method public getNil()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    return p0
.end method

.method public getNotation()Lorg/apache/xerces/xs/XSNotationDeclaration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    return-object p0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSchemaInformation()Lorg/apache/xerces/xs/XSModel;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    return-object p0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaValue()Lorg/apache/xerces/xs/XSValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getValidationAttempted()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    return p0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    return-object p0
.end method

.method public getValidity()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    return p0
.end method

.method public isConstant()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xerces/xs/ElementPSVI;->getElementDeclaration()Lorg/apache/xerces/xs/XSElementDeclaration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {p1}, Lorg/apache/xerces/xs/ElementPSVI;->getNotation()Lorg/apache/xerces/xs/XSNotationDeclaration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lorg/apache/xerces/xs/ElementPSVI;->getSchemaInformation()Lorg/apache/xerces/xs/XSModel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getValidity()S

    move-result v0

    iput-short v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getValidationAttempted()S

    move-result v0

    iput-short v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getErrorCodes()Lorg/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getErrorMessages()Lorg/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    iget-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    instance-of v1, v0, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/apache/xerces/xs/XSComplexTypeDefinition;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getSchemaValue()Lorg/apache/xerces/xs/XSValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lorg/apache/xerces/xs/XSValue;)V

    :goto_1
    invoke-interface {p1}, Lorg/apache/xerces/xs/ItemPSVI;->getIsSchemaSpecified()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    invoke-interface {p1}, Lorg/apache/xerces/xs/ElementPSVI;->getNil()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    return-void
.end method
