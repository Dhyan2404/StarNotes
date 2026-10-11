.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->n()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    .line 7
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    .line 8
    array-length p1, p1

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->o()[B

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_3

    .line 9
    :goto_0
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->o()[B

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_1

    .line 10
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    aget-byte p1, p1, v0

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->o()[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string p1, "NTLM message expected - instead got unrecognized bytes"

    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->o()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->n(I)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 13
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    array-length p1, p1

    iput p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    return-void

    .line 14
    :cond_2
    new-instance p0, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTLM type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " message expected - instead got type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    new-instance p0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string p1, "NTLM message decoding error - packet too short"

    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    return-void
.end method

.method public b([B)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a(B)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a(B)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a(B)V

    return-void
.end method

.method public d(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a(B)V

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a(B)V

    return-void
.end method

.method public e()V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message builder not implemented for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()[B
    .locals 4

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->e()V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    array-length v1, v0

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    if-le v1, v2, :cond_1

    new-array v1, v2, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    :cond_1
    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    return p0
.end method

.method public h()I
    .locals 0

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->o()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->f()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p0

    sget-object v1, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public j(II)V
    .locals 0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b:I

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->o()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->b([B)V

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->c(I)V

    return-void
.end method

.method public k(I)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-lt v0, v1, :cond_0

    aget-byte p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string p1, "NTLM: Message too short"

    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v1, p2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string p1, "NTLM: Message too short"

    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->s([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public n(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->r([BI)I

    move-result p0

    return p0
.end method

.method public o(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->a:[B

    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->p([BI)I

    move-result p0

    return p0
.end method
