.class public final Ljava/awt/font/TextHitInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private charIndex:I

.field private isLeadingEdge:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    iput-boolean p2, p0, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    return-void
.end method

.method public static afterOffset(I)Ljava/awt/font/TextHitInfo;
    .locals 2

    new-instance v0, Ljava/awt/font/TextHitInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/awt/font/TextHitInfo;-><init>(IZ)V

    return-object v0
.end method

.method public static beforeOffset(I)Ljava/awt/font/TextHitInfo;
    .locals 2

    new-instance v0, Ljava/awt/font/TextHitInfo;

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/awt/font/TextHitInfo;-><init>(IZ)V

    return-object v0
.end method

.method public static leading(I)Ljava/awt/font/TextHitInfo;
    .locals 2

    new-instance v0, Ljava/awt/font/TextHitInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/awt/font/TextHitInfo;-><init>(IZ)V

    return-object v0
.end method

.method public static trailing(I)Ljava/awt/font/TextHitInfo;
    .locals 2

    new-instance v0, Ljava/awt/font/TextHitInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/awt/font/TextHitInfo;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/awt/font/TextHitInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    iget v1, p1, Ljava/awt/font/TextHitInfo;->charIndex:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    iget-boolean p1, p1, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/awt/font/TextHitInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/font/TextHitInfo;

    invoke-virtual {p0, p1}, Ljava/awt/font/TextHitInfo;->equals(Ljava/awt/font/TextHitInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCharIndex()I
    .locals 0

    iget p0, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    return p0
.end method

.method public getInsertionIndex()I
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    iget p0, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public getOffsetHit(I)Ljava/awt/font/TextHitInfo;
    .locals 2

    new-instance v0, Ljava/awt/font/TextHitInfo;

    iget v1, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    add-int/2addr v1, p1

    iget-boolean p0, p0, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    invoke-direct {v0, v1, p0}, Ljava/awt/font/TextHitInfo;-><init>(IZ)V

    return-object v0
.end method

.method public getOtherHit()Ljava/awt/font/TextHitInfo;
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/awt/font/TextHitInfo;->trailing(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/awt/font/TextHitInfo;->leading(I)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    return p0
.end method

.method public isLeadingEdge()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextHitInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/awt/font/TextHitInfo;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ljava/awt/font/TextHitInfo;->isLeadingEdge:Z

    if-eqz p0, :cond_0

    const-string p0, "L"

    goto :goto_0

    :cond_0
    const-string p0, "T"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
