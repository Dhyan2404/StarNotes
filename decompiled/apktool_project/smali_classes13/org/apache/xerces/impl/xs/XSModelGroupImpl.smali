.class public Lorg/apache/xerces/impl/xs/XSModelGroupImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSModelGroup;


# static fields
.field public static final MODELGROUP_ALL:S = 0x67s

.field public static final MODELGROUP_CHOICE:S = 0x65s

.field public static final MODELGROUP_SEQUENCE:S = 0x66s


# instance fields
.field public e:Ljava/lang/String;

.field public fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field public fCompositor:S

.field public fParticleCount:I

.field public fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v3

    :cond_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v2

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v3

    if-ne v3, v1, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d()I
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v2

    if-ge v2, v1, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAnnotation()Lorg/apache/xerces/xs/XSAnnotation;
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSAnnotation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getCompositor()S
    .locals 1

    iget-short p0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/16 v0, 0x66

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x3

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

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParticles()Lorg/apache/xerces/xs/XSObjectList;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    iget p0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public maxEffectiveTotalRange()I
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->b()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->a()I

    move-result p0

    return p0
.end method

.method public minEffectiveTotalRange()I
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->d()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->c()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 2

    const/16 v0, 0x66

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-short v1, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    const-string v1, "all("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v2, :cond_2

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->e:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-short v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v3, 0x65

    if-ne v2, v3, :cond_3

    const/16 v2, 0x7c

    goto :goto_2

    :cond_3
    const/16 v2, 0x2c

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lorg/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSModelGroupImpl;->e:Ljava/lang/String;

    return-object p0
.end method
