.class public Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;
.super Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;
.source "SourceFile"


# instance fields
.field private cover:I

.field public fileId:Ljava/lang/String;

.field public saveBucket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->cover:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->cover:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->cover:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->cover:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->cover:I

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;->checkParameters()V

    return-void
.end method

.method public getPicOperations()Lcom/tencent/cos/xml/model/tag/pic/PicOperations;
    .locals 3

    new-instance v0, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QRcode/cover/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->cover:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->saveBucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->setBucket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/model/tag/pic/PicOperationRule;->setFileId(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/cos/xml/model/tag/pic/PicOperations;

    iget-boolean p0, p0, Lcom/tencent/cos/xml/model/ci/ImageUploadRequest;->isPicInfo:Z

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tencent/cos/xml/model/tag/pic/PicOperations;-><init>(ZLjava/util/List;)V

    return-object v1
.end method

.method public setCover(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/cos/xml/model/ci/QRCodeUploadRequest;->cover:I

    return-void
.end method
