.class public Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private bucketLoggingStatus:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;->bucketLoggingStatus:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "PUT"

    return-object p0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "logging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public isNeedMD5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setTargetBucket(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;->bucketLoggingStatus:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;

    iget-object v1, v0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;->loggingEnabled:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    invoke-direct {v1}, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;->loggingEnabled:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;->bucketLoggingStatus:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;->loggingEnabled:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;->targetBucket:Ljava/lang/String;

    return-void
.end method

.method public setTargetPrefix(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;->bucketLoggingStatus:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;

    iget-object v1, v0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;->loggingEnabled:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    invoke-direct {v1}, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;-><init>()V

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;->loggingEnabled:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;->bucketLoggingStatus:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;->loggingEnabled:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus$LoggingEnabled;->targetPrefix:Ljava/lang/String;

    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;->bucketLoggingStatus:Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/XmlBuilder;->buildBucketLogging(Lcom/tencent/cos/xml/model/tag/BucketLoggingStatus;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method
