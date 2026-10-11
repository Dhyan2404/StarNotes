.class public Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;
.super Lcom/tencent/cos/xml/model/bucket/BucketRequest;
.source "SourceFile"


# instance fields
.field private async:Z

.field private bizType:Ljava/lang/String;

.field private callback:Ljava/lang/String;

.field private cosPath:Ljava/lang/String;

.field private dataid:Ljava/lang/String;

.field private detectUrl:Ljava/lang/String;

.field private interval:I

.field private largeImageDetect:Z

.field private maxFrames:I

.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->types:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->types:Ljava/util/Set;

    .line 5
    invoke-virtual {p0, p2}, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->setCosPath(Ljava/lang/String;)V

    return-void
.end method

.method private addCiParams()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->types:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->types:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v2, "ci-process"

    const-string v3, "sensitive-content-recognition"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->bizType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v2, "biz-type"

    iget-object v3, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->bizType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->detectUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v2, "detect-url"

    iget-object v3, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->detectUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->interval:I

    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v3, "interval"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->maxFrames:I

    if-lez v1, :cond_5

    iget-object v2, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v3, "max-frames"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->largeImageDetect:Z

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_6

    move-object v2, v3

    goto :goto_1

    :cond_6
    move-object v2, v4

    :goto_1
    const-string v5, "large-image-detect"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->async:Z

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v4

    :goto_2
    const-string v2, "async"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->callback:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v2, "callback"

    iget-object v3, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->callback:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->dataid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v2, "dataid"

    iget-object v3, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->dataid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "detect-type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addType(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->types:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/bucket/BucketRequest;->checkParameters()V

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->bucket:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->cosPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->detectUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_2
    invoke-direct {p0}, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->addCiParams()V

    return-void
.end method

.method public getCosPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->cosPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "GET"

    return-object p0
.end method

.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->bucket:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->cosPath:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p1, v0, p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getUrlPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAsync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->async:Z

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->callback:Ljava/lang/String;

    return-void
.end method

.method public setCosPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->cosPath:Ljava/lang/String;

    return-void
.end method

.method public setDataid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->dataid:Ljava/lang/String;

    return-void
.end method

.method public setDetectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->detectUrl:Ljava/lang/String;

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->interval:I

    return-void
.end method

.method public setLargeImageDetect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->largeImageDetect:Z

    return-void
.end method

.method public setMaxFrames(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/SensitiveContentRecognitionRequest;->maxFrames:I

    return-void
.end method
