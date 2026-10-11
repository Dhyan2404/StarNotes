.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;
.super Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;
.source "SourceFile"


# instance fields
.field private fElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fPosition:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 2

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;-><init>(I)V

    .line 7
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    .line 9
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/QName;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMNode;-><init>(I)V

    .line 2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    .line 4
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    .line 5
    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    return-void
.end method


# virtual methods
.method public calcFirstPos(Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;)V
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

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

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void
.end method

.method public final getElement()Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-object p0
.end method

.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    return p0
.end method

.method public isNullable()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

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

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Integer;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/CMLeaf;->fPosition:I

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

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
