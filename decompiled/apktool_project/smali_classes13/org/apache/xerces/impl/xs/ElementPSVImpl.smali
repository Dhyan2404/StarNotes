.class public Lorg/apache/xerces/impl/xs/ElementPSVImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/ElementPSVI;


# instance fields
.field protected fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

.field protected fErrors:[Ljava/lang/String;

.field protected fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

.field protected fIsConstant:Z

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
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    new-instance v2, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    return-void
.end method

.method public constructor <init>(ZLorg/apache/xerces/xs/ElementPSVI;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    new-instance v2, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    invoke-interface {p2}, Lorg/apache/xerces/xs/ElementPSVI;->getElementDeclaration()Lorg/apache/xerces/xs/XSElementDeclaration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p2}, Lorg/apache/xerces/xs/ElementPSVI;->getNil()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getIsSchemaSpecified()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getSchemaValue()Lorg/apache/xerces/xs/XSValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lorg/apache/xerces/xs/XSValue;)V

    invoke-interface {p2}, Lorg/apache/xerces/xs/ElementPSVI;->getNotation()Lorg/apache/xerces/xs/XSNotationDeclaration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getValidationAttempted()S

    move-result v2

    iput-short v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getValidity()S

    move-result v2

    iput-short v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    instance-of v2, p2, Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    if-eqz v2, :cond_1

    check-cast p2, Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p2, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->copySchemaInformationTo(Lorg/apache/xerces/impl/xs/ElementPSVImpl;)V

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getErrorCodes()Lorg/apache/xerces/xs/StringList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/xs/StringList;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getErrorMessages()Lorg/apache/xerces/xs/StringList;

    move-result-object v3

    shl-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move v5, v1

    :goto_0
    if-lt v1, v2, :cond_2

    iput-object v4, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v0, v1}, Lorg/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v6, 0x1

    invoke-interface {v3, v1}, Lorg/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p2}, Lorg/apache/xerces/xs/ElementPSVI;->getSchemaInformation()Lorg/apache/xerces/xs/XSModel;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    :goto_2
    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fIsConstant:Z

    return-void
.end method


# virtual methods
.method public constant()Lorg/apache/xerces/xs/ItemPSVI;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xs/ElementPSVImpl;-><init>(ZLorg/apache/xerces/xs/ElementPSVI;)V

    return-object v0
.end method

.method public copySchemaInformationTo(Lorg/apache/xerces/impl/xs/ElementPSVImpl;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iput-object v0, p1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    iput-object p0, p1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    return-void
.end method

.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getActualNormalizedValueType()S
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result p0

    return p0
.end method

.method public getElementDeclaration()Lorg/apache/xerces/xs/XSElementDeclaration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    return-object p0
.end method

.method public getErrorCodes()Lorg/apache/xerces/xs/StringList;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/jlk;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/jlk;-><init>([Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    return-object p0
.end method

.method public getErrorMessages()Lorg/apache/xerces/xs/StringList;
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/jlk;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/jlk;-><init>([Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    return-object p0
.end method

.method public getIsSchemaSpecified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    return p0
.end method

.method public getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lorg/apache/xerces/xs/ShortList;

    move-result-object p0

    return-object p0
.end method

.method public getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p0

    return-object p0
.end method

.method public getNil()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    return p0
.end method

.method public getNotation()Lorg/apache/xerces/xs/XSNotationDeclaration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    return-object p0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public declared-synchronized getSchemaInformation()Lorg/apache/xerces/xs/XSModel;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/XSModelImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/xs/XSModelImpl;-><init>([Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;
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

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaValue()Lorg/apache/xerces/xs/XSValue;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getValidationAttempted()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    return p0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    return-object p0
.end method

.method public getValidity()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    return p0
.end method

.method public isConstant()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fIsConstant:Z

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iput-boolean v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    return-void
.end method
