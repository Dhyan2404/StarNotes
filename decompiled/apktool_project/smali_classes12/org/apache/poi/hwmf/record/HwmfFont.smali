.class public Lorg/apache/poi/hwmf/record/HwmfFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;,
        Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;,
        Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;
    }
.end annotation


# instance fields
.field protected charSet:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field protected final clipPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;

.field protected escapement:I

.field protected facename:Ljava/lang/String;

.field protected family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field protected height:D

.field protected italic:Z

.field protected orientation:I

.field protected outPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

.field protected pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

.field protected pitchAndFamily:I

.field protected quality:Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

.field protected strikeOut:Z

.field protected underline:Z

.field protected weight:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->clipPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;

    return-void
.end method


# virtual methods
.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->charSet:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object p0
.end method

.method public getClipPrecision()Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->clipPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;

    return-object p0
.end method

.method public getEscapement()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->escapement:I

    return p0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->pitchAndFamily:I

    and-int/lit8 p0, p0, 0xf

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object p0

    return-object p0
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

    new-instance v1, Lcom/sunia/HTREnginev2/k4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/t4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/u4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "escapment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/v4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "weight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/w4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "italic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/x4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "underline"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/l4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "strikeOut"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/m4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "charset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/n4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "outPrecision"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/o4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "clipPrecision"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/p4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "quality"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/q4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "pitch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/r4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string v2, "family"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/s4i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s4i;-><init>(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    const-string p0, "typeface"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->height:D

    return-wide v0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->orientation:I

    return p0
.end method

.method public getOutPrecision()Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->outPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    return-object p0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->pitchAndFamily:I

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object p0

    return-object p0
.end method

.method public getPitchAndFamily()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->pitchAndFamily:I

    return p0
.end method

.method public getQuality()Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->quality:Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

    return-object p0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->facename:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->weight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->width:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    int-to-double p2, p2

    iput-wide p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->height:D

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->width:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->escapement:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->orientation:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->weight:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->italic:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result p2

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->underline:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    iput-boolean p3, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->strikeOut:Z

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->charSet:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->outPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    iget-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->clipPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfClipPrecision;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->quality:Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->pitchAndFamily:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->charSet:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    :goto_3
    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/poi/hwmf/record/HwmfFont;->readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;ILjava/nio/charset/Charset;)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->facename:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x12

    return p1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Font facename can\'t be determined."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initDefaults()V
    .locals 2

    const-wide/high16 v0, -0x3fd8000000000000L    # -12.0

    iput-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->height:D

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->width:I

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->escapement:I

    const/16 v1, 0x190

    iput v1, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->weight:I

    iput-boolean v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->italic:Z

    iput-boolean v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->underline:Z

    iput-boolean v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->strikeOut:Z

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->charSet:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;->OUT_DEFAULT_PRECIS:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->outPrecision:Lorg/apache/poi/hwmf/record/HwmfFont$WmfOutPrecision;

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;->ANTIALIASED_QUALITY:Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->quality:Lorg/apache/poi/hwmf/record/HwmfFont$WmfFontQuality;

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_DONTCARE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    invoke-virtual {v0}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->getFlag()I

    move-result v0

    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    invoke-virtual {v1}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId()I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->pitchAndFamily:I

    const-string v0, "SansSerif"

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->facename:Ljava/lang/String;

    return-void
.end method

.method public isItalic()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->italic:Z

    return p0
.end method

.method public isStrikeOut()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->strikeOut:Z

    return p0
.end method

.method public isUnderline()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hwmf/record/HwmfFont;->underline:Z

    return p0
.end method

.method public readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;I)I
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/hwmf/record/HwmfFont;->readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;ILjava/nio/charset/Charset;)I

    move-result p0

    return p0
.end method

.method public readString(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/lang/StringBuilder;ILjava/nio/charset/Charset;)I
    .locals 5

    .line 2
    new-array p0, p3, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    if-ne v1, p3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-byte v3, v3

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v4

    aput-byte v4, p0, v1

    if-eqz v4, :cond_2

    if-eq v4, v2, :cond_2

    if-le v3, p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/String;

    add-int/lit8 p3, v3, -0x1

    if-nez p4, :cond_3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :cond_3
    invoke-direct {p1, p0, v0, p3, p4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
