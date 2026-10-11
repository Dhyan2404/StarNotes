.class public final Lorg/apache/poi/hslf/record/ColorSchemeAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final _type:J = 0x7f0L


# instance fields
.field private final _header:[B

.field private accentAndFollowingHyperlinkColourRGB:I

.field private accentAndHyperlinkColourRGB:I

.field private accentColourRGB:I

.field private backgroundColourRGB:I

.field private fillsColourRGB:I

.field private shadowsColourRGB:I

.field private textAndLinesColourRGB:I

.field private titleTextColourRGB:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->_header:[B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v1, 0x2

    const/16 v3, 0x7f0

    .line 16
    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v1, 0x4

    const/16 v3, 0x20

    .line 17
    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const v0, 0xffffff

    .line 18
    iput v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->backgroundColourRGB:I

    .line 19
    iput v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->textAndLinesColourRGB:I

    const v0, 0x808080

    .line 20
    iput v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->shadowsColourRGB:I

    .line 21
    iput v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->titleTextColourRGB:I

    const v0, 0x99cc00

    .line 22
    iput v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->fillsColourRGB:I

    const v0, 0xcc3333

    .line 23
    iput v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentColourRGB:I

    const v0, 0xffcccc

    .line 24
    iput v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndHyperlinkColourRGB:I

    const v0, 0xb2b2b2

    .line 25
    iput v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndFollowingHyperlinkColourRGB:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x28

    if-ge p3, v0, :cond_1

    .line 2
    array-length p3, p1

    sub-int/2addr p3, p2

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough data to form a ColorSchemeAtom (always 40 bytes long) - found "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 p3, p2, 0x8

    .line 4
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->_header:[B

    .line 5
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->backgroundColourRGB:I

    add-int/lit8 p2, p3, 0x4

    .line 6
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->textAndLinesColourRGB:I

    add-int/lit8 p2, p3, 0x8

    .line 7
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->shadowsColourRGB:I

    add-int/lit8 p2, p3, 0xc

    .line 8
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->titleTextColourRGB:I

    add-int/lit8 p2, p3, 0x10

    .line 9
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->fillsColourRGB:I

    add-int/lit8 p2, p3, 0x14

    .line 10
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentColourRGB:I

    add-int/lit8 p2, p3, 0x18

    .line 11
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndHyperlinkColourRGB:I

    add-int/lit8 p3, p3, 0x1c

    .line 12
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndFollowingHyperlinkColourRGB:I

    return-void
.end method

.method public static joinRGB(BBB)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    aput-byte p1, v0, p0

    const/4 p0, 0x2

    aput-byte p2, v0, p0

    .line 1
    invoke-static {v0}, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->joinRGB([B)I

    move-result p0

    return p0
.end method

.method public static joinRGB([B)I
    .locals 3

    .line 2
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v0, v1

    .line 4
    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinRGB accepts a byte array of 3 values, but got one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " values!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static splitRGB(I)[B
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [B

    new-instance v2, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {p0, v2}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAccentAndFollowingHyperlinkColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndFollowingHyperlinkColourRGB:I

    return p0
.end method

.method public getAccentAndHyperlinkColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndHyperlinkColourRGB:I

    return p0
.end method

.method public getAccentColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentColourRGB:I

    return p0
.end method

.method public getBackgroundColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->backgroundColourRGB:I

    return p0
.end method

.method public getColor(I)I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->backgroundColourRGB:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->textAndLinesColourRGB:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->shadowsColourRGB:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->titleTextColourRGB:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->fillsColourRGB:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentColourRGB:I

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndHyperlinkColourRGB:I

    aput v2, v0, v1

    const/4 v1, 0x7

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndFollowingHyperlinkColourRGB:I

    aput p0, v0, v1

    aget p0, v0, p1

    return p0
.end method

.method public getFillsColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->fillsColourRGB:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/l2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string v2, "backgroundColourRGB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/m2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string v2, "textAndLinesColourRGB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/n2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string v2, "shadowsColourRGB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/o2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string v2, "titleTextColourRGB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/p2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string v2, "fillsColourRGB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/q2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string v2, "accentColourRGB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/r2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string v2, "accentAndHyperlinkColourRGB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/s2e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s2e;-><init>(Lorg/apache/poi/hslf/record/ColorSchemeAtom;)V

    const-string p0, "accentAndFollowingHyperlinkColourRGB"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    const-wide/16 v0, 0x7f0

    return-wide v0
.end method

.method public getShadowsColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->shadowsColourRGB:I

    return p0
.end method

.method public getTextAndLinesColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->textAndLinesColourRGB:I

    return p0
.end method

.method public getTitleTextColourRGB()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->titleTextColourRGB:I

    return p0
.end method

.method public setAccentAndFollowingHyperlinkColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndFollowingHyperlinkColourRGB:I

    return-void
.end method

.method public setAccentAndHyperlinkColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndHyperlinkColourRGB:I

    return-void
.end method

.method public setAccentColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentColourRGB:I

    return-void
.end method

.method public setBackgroundColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->backgroundColourRGB:I

    return-void
.end method

.method public setFillsColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->fillsColourRGB:I

    return-void
.end method

.method public setShadowsColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->shadowsColourRGB:I

    return-void
.end method

.method public setTextAndLinesColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->textAndLinesColourRGB:I

    return-void
.end method

.method public setTitleTextColourRGB(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->titleTextColourRGB:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->backgroundColourRGB:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->textAndLinesColourRGB:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->shadowsColourRGB:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->titleTextColourRGB:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->fillsColourRGB:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentColourRGB:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndHyperlinkColourRGB:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget p0, p0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->accentAndFollowingHyperlinkColourRGB:I

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    return-void
.end method
