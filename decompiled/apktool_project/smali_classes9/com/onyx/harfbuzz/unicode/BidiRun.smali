.class public Lcom/onyx/harfbuzz/unicode/BidiRun;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public charEnd:I

.field public charStart:I

.field public embeddingLevel:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIB)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charStart:I

    .line 3
    iput p2, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charEnd:I

    .line 4
    iput-byte p3, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->embeddingLevel:B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/unicode/BidiRun;

    iget v2, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charStart:I

    iget v3, p1, Lcom/onyx/harfbuzz/unicode/BidiRun;->charStart:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charEnd:I

    iget v3, p1, Lcom/onyx/harfbuzz/unicode/BidiRun;->charEnd:I

    if-ne v2, v3, :cond_2

    iget-byte p0, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->embeddingLevel:B

    iget-byte p1, p1, Lcom/onyx/harfbuzz/unicode/BidiRun;->embeddingLevel:B

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charStart:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charEnd:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte p0, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->embeddingLevel:B

    add-int/2addr v0, p0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    iget-byte p0, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->embeddingLevel:B

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BidiRun{charStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->charEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", embeddingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/onyx/harfbuzz/unicode/BidiRun;->embeddingLevel:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
