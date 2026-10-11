.class public Lorg/apache/xerces/impl/xs/SchemaGrammar$b;
.super Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    const-string v0, "anyType"

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e:Ljava/lang/String;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

    iput-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->h:S

    const/4 v0, 0x3

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar$b;->g()Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/SchemaGrammar$b;->f()Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-void
.end method


# virtual methods
.method public final f()Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    new-instance p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v0, 0x3

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    new-instance v0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    iput-object p0, v0, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v0
.end method

.method public final g()Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    new-instance p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v0, 0x3

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    new-instance v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v3, -0x1

    iput v3, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v3, 0x2

    iput-short v3, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    new-instance p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v3, 0x66

    iput-short v3, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v3, v3, [Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v3, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v1, v3, v2

    new-instance v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput-short v0, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object p0, v1, Lorg/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lorg/apache/xerces/xs/XSTerm;

    return-object v1
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lorg/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;SSSSZLorg/apache/xerces/impl/xs/XSAttributeGroupDecl;Lorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setContainsTypeID()V
    .locals 0

    return-void
.end method

.method public setIsAbstractType()V
    .locals 0

    return-void
.end method

.method public setIsAnonymous()V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
