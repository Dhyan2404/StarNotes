.class public Lorg/apache/poi/util/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/awt/Color;
    .locals 1

    .line 1
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-static {p0, v0}, Lorg/apache/poi/util/ColorUtils;->decode(Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;
    .locals 3

    .line 2
    invoke-static {p0}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    .line 4
    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfOoxmlId(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    :goto_0
    return-object p1

    .line 6
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1

    :catch_1
    const/16 v1, 0x20

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public static decode([BLjava/awt/Color;)Ljava/awt/Color;
    .locals 3

    .line 11
    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/awt/Color;

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    invoke-direct {p1, v0, v1, p0}, Ljava/awt/Color;-><init>(III)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 9
    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method
