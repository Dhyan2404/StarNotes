.class public Lcom/sunia/HTREnginev2/w1$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/w1;->b(Ljava/lang/String;Ljava/io/InputStream;JLcom/sunia/HTREnginev2/rwd;[BI)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public e:Z

.field public f:Ljavax/crypto/CipherInputStream;

.field public final synthetic g:Lcom/sunia/HTREnginev2/rwd;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:[B

.field public final synthetic j:Ljava/io/InputStream;

.field public final synthetic k:Lcom/sunia/HTREnginev2/w1;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/w1;Lcom/sunia/HTREnginev2/rwd;Ljava/lang/String;[BLjava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w1$a;->k:Lcom/sunia/HTREnginev2/w1;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w1$a;->g:Lcom/sunia/HTREnginev2/rwd;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/w1$a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/w1$a;->i:[B

    iput-object p5, p0, Lcom/sunia/HTREnginev2/w1$a;->j:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w1$a;->f:Ljavax/crypto/CipherInputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->close()V

    :cond_0
    return-void
.end method

.method public final f()Ljavax/crypto/CipherInputStream;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/w1$a;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w1$a;->f:Ljavax/crypto/CipherInputStream;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/w1$a;->g:Lcom/sunia/HTREnginev2/rwd;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/rwd;->d:[B

    if-eqz v0, :cond_8

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v3, 0x3f

    const/4 v5, 0x1

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v3, 0x6

    and-int/2addr v7, v5

    and-int/lit8 v8, v6, 0xf

    add-int/2addr v7, v8

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v5

    shr-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x2

    add-int v8, v6, v7

    array-length v9, v0

    if-gt v8, v9, :cond_6

    new-array v8, v3, [B

    invoke-static {v0, v2, v8, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v9, p0, Lcom/sunia/HTREnginev2/w1$a;->g:Lcom/sunia/HTREnginev2/rwd;

    iget-object v9, v9, Lcom/sunia/HTREnginev2/rwd;->d:[B

    invoke-static {v9, v6, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/sunia/HTREnginev2/w1$a;->i:[B

    if-eqz v6, :cond_5

    const/16 v6, 0x3f

    if-ne v4, v6, :cond_1

    const/16 v4, 0x20

    new-array v4, v4, [B

    invoke-static {v8, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/sunia/HTREnginev2/w1$a;->i:[B

    array-length v7, v6

    rsub-int/lit8 v8, v3, 0x20

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v1, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_1
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0x8

    new-array v7, v6, [B

    const-wide/16 v9, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    shl-long v13, v11, v4

    cmp-long v13, v9, v13

    if-gez v13, :cond_4

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    iget-object v13, p0, Lcom/sunia/HTREnginev2/w1$a;->i:[B

    invoke-virtual {v3, v13}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->update([B)V

    move v13, v1

    :goto_1
    if-ge v13, v6, :cond_3

    aget-byte v14, v7, v13

    add-int/2addr v14, v5

    int-to-byte v14, v14

    aput-byte v14, v7, v13

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-long/2addr v9, v11

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    :goto_3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v4, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_1
    const-string v3, "AES/CBC/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v2, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/w1$a;->j:Ljava/io/InputStream;

    invoke-direct {v0, v1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/w1$a;->f:Ljavax/crypto/CipherInputStream;

    iput-boolean v5, p0, Lcom/sunia/HTREnginev2/w1$a;->e:Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SHA-256 is unsupported by your Java implementation"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/apache/commons/compress/PasswordRequiredException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w1$a;->h:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/PasswordRequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Salt size + IV size too long in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w1$a;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AES256 properties too short in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w1$a;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing AES256 properties in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w1$a;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/w1$a;->f()Ljavax/crypto/CipherInputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/w1$a;->f()Ljavax/crypto/CipherInputStream;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p0

    return p0
.end method
