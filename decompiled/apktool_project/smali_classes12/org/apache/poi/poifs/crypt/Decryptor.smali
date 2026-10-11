.class public abstract Lorg/apache/poi/poifs/crypt/Decryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final DEFAULT_PASSWORD:Ljava/lang/String; = "VelvetSweatshop"

.field public static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field protected encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private integrityHmacKey:[B

.field private integrityHmacValue:[B

.field private secretKey:Ljavax/crypto/SecretKey;

.field private verifier:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/Decryptor;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 4
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 5
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    .line 6
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    .line 7
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/poifs/crypt/Decryptor;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Unsupported version"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract copy()Lorg/apache/poi/poifs/crypt/Decryptor;
.end method

.method public getBlockSizeInBytes()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "this decryptor doesn\'t support reading from a stream"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "secretKey"

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/wve;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wve;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/xve;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/xve;-><init>(Ljavax/crypto/SecretKey;)V

    move-object v1, v2

    :goto_0
    const-string v2, "verifier"

    new-instance v3, Lcom/sunia/HTREnginev2/yve;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/yve;-><init>(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    const-string v4, "integrityHmacKey"

    new-instance v5, Lcom/sunia/HTREnginev2/zve;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/zve;-><init>(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    const-string v6, "integrityHmacValue"

    new-instance v7, Lcom/sunia/HTREnginev2/awe;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/awe;-><init>(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIntegrityHmacKey()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    return-object p0
.end method

.method public getIntegrityHmacValue()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    return-object p0
.end method

.method public getKeySizeInBytes()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public abstract getLength()J
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method public getVerifier()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    return-object p0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "this decryptor doesn\'t support initCipherForBlock"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setChunkSize(I)V
    .locals 0

    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "this decryptor doesn\'t support changing the chunk size"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public setIntegrityHmacKey([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    return-void
.end method

.method public setIntegrityHmacValue([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    return-void
.end method

.method public setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public setVerifier([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    return-void
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
