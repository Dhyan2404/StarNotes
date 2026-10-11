.class public Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;


# instance fields
.field protected fActualValue:Ljava/lang/Object;

.field protected fActualValueType:S

.field protected fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

.field protected fErrorCodes:[Ljava/lang/String;

.field protected fGrammars:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

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
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNil:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSpecified:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNormalizedValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValue:Ljava/lang/Object;

    const/16 v2, 0x2d

    iput-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValueType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidity:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fErrorCodes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    return-void
.end method


# virtual methods
.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getActualNormalizedValueType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValueType:S

    return p0
.end method

.method public getElementDeclaration()Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    return-object p0
.end method

.method public getErrorCodes()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fErrorCodes:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fErrorCodes:[Ljava/lang/String;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public getIsSchemaSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSpecified:Z

    return p0
.end method

.method public getItemValueTypes()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0
.end method

.method public getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    return-object p0
.end method

.method public getNil()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNil:Z

    return p0
.end method

.method public getNotation()Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    return-object p0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public declared-synchronized getSchemaInformation()Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fGrammars:[Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelImpl;-><init>([Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSchemaInformation:Lcom/sun/org/apache/xerces/internal/xs/XSModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNormalizedValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getValidationAttempted()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    return p0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    return-object p0
.end method

.method public getValidity()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidity:S

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fDeclaration:Lcom/sun/org/apache/xerces/internal/xs/XSElementDeclaration;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fTypeDecl:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNil:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fSpecified:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNotation:Lcom/sun/org/apache/xerces/internal/xs/XSNotationDeclaration;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fMemberType:Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidity:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fErrorCodes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fNormalizedValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValue:Ljava/lang/Object;

    const/16 v1, 0x2d

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fActualValueType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/ElementPSVImpl;->fItemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-void
.end method
