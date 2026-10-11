.class public abstract Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;
.implements Lorg/apache/poi/common/Duplicatable;


# instance fields
.field private chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private encryptedKey:[B

.field private encryptedVerifier:[B

.field private encryptedVerifierHash:[B

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private salt:[B

.field private spinCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    .line 4
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    .line 5
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_2
    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    .line 6
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    :goto_3
    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    .line 7
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    .line 8
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 9
    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 10
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->copy()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.end method

.method public getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object p0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object p0
.end method

.method public getEncryptedKey()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    return-object p0
.end method

.method public getEncryptedVerifier()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    return-object p0
.end method

.method public getEncryptedVerifierHash()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/hqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string v2, "salt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/iqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/iqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string v2, "encryptedVerifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string v2, "encryptedVerifierHash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/kqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string v2, "encryptedKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string v2, "spinCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/mqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string v2, "cipherAlgorithm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string v2, "chainingMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/oqf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/oqf;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    const-string p0, "hashAlgorithm"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    return-object p0
.end method

.method public getSpinCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    return p0
.end method

.method public setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method public setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void
.end method

.method public setEncryptedKey([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    return-void
.end method

.method public setEncryptedVerifier([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    return-void
.end method

.method public setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setSalt([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    return-void
.end method

.method public setSpinCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    return-void
.end method
