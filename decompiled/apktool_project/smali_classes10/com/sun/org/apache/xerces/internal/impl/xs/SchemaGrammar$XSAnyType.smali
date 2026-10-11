.class Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar$XSAnyType;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSAnyType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;-><init>()V

    const-string v0, "anyType"

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v0, 0x2

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;-><init>()V

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    return-object v0
.end method

.method public getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 2

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    return-object p0
.end method

.method public getAttributeWildcard()Lcom/sun/org/apache/xerces/internal/xs/XSWildcard;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    return-object p0
.end method

.method public getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;
    .locals 4

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v3, -0x1

    iput v3, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v3, 0x2

    iput-short v3, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v3, 0x66

    iput-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v3, 0x1

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v3, v3, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aput-object v1, v3, v2

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-object p0, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    return-object v1
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

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;SSSSZLcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)V
    .locals 0

    return-void
.end method
