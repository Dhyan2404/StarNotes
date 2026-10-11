.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/XSParticle;


# static fields
.field public static final PARTICLE_ELEMENT:S = 0x1s

.field public static final PARTICLE_EMPTY:S = 0x0s

.field public static final PARTICLE_MODELGROUP:S = 0x3s

.field public static final PARTICLE_ONE_OR_MORE:S = 0x6s

.field public static final PARTICLE_WILDCARD:S = 0x2s

.field public static final PARTICLE_ZERO_OR_MORE:S = 0x4s

.field public static final PARTICLE_ZERO_OR_ONE:S = 0x5s


# instance fields
.field private fDescription:Ljava/lang/String;

.field public fMaxOccurs:I

.field public fMinOccurs:I

.field public fType:S

.field public fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendParticle(Ljava/lang/StringBuffer;)V
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string p0, "EMPTY"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public emptiable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMaxOccurs()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    return p0
.end method

.method public getMaxOccursUnbounded()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMinOccurs()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTerm()Lcom/sun/org/apache/xerces/internal/xs/XSTerm;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->isEmpty()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public makeClone()Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;-><init>()V

    iget-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iput-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    return-object v0
.end method

.method public maxEffectiveTotalRange()I
    .locals 3

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->maxEffectiveTotalRange()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v2, v1, :cond_2

    return v1

    :cond_2
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    mul-int/2addr v0, p0

    return v0

    :cond_3
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    return p0
.end method

.method public minEffectiveTotalRange()I
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSModelGroupImpl;->minEffectiveTotalRange()I

    move-result v0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    mul-int/2addr v0, p0

    return v0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fType:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fValue:Lcom/sun/org/apache/xerces/internal/xs/XSTerm;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->appendParticle(Ljava/lang/StringBuffer;)V

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v1, :cond_0

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eq v1, v2, :cond_4

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v1, "-UNBOUNDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-eq v2, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fMaxOccurs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSParticleDecl;->fDescription:Ljava/lang/String;

    return-object p0
.end method
