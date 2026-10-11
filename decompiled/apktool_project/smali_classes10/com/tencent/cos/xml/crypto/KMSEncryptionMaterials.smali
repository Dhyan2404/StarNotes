.class public Lcom/tencent/cos/xml/crypto/KMSEncryptionMaterials;
.super Lcom/tencent/cos/xml/crypto/EncryptionMaterials;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CUSTOMER_MASTER_KEY_ID:Ljava/lang/String; = "kms_cmk_id"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;-><init>(Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kms_cmk_id"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->addDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/cos/xml/crypto/EncryptionMaterials;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The default customer master key id must be specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCustomerMasterKeyId()Ljava/lang/String;
    .locals 1

    const-string v0, "kms_cmk_id"

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyPair()Ljava/security/KeyPair;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final isKMSEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
