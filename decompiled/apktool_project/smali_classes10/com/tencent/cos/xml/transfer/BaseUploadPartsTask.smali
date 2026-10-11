.class abstract Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mCosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

.field protected mMaxPartSize:J

.field protected mOffset:J

.field protected mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

.field protected mSize:J

.field protected mStartNumber:I

.field protected mUploadId:Ljava/lang/String;

.field private progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field protected taskId:Ljava/lang/String;

.field protected uploadParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/crypto/COSDirect;Lcom/tencent/cos/xml/model/object/PutObjectRequest;JJILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->uploadParts:Ljava/util/Set;

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mMaxPartSize:J

    const-string v0, "QCloudUpload"

    iput-object v0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mCosDirect:Lcom/tencent/cos/xml/crypto/COSDirect;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    iput-wide p3, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    iput-wide p5, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mSize:J

    iput p7, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mStartNumber:I

    iput-object p8, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mUploadId:Ljava/lang/String;

    return-void
.end method

.method private getUploadPartHeaders(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/cos/xml/model/object/PutObjectRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x-cos-server-side-encryption"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "x-cos-traffic-limit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract cancel(Z)V
.end method

.method public getUploadRequest(IJJ)Lcom/tencent/cos/xml/model/object/UploadPartRequest;
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    iget-wide v3, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mSize:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getSrcPath()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getBucket()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->getCosPath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v11

    if-eqz v5, :cond_1

    new-instance v12, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iget-object v10, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mUploadId:Ljava/lang/String;

    move-object v1, v12

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    :goto_0
    move-object v2, v12

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    new-instance v12, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    iget-object v10, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mUploadId:Ljava/lang/String;

    move-object v1, v12

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    move-object v5, v6

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;JJLjava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v11}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mPutObjectRequest:Lcom/tencent/cos/xml/model/object/PutObjectRequest;

    invoke-direct {p0, v1}, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->getUploadPartHeaders(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRequestHeaders(Ljava/util/Map;)V

    add-long v3, p2, p4

    iget-wide v5, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mOffset:J

    iget-wide v0, v0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->mSize:J

    add-long/2addr v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->setLastPart(Z)V

    :cond_5
    return-object v2
.end method

.method public notifyProgressChange(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method

.method public setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->progressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/BaseUploadPartsTask;->taskId:Ljava/lang/String;

    return-void
.end method

.method public abstract upload()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/cos/xml/transfer/COSUploadTask$UploadPart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
