.class public Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSComplexTypeDefinition;
.implements Lorg/w3c/dom/TypeInfo;


# static fields
.field public static final J:S = 0x4s

.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field public static final w:I = 0x4

.field public static final x:I = 0x8

.field public static final y:S = 0x1s

.field public static final z:S = 0x2s


# instance fields
.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lorg/apache/xerces/xs/XSTypeDefinition;

.field public h:S

.field public i:S

.field public j:S

.field public k:S

.field public l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field public m:S

.field public n:Lorg/apache/xerces/impl/dv/XSSimpleType;

.field public o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

.field public p:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

.field public q:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

.field public r:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public s:Lorg/apache/xerces/xs/XSNamespaceItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x2

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->h:S

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->i:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->j:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->p:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->q:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->r:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->s:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuffer;)V
    .locals 4

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

    const-string v2, "Complex type name=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\', "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v3, :cond_0

    const-string v3, " base type name=\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, " content type=\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v3, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " isAbstract=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " hasTypeId=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " final=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->i:S

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " block=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->j:S

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v0, :cond_1

    const-string v0, " particle=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, " derivedBy=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->h:S

    aget-object p0, v1, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'. "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p4, :cond_5

    if-ne p4, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->d(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->c(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-interface {p4}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p0

    :goto_0
    if-eqz p4, :cond_9

    if-ne p4, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "anyType"

    const-string v2, "anySimpleType"

    if-eqz p1, :cond_1

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p1, :cond_2

    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    return v1

    :cond_4
    instance-of v3, p4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    sget-object p0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move-object p2, v2

    :cond_5
    and-int/lit8 p0, p3, 0x2

    check-cast p4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz p0, :cond_6

    and-int/lit8 p0, p3, 0x1

    invoke-virtual {p4, p1, p2, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    :goto_1
    and-int/2addr p0, v1

    return p0

    :cond_6
    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_1

    :cond_7
    move-object v0, p4

    check-cast v0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result v0

    if-ne v0, v4, :cond_8

    or-int/lit8 v1, v1, 0x1

    :cond_8
    invoke-interface {p4}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    move-object v5, v0

    move-object v0, p4

    move-object p4, v5

    goto/16 :goto_0

    :cond_9
    :goto_2
    return p0
.end method

.method public containsTypeID()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_8

    if-ne p4, p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "anySimpleType"

    if-eqz p1, :cond_1

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-interface {p4}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v1, p4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_6

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "anyType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object p2, p0

    :cond_5
    check-cast p4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_6
    move-object p0, p4

    check-cast p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    return v0

    :cond_7
    invoke-interface {p4}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    move-object v2, p4

    move-object p4, p0

    move-object p0, v2

    goto :goto_0

    :cond_8
    :goto_1
    return v0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

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
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    if-eq p0, v1, :cond_5

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    if-eq p0, p1, :cond_6

    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p0, p1, :cond_6

    move p3, v0

    :cond_6
    return p3
.end method

.method public derivedFromType(Lorg/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    :goto_0
    if-eq p0, p1, :cond_3

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    if-eq p0, v0, :cond_3

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    if-ne p0, p1, :cond_4

    move p2, v1

    :cond_4
    return p2
.end method

.method public e(Lorg/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->s:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public getAbstract()Z
    .locals 1

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->r:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getAnonymous()Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAttrGrp()Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object p0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/XSAttributeUse;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeWildcard()Lorg/apache/xerces/xs/XSWildcard;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeWildcard()Lorg/apache/xerces/xs/XSWildcard;

    move-result-object p0

    return-object p0
.end method

.method public getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    return-object p0
.end method

.method public getContentModel(Lorg/apache/xerces/impl/xs/models/CMBuilder;)Lorg/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lorg/apache/xerces/impl/xs/models/CMBuilder;Z)Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getContentModel(Lorg/apache/xerces/impl/xs/models/CMBuilder;Z)Lorg/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->p:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->q:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lorg/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->q:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/xerces/impl/xs/models/XSCMValidator;->isCompactedForUPA()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->q:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->p:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->q:Lorg/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p0, p2}, Lorg/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->p:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    :cond_2
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->p:Lorg/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContentType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    return p0
.end method

.method public getDerivationMethod()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->h:S

    return p0
.end method

.method public getFinal()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->i:S

    return p0
.end method

.method public getFinalSet()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->i:S

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->s:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-object p0
.end method

.method public getParticle()Lorg/apache/xerces/xs/XSParticle;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    return-object p0
.end method

.method public getProhibitedSubstitutions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->j:S

    return p0
.end method

.method public getSimpleType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

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

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespace()Ljava/lang/String;

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

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2, p3, p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->d(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1, p2, p3, p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->c(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z

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

    sget-object v5, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string p2, "anySimpleType"

    :cond_5
    iget-object v6, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_7

    instance-of v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v5, :cond_7

    check-cast v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_7
    if-eqz v1, :cond_8

    instance-of v5, v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v5, :cond_8

    check-cast v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_8
    if-nez v4, :cond_9

    if-nez v3, :cond_9

    if-nez v2, :cond_9

    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_9

    invoke-virtual {p0, p1, p2, p3, p0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->b(Ljava/lang/String;Ljava/lang/String;ILorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p0

    return p0

    :cond_9
    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isFinal(S)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->i:S

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

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->j:S

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

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x2

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->h:S

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->i:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->j:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;->reset()V

    iput-short v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->p:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->q:Lorg/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->r:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->clearXSObjectList()V

    :cond_0
    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->r:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public setContainsTypeID()V
    .locals 1

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    return-void
.end method

.method public setIsAbstractType()V
    .locals 1

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    return-void
.end method

.method public setIsAnonymous()V
    .locals 1

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->e:Ljava/lang/String;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;SSSSZLorg/apache/xerces/impl/xs/XSAttributeGroupDecl;Lorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/impl/xs/XSParticleDecl;Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;)V
    .locals 0

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->f:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->g:Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-short p4, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->h:S

    iput-short p5, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->i:S

    iput-short p6, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->j:S

    iput-short p7, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->m:S

    if-eqz p8, :cond_0

    iget-short p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->k:S

    :cond_0
    iput-object p9, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->l:Lorg/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object p10, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->n:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object p11, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->o:Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iput-object p12, p0, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->r:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
