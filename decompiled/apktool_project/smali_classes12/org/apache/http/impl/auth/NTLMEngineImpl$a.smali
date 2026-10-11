.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>([B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->M()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    const/16 v1, 0x40

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->a:[B

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b:[B

    array-length v2, p1

    if-le v2, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v2, p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x5c

    const/16 v4, 0x36

    if-ge v0, v2, :cond_1

    iget-object v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->a:[B

    aget-byte v6, p1, v0

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b:[B

    aget-byte v5, p1, v0

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_2

    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->a:[B

    aput-byte v4, p1, v0

    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b:[B

    aput-byte v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->a:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->b:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public b([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public c([BII)V
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$a;->c:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
