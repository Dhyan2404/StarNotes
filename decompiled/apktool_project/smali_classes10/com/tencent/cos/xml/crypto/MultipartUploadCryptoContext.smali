.class public Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final cekMaterial:Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

.field private hasFinalPartBeenSeen:Z

.field private final key:Ljava/lang/String;

.field private materialsDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partNumber:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile partUploadInProgress:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->bucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->cekMaterial:Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    return-void
.end method


# virtual methods
.method public beginPartUpload(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    iget-boolean v1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->partUploadInProgress:Z

    if-nez v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->partUploadInProgress:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->partNumber:I

    sub-int v1, p1, v1

    if-gt v1, v0, :cond_0

    iput p1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->partNumber:I

    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->partUploadInProgress:Z

    monitor-exit p0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parts are required to be uploaded in series (partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->partNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextPartNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "Parts are required to be uploaded in series"

    invoke-static {p1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p0, "Parts are required to be uploaded in series"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "part number must be at least 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endPartUpload()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->partUploadInProgress:Z

    return-void
.end method

.method public final getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCipherLite()Lcom/tencent/cos/xml/crypto/CipherLite;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->cekMaterial:Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/tencent/cos/xml/crypto/CipherLite;

    move-result-object p0

    return-object p0
.end method

.method public getContentCryptoMaterial()Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->cekMaterial:Lcom/tencent/cos/xml/crypto/ContentCryptoMaterial;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaterialsDescription()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->materialsDescription:Ljava/util/Map;

    return-object p0
.end method

.method public final hasFinalPartBeenSeen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen:Z

    return p0
.end method

.method public final setHasFinalPartBeenSeen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen:Z

    return-void
.end method

.method public final setMaterialsDescription(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/MultipartUploadCryptoContext;->materialsDescription:Ljava/util/Map;

    return-void
.end method
