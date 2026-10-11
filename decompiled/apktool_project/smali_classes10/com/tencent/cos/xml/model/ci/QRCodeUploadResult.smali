.class public Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult;
.super Lcom/tencent/cos/xml/model/ci/ImageUploadResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$QrPicObject;,
        Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$PicUploadResult;
    }
.end annotation


# instance fields
.field public picUploadResult:Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$PicUploadResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/ci/ImageUploadResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicUploadResult()Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$PicUploadResult;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult;->picUploadResult:Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$PicUploadResult;

    return-object p0
.end method

.method public parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/model/ci/ImageUploadResult;->parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const-class v0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$PicUploadResult;

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/utils/QCloudXmlUtils;->fromXml(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$PicUploadResult;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult;->picUploadResult:Lcom/tencent/cos/xml/model/ci/QRCodeUploadResult$PicUploadResult;

    return-void
.end method
