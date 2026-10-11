.class public Lsun/awt/AWTCharset;
.super Ljava/nio/charset/Charset;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/AWTCharset$Decoder;,
        Lsun/awt/AWTCharset$Encoder;
    }
.end annotation


# instance fields
.field protected awtCs:Ljava/nio/charset/Charset;

.field protected javaCs:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    iput-object p0, p0, Lsun/awt/AWTCharset;->awtCs:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->contains(Ljava/nio/charset/Charset;)Z

    move-result p0

    return p0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    iget-object v0, p0, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    new-instance v0, Lsun/awt/AWTCharset$Decoder;

    iget-object v1, p0, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsun/awt/AWTCharset$Decoder;-><init>(Lsun/awt/AWTCharset;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Decoder is not supported by this Charset"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    iget-object v0, p0, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    new-instance v0, Lsun/awt/AWTCharset$Encoder;

    iget-object v1, p0, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsun/awt/AWTCharset$Encoder;-><init>(Lsun/awt/AWTCharset;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Encoder is not supported by this Charset"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
