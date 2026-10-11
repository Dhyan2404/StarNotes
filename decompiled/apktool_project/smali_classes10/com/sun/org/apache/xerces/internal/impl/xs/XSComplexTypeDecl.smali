.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSComplexTypeDefinition;
.implements Lorg/w3c/dom/TypeInfo;


# static fields
.field private static final CT_HAS_TYPE_ID:S = 0x2s

.field private static final CT_IS_ABSTRACT:S = 0x1s

.field private static final CT_IS_ANONYMOUS:S = 0x4s

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4


# instance fields
.field fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

.field fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

.field fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

.field fBlock:S

.field fCMValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

.field fContentType:S

.field fDerivedBy:S

.field fFinal:S

.field fMiscFlags:S

.field fName:Ljava/lang/String;

.field fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

.field fTargetNamespace:Ljava/lang/String;

.field fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v1, 0x2

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fFinal:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fCMValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p4, :cond_4

    if-eq p4, v0, :cond_4

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method private isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p0

    :goto_0
    if-eqz p4, :cond_8

    if-eq p4, v0, :cond_8

    const-string v0, "anyType"

    const-string v2, "anySimpleType"

    if-eqz p1, :cond_0

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v1

    :cond_3
    instance-of v3, p4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object p2, v2

    :cond_4
    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_5

    check-cast p4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    and-int/lit8 p0, p3, 0x1

    invoke-virtual {p4, p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    :goto_1
    and-int/2addr p0, v1

    return p0

    :cond_5
    check-cast p4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p4, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_1

    :cond_6
    move-object v0, p4

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result v0

    if-ne v0, v4, :cond_7

    or-int/lit8 v1, v1, 0x1

    :cond_7
    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    move-object v5, v0

    move-object v0, p4

    move-object p4, v5

    goto/16 :goto_0

    :cond_8
    :goto_2
    return p0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_7

    if-eq p4, p0, :cond_7

    const-string p0, "anySimpleType"

    if-eqz p1, :cond_0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    instance-of v1, p4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "anyType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p2, p0

    :cond_4
    check-cast p4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p4, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_5
    move-object p0, p4

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    return v0

    :cond_6
    invoke-interface {p4}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    move-object v2, p4

    move-object p4, p0

    move-object p0, v2

    goto :goto_0

    :cond_7
    return v0
.end method


# virtual methods
.method public appendTypeInfo(Ljava/lang/StringBuffer;)V
    .locals 5

    const-string v0, "ELEMENT"

    const-string v1, "MIXED"

    const-string v2, "EMPTY"

    const-string v3, "SIMPLE"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTENSION"

    const-string v3, "RESTRICTION"

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complex type name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " base type name=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " content type=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isAbstract=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hasTypeId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " final=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fFinal:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " block=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " particle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " derivedBy=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public containsTypeID()Z
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "anyType"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-eq p0, v1, :cond_4

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eq p0, v1, :cond_4

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-eq p0, p1, :cond_5

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eq p0, p1, :cond_5

    move p3, v0

    :cond_5
    return p3
.end method

.method public derivedFromType(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;S)Z
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    :goto_0
    if-eq p0, p1, :cond_2

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eq p0, v0, :cond_2

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-ne p0, p1, :cond_3

    move p2, v1

    :cond_3
    return p2
.end method

.method public getAbstract()Z
    .locals 1

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    return-object p0
.end method

.method public getAnonymous()Z
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    return-object p0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeWildcard()Lcom/sun/org/apache/xerces/internal/xs/XSWildcard;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeWildcard()Lcom/sun/org/apache/xerces/internal/xs/XSWildcard;

    move-result-object p0

    return-object p0
.end method

.method public getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-object p0
.end method

.method public declared-synchronized getContentModel(Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fCMValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/CMBuilder;->getContentModel(Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fCMValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fCMValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContentType()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    return p0
.end method

.method public getDerivationMethod()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    return p0
.end method

.method public getFinal()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fFinal:S

    return p0
.end method

.method public getFinalSet()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fFinal:S

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    return-object p0
.end method

.method public getProhibitedSubstitutions()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    return p0
.end method

.method public getSimpleType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getTypeCategory()S
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string v1, "anyType"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p3, v2, :cond_1

    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    return v2

    :cond_1
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2, p3, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_3

    invoke-direct {p0, p1, p2, p3, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_4

    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_8

    :cond_4
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string p2, "anySimpleType"

    :cond_5
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v1, :cond_7

    instance-of v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v5, :cond_7

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_7
    if-eqz v1, :cond_8

    instance-of v5, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eqz v5, :cond_8

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_8
    if-nez v4, :cond_9

    if-nez v3, :cond_9

    if-nez v2, :cond_9

    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_9

    invoke-direct {p0, p1, p2, p3, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result p0

    return p0

    :cond_9
    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isFinal(S)Z
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fFinal:S

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProhibitedSubstitution(S)Z
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 v1, 0x2

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fFinal:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->reset()V

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fCMValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->clear()V

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public setContainsTypeID()V
    .locals 1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    return-void
.end method

.method public setIsAbstractType()V
    .locals 1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    return-void
.end method

.method public setIsAnonymous()V
    .locals 1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;SSSSZLcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-short p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    iput-short p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fFinal:S

    iput-short p6, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fBlock:S

    iput-short p7, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eqz p8, :cond_0

    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    :cond_0
    iput-object p9, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iput-object p10, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object p11, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object p12, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->appendTypeInfo(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
