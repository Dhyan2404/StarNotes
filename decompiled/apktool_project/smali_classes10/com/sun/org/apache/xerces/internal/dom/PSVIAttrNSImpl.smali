.class public Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;


# static fields
.field static final serialVersionUID:J = -0x2cfcf82bf1a06b09L


# instance fields
.field protected fActualValue:Ljava/lang/Object;

.field protected fActualValueType:S

.field protected fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

.field protected fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

.field protected fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field protected fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

.field protected fNormalizedValue:Ljava/lang/String;

.field protected fSpecified:Z

.field protected fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fSpecified:Z

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fNormalizedValue:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValue:Ljava/lang/Object;

    const/16 p2, 0x2d

    .line 20
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValueType:S

    .line 21
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    const/4 p2, 0x0

    .line 23
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    .line 24
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidity:S

    .line 25
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    .line 26
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fSpecified:Z

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fNormalizedValue:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValue:Ljava/lang/Object;

    const/16 p2, 0x2d

    .line 7
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValueType:S

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    .line 9
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    const/4 p2, 0x0

    .line 10
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    .line 11
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidity:S

    .line 12
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    .line 13
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

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
.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getActualNormalizedValueType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValueType:S

    return p0
.end method

.method public getAttributeDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    return-object p0
.end method

.method public getErrorCodes()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    return-object p0
.end method

.method public getIsSchemaSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fSpecified:Z

    return p0
.end method

.method public getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0
.end method

.method public getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    return-object p0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fNormalizedValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getValidationAttempted()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    return p0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

    return-object p0
.end method

.method public getValidity()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidity:S

    return p0
.end method

.method public setPSVI(Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)V
    .locals 1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;->getAttributeDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getValidity()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidity:S

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getValidationAttempted()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getErrorCodes()Lcom/sun/org/apache/xerces/internal/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fNormalizedValue:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getActualNormalizedValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValue:Ljava/lang/Object;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getActualNormalizedValueType()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fActualValueType:S

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getIsSchemaSpecified()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->fSpecified:Z

    return-void
.end method
