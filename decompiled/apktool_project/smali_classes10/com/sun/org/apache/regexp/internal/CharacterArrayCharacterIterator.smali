.class public final Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/regexp/internal/CharacterIterator;


# instance fields
.field private final len:I

.field private final off:I

.field private final src:[C


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->src:[C

    iput p2, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->off:I

    iput p3, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->len:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->src:[C

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->off:I

    add-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method public isEnd(I)Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->len:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 5
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->len:I

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->len:I

    if-gt p2, v0, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->src:[C

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->off:I

    add-int/2addr p0, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p0, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; endIndex="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; sequence size="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/regexp/internal/CharacterArrayCharacterIterator;->len:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
