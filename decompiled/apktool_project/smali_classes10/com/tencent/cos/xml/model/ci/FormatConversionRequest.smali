.class public Lcom/tencent/cos/xml/model/ci/FormatConversionRequest;
.super Lcom/tencent/cos/xml/model/object/ObjectRequest;
.source "SourceFile"


# instance fields
.field public fileId:Ljava/lang/String;

.field private final format:Ljava/lang/String;

.field public saveBucket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/cos/xml/model/ci/FormatConversionRequest;->format:Ljava/lang/String;

    const-string p1, "image_process"

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setQueryEncodedString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->checkParameters()V

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/ci/FormatConversionRequest;->getPicOperations()Lcom/tencent/cos/xml/model/tag/pic/PicOperations;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Pic-Operations"

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/pic/PicOperations;->toJsonStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "POST"

    return-object p0
.end method

.method public getPicOperations()Lcom/tencent/cos/xml/model/tag/pic/PicOperations;
    .locals 3

    new-instance v0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageView2/format/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/ci/FormatConversionRequest;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/FormatConversionRequest;->saveBucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->setBucket(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/FormatConversionRequest;->fileId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->setFileId(Ljava/lang/String;)V

    new-instance p0, Lcom/tencent/cos/xml/model/tag/pic/PicOperations;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/cos/xml/model/tag/pic/PicOperations;-><init>(ZLjava/util/List;)V

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    const-string p0, "text/plain"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method

.method public headersHasUnsafeNonAscii()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
