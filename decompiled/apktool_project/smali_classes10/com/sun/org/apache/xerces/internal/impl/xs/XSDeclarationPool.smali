.class public final Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHUNK_MASK:I = 0xff

.field private static final CHUNK_SHIFT:I = 0x8

.field private static final CHUNK_SIZE:I = 0x100

.field private static final INITIAL_CHUNK_COUNT:I = 0x4


# instance fields
.field private fAttrDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

.field private fAttrDeclIndex:I

.field private fAttributeUse:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

.field private fAttributeUseIndex:I

.field private fCTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

.field private fCTDeclIndex:I

.field private fElementDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

.field private fElementDeclIndex:I

.field private fModelGroup:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

.field private fModelGroupIndex:I

.field private fParticleDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

.field private fParticleDeclIndex:I

.field private fSTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

.field private fSTDeclIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    new-array v2, v0, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    new-array v2, v0, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroup:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    new-array v2, v0, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    new-array v2, v0, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    new-array v2, v0, [[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    new-array v0, v0, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    return-void
.end method

.method private ensureAttrDeclCapacity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private ensureAttributeUseCapacity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private ensureCTDeclCapacity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private ensureElementDeclCapacity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private ensureModelGroupCapacity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroup:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroup:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroup:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private ensureParticleDeclCapacity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private ensureSTDeclCapacity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->resize([[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
    .locals 2

    .line 11
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;
    .locals 2

    .line 7
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;
    .locals 2

    .line 9
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
    .locals 2

    .line 13
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    .line 14
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 2

    .line 1
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;
    .locals 2

    .line 5
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static resize([[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;I)[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 2

    .line 3
    new-array p1, p1, [[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method public final getAttributeDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->ensureAttrDeclCapacity(I)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;->reset()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getAttributeUse()Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->ensureAttributeUseCapacity(I)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;->reset()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUse:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSAttributeUseImpl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getComplexTypeDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->ensureCTDeclCapacity(I)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->reset()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getElementDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->ensureElementDeclCapacity(I)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->reset()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getModelGroup()Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->ensureModelGroupCapacity(I)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroup:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->reset()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroup:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getParticleDecl()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->ensureParticleDeclCapacity(I)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->reset()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDecl:[[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getSimpleTypeDecl()Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->ensureSTDeclCapacity(I)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reset()V

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDecl:[[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fElementDeclIndex:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fParticleDeclIndex:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fModelGroupIndex:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fSTDeclIndex:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fCTDeclIndex:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttrDeclIndex:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSDeclarationPool;->fAttributeUseIndex:I

    return-void
.end method
