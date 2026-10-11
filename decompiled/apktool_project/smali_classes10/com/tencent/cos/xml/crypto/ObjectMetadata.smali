.class public Lcom/tencent/cos/xml/crypto/ObjectMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private httpExpiresDate:Ljava/util/Date;

.field private isDeleteMarker:Z

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingRestore:Ljava/lang/Boolean;

.field private restoreExpirationTime:Ljava/util/Date;

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 18
    iget-object v0, p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    .line 19
    iget-object v0, p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->expirationTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->expirationTime:Ljava/util/Date;

    .line 20
    iget-object v0, p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->expirationTimeRuleId:Ljava/lang/String;

    .line 21
    iget-object p1, p1, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "x-cos-meta-"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Lcom/tencent/cos/xml/crypto/ObjectMetadata;
    .locals 1

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    invoke-direct {v0, p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;-><init>(Lcom/tencent/cos/xml/crypto/ObjectMetadata;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->clone()Lcom/tencent/cos/xml/crypto/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Cache-Control"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Language"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-MD5"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCrc64Ecma()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-hash-crc64ecma"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "ETag"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->expirationTime:Ljava/util/Date;

    return-object p0
.end method

.method public getHttpExpiresDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    return-object p0
.end method

.method public getInstanceLength()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Range"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Last-Modified"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getOngoingRestore()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->ongoingRestore:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getRawMetadata()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRestoreExpirationTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->restoreExpirationTime:Ljava/util/Date;

    return-object p0
.end method

.method public getSSEAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSSECOSKmsKeyId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption-qcloud-kms-key-id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSSECustomerAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption-customer-algorithm"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSSECustomerKeyMd5()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption-customer-key-MD5"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-storage-class"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserMetaDataOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getUserMetadata()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-version-id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isDeleteMarker()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->isDeleteMarker:Z

    return p0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Cache-Control"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Language"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentLength(J)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-MD5"

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDeleteMarker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->isDeleteMarker:Z

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->expirationTime:Ljava/util/Date;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHttpExpiresDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->httpExpiresDate:Ljava/util/Date;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Last-Modified"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOngoingRestore(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->ongoingRestore:Ljava/lang/Boolean;

    return-void
.end method

.method public setRestoreExpirationTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->restoreExpirationTime:Ljava/util/Date;

    return-void
.end method

.method public setSSEAlgorithm(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption-customer-algorithm"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption-customer-key-MD5"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-security-token"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-cos-server-side-encryption"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-void
.end method
