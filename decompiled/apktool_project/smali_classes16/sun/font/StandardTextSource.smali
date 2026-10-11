.class final Lsun/font/StandardTextSource;
.super Lsun/font/TextSource;
.source "SourceFile"


# instance fields
.field private final chars:[C

.field private final clen:I

.field private final cm:Lsun/font/CoreMetrics;

.field private final cstart:I

.field private final flags:I

.field private final font:Ljava/awt/Font;

.field private final frc:Ljava/awt/font/FontRenderContext;

.field private final len:I

.field private final level:I

.field private final start:I


# direct methods
.method public constructor <init>([CIIIIIILjava/awt/Font;Ljava/awt/font/FontRenderContext;Lsun/font/CoreMetrics;)V
    .locals 4

    invoke-direct {p0}, Lsun/font/TextSource;-><init>()V

    if-eqz p1, :cond_9

    if-ltz p4, :cond_8

    const-string v0, " for cstart: "

    if-lt p2, p4, :cond_7

    const-string v1, "bad clen: "

    if-ltz p5, :cond_6

    add-int v2, p4, p5

    array-length v3, p1

    if-gt v2, v3, :cond_5

    const-string v1, "bad len: "

    if-ltz p3, :cond_4

    add-int v3, p2, p3

    if-gt v3, v2, :cond_3

    if-eqz p8, :cond_2

    if-eqz p9, :cond_1

    iput-object p1, p0, Lsun/font/StandardTextSource;->chars:[C

    iput p2, p0, Lsun/font/StandardTextSource;->start:I

    iput p3, p0, Lsun/font/StandardTextSource;->len:I

    iput p4, p0, Lsun/font/StandardTextSource;->cstart:I

    iput p5, p0, Lsun/font/StandardTextSource;->clen:I

    iput p6, p0, Lsun/font/StandardTextSource;->level:I

    iput p7, p0, Lsun/font/StandardTextSource;->flags:I

    iput-object p8, p0, Lsun/font/StandardTextSource;->font:Ljava/awt/Font;

    iput-object p9, p0, Lsun/font/StandardTextSource;->frc:Ljava/awt/font/FontRenderContext;

    if-eqz p10, :cond_0

    iput-object p10, p0, Lsun/font/StandardTextSource;->cm:Lsun/font/CoreMetrics;

    goto :goto_0

    :cond_0
    invoke-virtual {p8, p1, p4, p5, p9}, Ljava/awt/Font;->getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;

    move-result-object p1

    check-cast p1, Lsun/font/FontLineMetrics;

    iget-object p1, p1, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iput-object p1, p0, Lsun/font/StandardTextSource;->cm:Lsun/font/CoreMetrics;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad frc: null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad font: null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " start: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " clen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cstart: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for array len: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad start: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad cstart: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad chars: null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBidiLevel()I
    .locals 0

    iget p0, p0, Lsun/font/StandardTextSource;->level:I

    return p0
.end method

.method public getChars()[C
    .locals 0

    iget-object p0, p0, Lsun/font/StandardTextSource;->chars:[C

    return-object p0
.end method

.method public getContextLength()I
    .locals 0

    iget p0, p0, Lsun/font/StandardTextSource;->clen:I

    return p0
.end method

.method public getContextStart()I
    .locals 0

    iget p0, p0, Lsun/font/StandardTextSource;->cstart:I

    return p0
.end method

.method public getCoreMetrics()Lsun/font/CoreMetrics;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardTextSource;->cm:Lsun/font/CoreMetrics;

    return-object p0
.end method

.method public getFRC()Ljava/awt/font/FontRenderContext;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardTextSource;->frc:Ljava/awt/font/FontRenderContext;

    return-object p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 0

    iget-object p0, p0, Lsun/font/StandardTextSource;->font:Ljava/awt/Font;

    return-object p0
.end method

.method public getLayoutFlags()I
    .locals 0

    iget p0, p0, Lsun/font/StandardTextSource;->flags:I

    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lsun/font/StandardTextSource;->len:I

    return p0
.end method

.method public getStart()I
    .locals 0

    iget p0, p0, Lsun/font/StandardTextSource;->start:I

    return p0
.end method

.method public getSubSource(III)Lsun/font/TextSource;
    .locals 11

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    add-int v0, p1, p2

    iget v1, p0, Lsun/font/StandardTextSource;->len:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lsun/font/StandardTextSource;->level:I

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    iget v0, p0, Lsun/font/StandardTextSource;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-ne p3, v1, :cond_3

    if-nez v0, :cond_3

    :cond_2
    xor-int/2addr v0, v1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction flag is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    move v6, v0

    new-instance p3, Lsun/font/StandardTextSource;

    iget-object v1, p0, Lsun/font/StandardTextSource;->chars:[C

    iget v0, p0, Lsun/font/StandardTextSource;->start:I

    add-int v2, v0, p1

    iget v4, p0, Lsun/font/StandardTextSource;->cstart:I

    iget v5, p0, Lsun/font/StandardTextSource;->clen:I

    iget v7, p0, Lsun/font/StandardTextSource;->flags:I

    iget-object v8, p0, Lsun/font/StandardTextSource;->font:Ljava/awt/Font;

    iget-object v9, p0, Lsun/font/StandardTextSource;->frc:Ljava/awt/font/FontRenderContext;

    iget-object v10, p0, Lsun/font/StandardTextSource;->cm:Lsun/font/CoreMetrics;

    move-object v0, p3

    move v3, p2

    invoke-direct/range {v0 .. v10}, Lsun/font/StandardTextSource;-><init>([CIIIIIILjava/awt/Font;Ljava/awt/font/FontRenderContext;Lsun/font/CoreMetrics;)V

    return-object p3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad start ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") or length ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lsun/font/StandardTextSource;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "[start:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget v1, p0, Lsun/font/StandardTextSource;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", len:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget v1, p0, Lsun/font/StandardTextSource;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", cstart:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    iget v1, p0, Lsun/font/StandardTextSource;->cstart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", clen:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    iget v1, p0, Lsun/font/StandardTextSource;->clen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", chars:\""

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 12
    iget p1, p0, Lsun/font/StandardTextSource;->cstart:I

    .line 13
    iget v1, p0, Lsun/font/StandardTextSource;->clen:I

    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lsun/font/StandardTextSource;->start:I

    .line 15
    iget v1, p0, Lsun/font/StandardTextSource;->len:I

    :goto_0
    add-int/2addr v1, p1

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_2

    if-le v2, p1, :cond_1

    const-string v3, " "

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_1
    iget-object v3, p0, Lsun/font/StandardTextSource;->chars:[C

    aget-char v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "\""

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", level:"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    iget p1, p0, Lsun/font/StandardTextSource;->level:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ", flags:"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    iget p1, p0, Lsun/font/StandardTextSource;->flags:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ", font:"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    iget-object p1, p0, Lsun/font/StandardTextSource;->font:Ljava/awt/Font;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ", frc:"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    iget-object p1, p0, Lsun/font/StandardTextSource;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ", cm:"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    iget-object p0, p0, Lsun/font/StandardTextSource;->cm:Lsun/font/CoreMetrics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
