.class public Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;
.super Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
.source "SourceFile"


# instance fields
.field private fLeaf:Ljava/lang/Object;

.field private fParticleId:I

.field private fPosition:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;-><init>(I)V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fLeaf:Ljava/lang/Object;

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fParticleId:I

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    return-void
.end method


# virtual methods
.method public calcFirstPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void
.end method

.method public calcLastPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void
.end method

.method public final getLeaf()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fLeaf:Ljava/lang/Object;

    return-object p0
.end method

.method public final getParticleId()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fParticleId:I

    return p0
.end method

.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    return p0
.end method

.method public isNullable()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fLeaf:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMLeaf;->fPosition:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
