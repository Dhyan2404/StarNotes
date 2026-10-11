.class public Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;


# static fields
.field static final serialVersionUID:J = 0x5e957bb41eca45c4L


# instance fields
.field protected fActualValue:Ljava/lang/Object;

.field protected fActualValueType:S

.field protected fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

.field protected fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

.field protected fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field protected fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

.field protected fNil:Z

.field protected fNormalizedValue:Ljava/lang/String;

.field protected fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

.field protected fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

.field protected fSpecified:Z

.field protected fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    .line 19
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNil:Z

    const/4 p3, 0x1

    .line 21
    iput-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSpecified:Z

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNormalizedValue:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValue:Ljava/lang/Object;

    const/16 p3, 0x2d

    .line 24
    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValueType:S

    .line 25
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    .line 26
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    .line 27
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    .line 28
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationAttempted:S

    .line 29
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidity:S

    .line 30
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    .line 31
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNil:Z

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSpecified:Z

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNormalizedValue:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValue:Ljava/lang/Object;

    const/16 p3, 0x2d

    .line 8
    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValueType:S

    .line 9
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    .line 11
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    .line 12
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationAttempted:S

    .line 13
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidity:S

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

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

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getActualNormalizedValueType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValueType:S

    return p0
.end method

.method public getElementDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    return-object p0
.end method

.method public getErrorCodes()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    return-object p0
.end method

.method public getIsSchemaSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSpecified:Z

    return p0
.end method

.method public getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0
.end method

.method public getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    return-object p0
.end method

.method public getNil()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNil:Z

    return p0
.end method

.method public getNotation()Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    return-object p0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSchemaInformation()Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    return-object p0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNormalizedValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getValidationAttempted()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationAttempted:S

    return p0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    return-object p0
.end method

.method public getValidity()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidity:S

    return p0
.end method

.method public setPSVI(Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;)V
    .locals 1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;->getElementDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;->getNotation()Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;->getSchemaInformation()Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getValidity()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidity:S

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getValidationAttempted()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fValidationAttempted:S

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getErrorCodes()Lcom/sun/org/apache/xerces/internal/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fErrorCodes:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fNormalizedValue:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getActualNormalizedValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValue:Ljava/lang/Object;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getActualNormalizedValueType()S

    move-result v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fActualValueType:S

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getIsSchemaSpecified()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->fSpecified:Z

    return-void
.end method
