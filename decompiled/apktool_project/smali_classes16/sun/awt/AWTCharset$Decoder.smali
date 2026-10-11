.class public Lsun/awt/AWTCharset$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/AWTCharset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Decoder"
.end annotation


# instance fields
.field protected dec:Ljava/nio/charset/CharsetDecoder;

.field fbb:Ljava/nio/ByteBuffer;

.field private nr:Ljava/lang/String;

.field final synthetic this$0:Lsun/awt/AWTCharset;


# direct methods
.method public constructor <init>(Lsun/awt/AWTCharset;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/awt/AWTCharset$Decoder;-><init>(Lsun/awt/AWTCharset;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(Lsun/awt/AWTCharset;Ljava/nio/charset/CharsetDecoder;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lsun/awt/AWTCharset$Decoder;->this$0:Lsun/awt/AWTCharset;

    .line 3
    iget-object p1, p1, Lsun/awt/AWTCharset;->awtCs:Ljava/nio/charset/Charset;

    .line 4
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v1

    .line 6
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lsun/awt/AWTCharset$Decoder;->fbb:Ljava/nio/ByteBuffer;

    .line 8
    iput-object p2, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method


# virtual methods
.method public decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    iget-object p0, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method public implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3

    iget-object v0, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lsun/awt/AWTCharset$Decoder;->fbb:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    iget-object p0, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method public implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public implReplaceWith(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    :cond_0
    return-void
.end method

.method public implReset()V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Decoder;->dec:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    return-void
.end method
