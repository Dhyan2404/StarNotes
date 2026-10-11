.class public Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;
.super Lcom/tencent/cos/xml/model/object/GetObjectResult;
.source "SourceFile"


# instance fields
.field private contentType:Ljava/lang/String;

.field private errNo:Ljava/lang/String;

.field private previewFilePath:Ljava/lang/String;

.field private sheetName:Ljava/lang/String;

.field private totalPage:I

.field private totalSheet:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/object/GetObjectResult;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->previewFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getErrNo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->errNo:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->previewFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->sheetName:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalPage()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->totalPage:I

    return p0
.end method

.method public getTotalSheet()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->totalSheet:I

    return p0
.end method

.method public parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/model/object/GetObjectResult;->parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    const-string v0, "X-Total-Page"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->totalPage:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->contentType:Ljava/lang/String;

    const-string v0, "X-ErrNo\t"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->errNo:Ljava/lang/String;

    const-string v0, "X-Total-Sheet"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->totalSheet:I
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const-string v0, "X-Sheet-Name"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;->sheetName:Ljava/lang/String;

    return-void
.end method
