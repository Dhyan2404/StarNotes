.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$f;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final c:[B

.field public d:Ljava/lang/String;

.field public e:[B

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->n()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;-><init>([BI)V

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->c:[B

    const/16 v0, 0x18

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->l([BI)V

    const/16 p1, 0x14

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->n(I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->f:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->g()I

    move-result v2

    if-lt v2, p1, :cond_0

    const/16 p1, 0xc

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->m(I)[B

    move-result-object p1

    .line 9
    array-length v2, p1

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->w(I)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->d:Ljava/lang/String;

    .line 11
    :cond_0
    iput-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->e:[B

    .line 12
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->g()I

    move-result p1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 p1, 0x28

    .line 13
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$d;->m(I)[B

    move-result-object p1

    .line 14
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 15
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->e:[B

    :cond_1
    return-void
.end method


# virtual methods
.method public p()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->c:[B

    return-object p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->f:I

    return p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->d:Ljava/lang/String;

    return-object p0
.end method

.method public s()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$f;->e:[B

    return-object p0
.end method
