.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOBAL_NUM:I = 0xb


# instance fields
.field private fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

.field private fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

.field private fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

.field private fBlock:S

.field private fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

.field private fContentType:S

.field private fDerivedBy:S

.field private fEmptyParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

.field private fFinal:S

.field private fGlobalStore:[Ljava/lang/Object;

.field private fGlobalStorePos:I

.field private fIsAbstract:Z

.field private fName:Ljava/lang/String;

.field private fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

.field private fTargetNamespace:Ljava/lang/String;

.field private fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

.field private schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    const/4 p2, 0x2

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 p2, 0x0

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fEmptyParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->getInstance()Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    return-void
.end method

.method private addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    goto :goto_0

    :cond_1
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    array-length v0, p0

    sub-int/2addr v0, v1

    aput-object p1, p0, v0

    return-void
.end method

.method private contentBackup()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    array-length v3, v2

    if-ne v0, v3, :cond_1

    add-int/lit8 v3, v0, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    aput-object v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    aput-object v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v2, Ljava/lang/Integer;

    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    shl-int/lit8 v3, v3, 0x10

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v2, Ljava/lang/Integer;

    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    shl-int/lit8 v3, v3, 0x10

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    aput-object v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    aput-object v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aput-object v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    aput-object v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    aput-object p0, v0, v1

    return-void
.end method

.method private contentRestore()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v2, v0, v1

    check-cast v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v2, v0, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v2, v0, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v2, v0, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v2, v0, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    return-void
.end method

.method private genAnonTypeName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "#AnonType_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getErrorContent()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object p0

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    const/4 p0, 0x0

    iput p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v2, 0x1

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aput-object v0, v2, p0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    return-object p0
.end method

.method private getErrorWildcard()Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    return-object p0
.end method

.method private handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    const/4 p1, 0x3

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorContent()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object p0

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    return-void
.end method

.method private isAttrOrAttrGroup(Lorg/w3c/dom/Element;)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private mergeAttributes(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLorg/w3c/dom/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/XSAttributeUse;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object p2, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "ct-props-correct.5"

    invoke-direct {p1, p0, p3, p2, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw p1

    :cond_1
    if-nez p4, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object p2, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "ct-props-correct.4"

    invoke-direct {p1, p0, p3, p2, p5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw p1

    :cond_3
    if-eqz p4, :cond_5

    iget-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    iput-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    if-eqz p1, :cond_5

    iget-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;->performUnionWith(Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;S)Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    move-result-object p0

    iput-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lcom/sun/org/apache/xerces/internal/impl/xs/XSWildcardDecl;

    :cond_5
    :goto_2
    return-void
.end method

.method private processComplexContent(Lorg/w3c/dom/Element;ZZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_7

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual {v0, p1, v10, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto/16 :goto_3

    :cond_0
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSequence(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iget v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto/16 :goto_4

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseChoice(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iget v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v12, v9

    :goto_1
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v4, 0x8

    iget-object v5, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAll(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;ILcom/sun/org/apache/xerces/internal/xs/XSObject;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iget v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v12, v9

    :goto_2
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v7

    move-object v0, v8

    goto :goto_3

    :cond_7
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object v0, v8

    move-object v1, v0

    :goto_3
    move v12, v9

    :goto_4
    if-eqz v12, :cond_9

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    move-object v0, v8

    :cond_9
    const/4 v2, 0x3

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fEmptyParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    if-nez v0, :cond_a

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v3, 0x66

    iput-short v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v9, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iput-object v8, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    iput-object v3, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fEmptyParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-short v2, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-object v0, v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    :cond_a
    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fEmptyParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    :cond_b
    iput-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    if-nez v0, :cond_c

    iput-short v9, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    iput-short v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto :goto_5

    :cond_d
    const/4 v0, 0x2

    iput-short v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    :goto_5
    if-eqz v1, :cond_10

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lorg/w3c/dom/Element;)Z

    move-result v0

    const-string v7, "s4s-elt-invalid-content.1"

    if-eqz v0, :cond_f

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v5, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAttrsAndAttrGrps(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_e

    if-nez p3, :cond_10

    iget-object v0, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    goto :goto_6

    :cond_e
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v7, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_f
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v6, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v7, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_10
    :goto_6
    return-void
.end method

.method private traverseComplexContent(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v1, v10, v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v11, v1

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    :goto_0
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7, v12, v10, v9, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v10

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_2
    :goto_1
    if-eqz v12, :cond_1e

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v13, "s4s-elt-invalid-content.1"

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-eqz v1, :cond_3

    iput-short v15, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-short v14, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_2
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_1c

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v12, v9, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v1, v6, v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-eqz v1, :cond_1b

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v2, 0x7

    invoke-virtual {v0, v8, v2, v1, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v0, :cond_1a

    instance-of v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v1

    iget-short v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v6, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-short v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v0, v14, :cond_4

    const-string v0, "cos-ct-extends.1.1"

    goto :goto_3

    :cond_4
    const-string v0, "derivation-ok-restriction.1"

    :goto_3
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v7, v0, v2, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_5
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v7, v12, v6, v9, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    :cond_6
    move-object v9, v5

    move-object v14, v6

    goto :goto_4

    :cond_7
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v6

    move-object v9, v5

    move/from16 v5, v16

    move-object v14, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :goto_4
    if-eqz v12, :cond_a

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v13, v1, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_9
    move-object v14, v6

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v14

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_a
    :goto_5
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object v2, v12

    move v3, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lorg/w3c/dom/Element;ZZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-short v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v3, 0x3

    if-ne v2, v15, :cond_e

    iget-short v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    if-ne v1, v3, :cond_c

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-ne v1, v3, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "derivation-ok-restriction.5.4.1.2"

    invoke-direct {v1, v7, v2, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_c
    :goto_6
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLorg/w3c/dom/Element;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    if-eq v0, v1, :cond_18

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    goto/16 :goto_b

    :cond_d
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v7, v2, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :catch_0
    move-exception v0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :cond_e
    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v2

    iput-short v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getSimpleType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    goto/16 :goto_a

    :cond_f
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_a

    :cond_10
    iget-short v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    if-ne v1, v15, :cond_12

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-ne v1, v15, :cond_11

    goto :goto_7

    :cond_11
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cos-ct-extends.1.4.3.2.2.1.a"

    invoke-direct {v0, v7, v2, v1, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_12
    :goto_7
    iget-short v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    if-ne v1, v3, :cond_14

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    if-ne v1, v3, :cond_13

    goto :goto_8

    :cond_13
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cos-ct-extends.1.4.3.2.2.1.b"

    invoke-direct {v0, v7, v2, v1, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_14
    :goto_8
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/16 v4, 0x67

    if-ne v2, v3, :cond_15

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    if-eq v1, v4, :cond_16

    :cond_15
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-short v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    if-ne v1, v3, :cond_17

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    if-eq v1, v4, :cond_16

    goto :goto_9

    :cond_16
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v1, "cos-all-limited.1.2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v7, v1, v2, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_17
    :goto_9
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v15, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v2, v15, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    iput-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-object v1, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    iput-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    :goto_a
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    :try_start_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLorg/w3c/dom/Element;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_18
    :goto_b
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v0

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    throw v1

    :cond_19
    move-object v14, v6

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "src-ct.1"

    invoke-direct {v1, v7, v2, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_1a
    move-object v14, v6

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;)V

    throw v0

    :cond_1b
    move-object v14, v6

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v2, "base"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "s4s-att-must-appear"

    invoke-direct {v1, v7, v2, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_1c
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v7, v13, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v2

    :cond_1d
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v7, v13, v0, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_1e
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v10, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "s4s-elt-invalid-content.2"

    invoke-direct {v1, v7, v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1
.end method

.method private traverseComplexContentDecl(Lorg/w3c/dom/Element;Z)V
    .locals 0

    return-void
.end method

.method private traverseComplexTypeDecl(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;-><init>()V

    iput-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;-><init>()V

    iput-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v1, v4, v1

    check-cast v1, Ljava/lang/Boolean;

    sget v2, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v2, v4, v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    sget v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v3, v4, v3

    move-object v10, v3

    check-cast v10, Ljava/lang/Boolean;

    sget v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v3, v4, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v5, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v5, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-short v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_0
    iput-short v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    if-nez v3, :cond_1

    iget-short v0, v8, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_1
    iget-short v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    and-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    iput-short v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    and-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    iput-short v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    const/4 v0, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v11

    :goto_2
    iput-boolean v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x2

    const-string v14, "s4s-elt-invalid-content.1"

    if-eqz v12, :cond_6

    :try_start_1
    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v15, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7, v12, v4, v11, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v12

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_4
    :goto_3
    if-eqz v12, :cond_7

    invoke-static {v12}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v2, v13, [Ljava/lang/Object;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v2, v11

    aput-object v15, v2, v0

    invoke-direct {v1, v7, v14, v2, v12}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_7
    :goto_4
    move-object v2, v12

    if-nez v2, :cond_8

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lorg/w3c/dom/Element;ZZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    goto/16 :goto_5

    :cond_8
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {v7, v2, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSimpleContent(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v4, v13, [Ljava/lang/Object;

    iget-object v5, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v5, v4, v11

    aput-object v2, v4, v0

    invoke-direct {v3, v7, v14, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v3

    :cond_a
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v7, v2, v1, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexContent(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    new-array v4, v13, [Ljava/lang/Object;

    iget-object v5, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v5, v4, v11

    aput-object v2, v4, v0

    invoke-direct {v3, v7, v14, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v3

    :cond_c
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->fAnyType:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lorg/w3c/dom/Element;ZZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorSubstText:[Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorElem:Lorg/w3c/dom/Element;

    invoke-direct {v7, v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_5
    iget-object v12, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iget-object v13, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v14, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    iget-object v15, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iget-short v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    iget-short v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iget-short v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    iget-short v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iget-boolean v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iget-object v5, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v6, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v8, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    new-instance v9, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iget-object v10, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    if-nez v10, :cond_d

    goto :goto_6

    :cond_d
    array-length v11, v10

    :goto_6
    invoke-direct {v9, v10, v11}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-virtual/range {v12 .. v24}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;SSSSZLcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    return-object v0
.end method

.method private traverseSimpleContent(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    iput-short v12, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v13, v11, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v13}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v11

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_1
    move-object v2, v13

    :goto_0
    if-eqz v2, :cond_22

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v13, 0x2

    const-string v14, "s4s-elt-invalid-content.1"

    if-eqz v3, :cond_2

    iput-short v13, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iput-short v12, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_1
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_20

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v3, v2, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v15

    sget v3, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v3, v15, v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-eqz v3, :cond_1f

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x7

    invoke-virtual {v1, v9, v4, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;ILcom/sun/org/apache/xerces/internal/xni/QName;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz v1, :cond_1e

    iput-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    const-string v5, "src-ct.2.1"

    if-ne v3, v4, :cond_5

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v3

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v4

    if-ne v4, v12, :cond_3

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getSimpleType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-object/from16 v16, v1

    goto :goto_2

    :cond_3
    iget-short v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v4, v13, :cond_4

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getParticle()Lcom/sun/org/apache/xerces/internal/xs/XSParticle;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v6, v0

    move-object/from16 v16, v1

    goto :goto_3

    :cond_4
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v5, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_5
    move-object v4, v1

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-short v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-eq v1, v13, :cond_1d

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getFinal()S

    move-result v3

    move-object/from16 v16, v0

    :goto_2
    move-object v6, v4

    :goto_3
    iget-short v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-short v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v0, v12, :cond_6

    const-string v0, "cos-ct-extends.1.1"

    goto :goto_4

    :cond_6
    const-string v0, "derivation-ok-restriction.1"

    :goto_4
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v7, v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7, v5, v15, v10, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAnnotationDecl(Lorg/w3c/dom/Element;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v0, v4

    move-object v10, v6

    goto :goto_6

    :cond_8
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v0, v4

    move-object v4, v15

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object v10, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    goto :goto_5

    :cond_9
    move-object v0, v4

    move-object/from16 v18, v5

    move-object v10, v6

    :goto_5
    move-object/from16 v5, v18

    :goto_6
    if-eqz v5, :cond_b

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v7, v14, v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_b
    :goto_7
    move-object v2, v5

    goto :goto_8

    :cond_c
    move-object/from16 v18, v5

    move-object v10, v6

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v4, v15

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseSyntheticAnnotation(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAnnotationImpl;)V

    :cond_d
    move-object/from16 v2, v18

    :goto_8
    iget-short v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    if-ne v0, v13, :cond_18

    if-eqz v2, :cond_11

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v5, p3

    invoke-virtual {v0, v2, v9, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v6

    if-eqz v6, :cond_10

    if-eqz v10, :cond_f

    invoke-interface {v10}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getFinal()S

    move-result v0

    invoke-static {v6, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;S)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-interface {v6}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "derivation-ok-restriction.5.2.2.1"

    invoke-direct {v0, v7, v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_f
    :goto_9
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    goto :goto_a

    :cond_10
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;)V

    throw v0

    :cond_11
    move-object/from16 v5, p3

    move-object v6, v10

    :goto_a
    if-eqz v6, :cond_17

    if-eqz v2, :cond_12

    invoke-virtual {v7, v2, v6, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseFacets(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lorg/w3c/dom/Element;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

    iget-short v10, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    move-object/from16 v24, v3

    move v3, v0

    move-object/from16 v0, v24

    move/from16 v25, v10

    move-object v10, v1

    move/from16 v1, v25

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_b
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->schemaFactory:Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;

    const/16 v19, 0x0

    iget-object v13, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v4

    move-object/from16 v20, v13

    move-object/from16 v22, v6

    invoke-virtual/range {v18 .. v23}, Lcom/sun/org/apache/xerces/internal/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    move-result-object v4

    iput-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :try_start_0
    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    iget-object v6, v9, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;->setNamespaceSupport(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v6, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fValidationState:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationState;

    invoke-interface {v4, v0, v1, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->applyFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :goto_c
    if-eqz v10, :cond_15

    invoke-direct {v7, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v6, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAttrsAndAttrGrps(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v7, v14, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_14
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-static {v10}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v14, v1, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_15
    :goto_d
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLorg/w3c/dom/Element;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    goto/16 :goto_f

    :cond_16
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    array-length v2, v0

    sub-int/2addr v2, v12

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v7, v2, v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :catch_1
    move-exception v0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :cond_17
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "src-ct.2.2"

    invoke-direct {v0, v7, v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_18
    move-object/from16 v5, p3

    iput-object v10, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    if-eqz v2, :cond_1b

    invoke-direct {v7, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v6, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->traverseAttrsAndAttrGrps(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    goto :goto_e

    :cond_19
    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v7, v14, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_1a
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v14, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_1b
    :goto_e
    if-eqz v16, :cond_1c

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;

    iget-object v4, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLorg/w3c/dom/Element;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    throw v0

    :cond_1c
    :goto_f
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1d
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v5, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_1e
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;)V

    throw v0

    :cond_1f
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v15, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v3, "base"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "s4s-att-must-appear"

    invoke-direct {v0, v7, v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_20
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/DOMUtil;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v2, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v7, v14, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v1

    :cond_21
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v3, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v7, v14, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0

    :cond_22
    iget-object v0, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    iget-object v1, v7, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "s4s-elt-invalid-content.2"

    invoke-direct {v0, v7, v2, v1, v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    throw v0
.end method

.method private traverseSimpleContentDecl(Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public traverseGlobal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    if-nez v1, :cond_0

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "s4s-att-must-appear"

    invoke-virtual {p0, v3, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addGlobalTypeDecl(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v2
.end method

.method public traverseLocal(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lorg/w3c/dom/Element;ZLcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fSchemaHandler:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;->element2Locator(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;->fAttrChecker:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1
.end method
