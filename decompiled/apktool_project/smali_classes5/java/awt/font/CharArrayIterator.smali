.class Ljava/awt/font/CharArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private begin:I

.field private chars:[C

.field private pos:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/awt/font/CharArrayIterator;->reset([CI)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Ljava/awt/font/CharArrayIterator;->reset([CI)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/awt/font/CharArrayIterator;

    iget-object v1, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    iget v2, p0, Ljava/awt/font/CharArrayIterator;->begin:I

    invoke-direct {v0, v1, v2}, Ljava/awt/font/CharArrayIterator;-><init>([CI)V

    iget p0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    iput p0, v0, Ljava/awt/font/CharArrayIterator;->pos:I

    return-object v0
.end method

.method public current()C
    .locals 2

    iget v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char p0, p0, v0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public first()C
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    invoke-virtual {p0}, Ljava/awt/font/CharArrayIterator;->current()C

    move-result p0

    return p0
.end method

.method public getBeginIndex()I
    .locals 0

    iget p0, p0, Ljava/awt/font/CharArrayIterator;->begin:I

    return p0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Ljava/awt/font/CharArrayIterator;->begin:I

    iget-object p0, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/awt/font/CharArrayIterator;->begin:I

    iget p0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    add-int/2addr v0, p0

    return v0
.end method

.method public last()C
    .locals 2

    iget-object v0, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    :goto_0
    invoke-virtual {p0}, Ljava/awt/font/CharArrayIterator;->current()C

    move-result p0

    return p0
.end method

.method public next()C
    .locals 3

    iget v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    iget-object v1, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    aget-char p0, v1, v0

    return p0

    :cond_0
    array-length v0, v1

    iput v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    const p0, 0xffff

    return p0
.end method

.method public previous()C
    .locals 1

    iget v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    iget-object p0, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    aget-char p0, p0, v0

    return p0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    const p0, 0xffff

    return p0
.end method

.method public reset([C)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Ljava/awt/font/CharArrayIterator;->reset([CI)V

    return-void
.end method

.method public reset([CI)V
    .locals 0

    .line 2
    iput-object p1, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    .line 3
    iput p2, p0, Ljava/awt/font/CharArrayIterator;->begin:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    return-void
.end method

.method public setIndex(I)C
    .locals 1

    iget v0, p0, Ljava/awt/font/CharArrayIterator;->begin:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/awt/font/CharArrayIterator;->chars:[C

    array-length v0, v0

    if-gt p1, v0, :cond_0

    iput p1, p0, Ljava/awt/font/CharArrayIterator;->pos:I

    invoke-virtual {p0}, Ljava/awt/font/CharArrayIterator;->current()C

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
