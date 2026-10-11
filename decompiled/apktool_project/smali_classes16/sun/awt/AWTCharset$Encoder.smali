.class public Lsun/awt/AWTCharset$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/AWTCharset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Encoder"
.end annotation


# instance fields
.field protected enc:Ljava/nio/charset/CharsetEncoder;

.field final synthetic this$0:Lsun/awt/AWTCharset;


# direct methods
.method public constructor <init>(Lsun/awt/AWTCharset;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lsun/awt/AWTCharset;->javaCs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/awt/AWTCharset$Encoder;-><init>(Lsun/awt/AWTCharset;Ljava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Lsun/awt/AWTCharset;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lsun/awt/AWTCharset$Encoder;->this$0:Lsun/awt/AWTCharset;

    .line 3
    iget-object p1, p1, Lsun/awt/AWTCharset;->awtCs:Ljava/nio/charset/Charset;

    .line 4
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    .line 6
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 7
    iput-object p2, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method public implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method public implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public implReplaceWith([B)V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    :cond_0
    return-void
.end method

.method public implReset()V
    .locals 0

    iget-object p0, p0, Lsun/awt/AWTCharset$Encoder;->enc:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public isLegalReplacement([B)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
