.class public Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleArray"
.end annotation


# instance fields
.field fContextCount:I

.field fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

.field fPos:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    return-void
.end method


# virtual methods
.method public addParticle(Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v2, v1, p0

    add-int/lit8 v3, v2, 0x1

    aput v3, v1, p0

    aput-object p1, v0, v2

    return-void
.end method

.method public getParticleCount()I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v1, v0, p0

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public popContext()[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v2, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-array v4, v2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v5, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v4

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    return-object v3
.end method

.method public pushContext()V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v1, p0, -0x1

    aget v1, v0, v1

    aput v1, v0, p0

    return-void
.end method
