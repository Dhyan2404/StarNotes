.class public Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;


# instance fields
.field protected fActualValue:Ljava/lang/Object;

.field protected fActualValueType:S

.field protected fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

.field protected fErrorCodes:[Ljava/lang/String;

.field protected fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field protected fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

.field protected fNormalizedValue:Ljava/lang/String;

.field protected fSpecified:Z

.field protected fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fSpecified:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fNormalizedValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValue:Ljava/lang/Object;

    const/16 v2, 0x2d

    iput-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValueType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidity:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fErrorCodes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getActualNormalizedValueType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValueType:S

    return p0
.end method

.method public getAttributeDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    return-object p0
.end method

.method public getErrorCodes()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fErrorCodes:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fErrorCodes:[Ljava/lang/String;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public getIsSchemaSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fSpecified:Z

    return p0
.end method

.method public getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0
.end method

.method public getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    return-object p0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

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

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fNormalizedValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getValidationAttempted()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    return p0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    return-object p0
.end method

.method public getValidity()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidity:S

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fNormalizedValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValue:Ljava/lang/Object;

    const/16 v1, 0x2d

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fActualValueType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSAttributeDeclaration;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fSpecified:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidity:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fErrorCodes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    return-void
.end method
