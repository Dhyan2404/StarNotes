.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriteParam;
.super Ljavax/imageio/ImageWriteParam;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 10

    .line 2
    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    const-string v0, "None"

    const-string v1, "CCITT RLE"

    const-string v2, "CCITT T.4"

    const-string v3, "CCITT T.6"

    const-string v4, "LZW"

    const-string v5, "JPEG"

    const-string v6, "ZLib"

    const-string v7, "PackBits"

    const-string v8, "Deflate"

    const/4 v9, 0x0

    .line 3
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    return-void
.end method

.method public static b(Ljavax/imageio/ImageWriteParam;)I
    .locals 3

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "None"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackBits"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x8005

    return p0

    :cond_1
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZLib"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Deflate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x80b2

    return p0

    :cond_3
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JPEG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x7

    return p0

    :cond_5
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CCITT RLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCITT T.4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x3

    return p0

    :cond_7
    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCITT T.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x4

    return p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Unsupported compression type: %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCompressionQualityDescriptions()[Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionQualityDescriptions()[Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCompressionQualityValues()[F
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionQualityValues()[F

    const/4 p0, 0x0

    return-object p0
.end method
