.class public final Lorg/apache/xerces/impl/xs/XSDeclarationPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:I = 0x8

.field public static final q:I = 0x100

.field public static final r:I = 0xff

.field public static final s:I = 0x4


# instance fields
.field public a:[[Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public b:I

.field public c:[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

.field public d:I

.field public e:[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

.field public f:I

.field public g:[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

.field public h:I

.field public i:[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

.field public j:I

.field public k:[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field public l:I

.field public m:[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

.field public n:I

.field public o:Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->a:[[Lorg/apache/xerces/impl/xs/XSElementDecl;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->b:I

    new-array v2, v0, [[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->c:[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->d:I

    new-array v2, v0, [[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->e:[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->f:I

    new-array v2, v0, [[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->g:[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->h:I

    new-array v2, v0, [[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->i:[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->j:I

    new-array v2, v0, [[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->k:[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->l:I

    new-array v0, v0, [[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->m:[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->n:I

    return-void
.end method

.method public static h([[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;I)[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static i([[Lorg/apache/xerces/impl/xs/XSAttributeDecl;I)[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static j([[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;I)[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static k([[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;I)[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static l([[Lorg/apache/xerces/impl/xs/XSElementDecl;I)[[Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/xs/XSElementDecl;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static m([[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;I)[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static n([[Lorg/apache/xerces/impl/xs/XSParticleDecl;I)[[Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->g:[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->i([[Lorg/apache/xerces/impl/xs/XSAttributeDecl;I)[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->g:[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->g:[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final b(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->m:[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->j([[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;I)[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->m:[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->m:[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final c(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->i:[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->k([[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;I)[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->i:[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->i:[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final d(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->a:[[Lorg/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->l([[Lorg/apache/xerces/impl/xs/XSElementDecl;I)[[Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->a:[[Lorg/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->a:[[Lorg/apache/xerces/impl/xs/XSElementDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final e(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->e:[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->m([[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;I)[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->e:[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->e:[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final f(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->c:[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->n([[Lorg/apache/xerces/impl/xs/XSParticleDecl;I)[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->c:[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->c:[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final g(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->k:[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->h([[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;I)[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->k:[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->k:[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final getAttributeDecl()Lorg/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->h:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->a(I)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->g:[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSAttributeDecl;->reset()V

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->h:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->g:[[Lorg/apache/xerces/impl/xs/XSAttributeDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getAttributeUse()Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->n:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->b(I)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->m:[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;->reset()V

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->n:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->m:[[Lorg/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getComplexTypeDecl()Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->j:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->c(I)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->i:[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->reset()V

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->j:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->i:[[Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getElementDecl()Lorg/apache/xerces/impl/xs/XSElementDecl;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->b:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->d(I)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->a:[[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSElementDecl;->reset()V

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->b:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->a:[[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getModelGroup()Lorg/apache/xerces/impl/xs/XSModelGroupImpl;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->f:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->e(I)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->e:[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->reset()V

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->f:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->e:[[Lorg/apache/xerces/impl/xs/XSModelGroupImpl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getParticleDecl()Lorg/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->d:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->f(I)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->c:[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->reset()V

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->d:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->c:[[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getSimpleTypeDecl()Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->l:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->g(I)Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->k:[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v1

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->o:Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;->newXSSimpleTypeDecl()Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reset()V

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->l:I

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->k:[[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object p0, p0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->b:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->d:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->f:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->l:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->j:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->h:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->n:I

    return-void
.end method

.method public setDVFactory(Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSDeclarationPool;->o:Lorg/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;

    return-void
.end method
