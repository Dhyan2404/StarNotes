.class public Lcom/tencent/cos/xml/crypto/EncryptionMaterials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final desc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPair:Ljava/security/KeyPair;

.field private final symmetricKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->desc:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    .line 6
    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public addDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addDescriptions(Ljava/util/Map;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/cos/xml/crypto/EncryptionMaterials;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public getAccessor()Lcom/tencent/cos/xml/crypto/EncryptionMaterialsAccessor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomerMasterKeyId()Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getKeyPair()Ljava/security/KeyPair;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->keyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method public getMaterialsDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->desc:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->symmetricKey:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method public isKMSEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
