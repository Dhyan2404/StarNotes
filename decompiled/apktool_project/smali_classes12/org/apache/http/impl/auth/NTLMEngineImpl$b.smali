.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[B

.field public b:[B

.field public c:[B

.field public final d:Ljavax/crypto/Cipher;

.field public final e:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

.field public final f:Z

.field public g:I


# direct methods
.method public constructor <init>([BLorg/apache/http/impl/auth/NTLMEngineImpl$Mode;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->g:I

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->a:[B

    iput-boolean p3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->f:Z

    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->e:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->M()Ljava/security/MessageDigest;

    move-result-object p3

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->M()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    sget-object p1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;->CLIENT:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    if-ne p2, p1, :cond_0

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->h()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->i()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->j()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->k()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    :goto_0
    invoke-virtual {p3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->b:[B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->c:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->h()Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->d:Ljavax/crypto/Cipher;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->M()Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->c:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->h0([BII)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->c:[B

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->h()Ljavax/crypto/Cipher;

    :cond_0
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->g:I

    return-void
.end method

.method public final b([B)[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    aput-byte v1, v0, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    new-instance v2, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;

    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->b:[B

    invoke-direct {v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;-><init>([B)V

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->g:I

    invoke-static {v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->l(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b([B)V

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b([B)V

    invoke-virtual {v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->a()[B

    move-result-object p1

    const/16 v2, 0x8

    new-array v3, v2, [B

    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->e([B)[B

    move-result-object p1

    const/4 v3, 0x4

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0xc

    iget p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->g:I

    invoke-static {v0, p1, p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->m([BII)V

    return-object v0
.end method

.method public final c([B)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->d:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p0

    return-object p0
.end method

.method public d([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v4, v3, [B

    invoke-static {p1, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->c([B)[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->j([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->a()V

    return-object p1

    :cond_0
    new-instance p0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string p1, "Wrong signature"

    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e([B)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->d:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p0

    return-object p0
.end method

.method public f()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->c:[B

    return-object p0
.end method

.method public g()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->b:[B

    return-object p0
.end method

.method public final h()Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    const-string v0, "RC4"

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->e:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    sget-object v3, Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;->CLIENT:Lorg/apache/http/impl/auth/NTLMEngineImpl$Mode;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->c:[B

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->c:[B

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public i([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->e([B)[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->b([B)[B

    move-result-object p1

    array-length v1, p1

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v2, v0

    invoke-static {v0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->a()V

    return-object v1
.end method

.method public final j([B[B)Z
    .locals 0

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$b;->b([B)[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method
