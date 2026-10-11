.class Lcom/tencent/cos/xml/transfer/COSDownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSDownloadTask;->simpleDownload()Lcom/tencent/cos/xml/model/object/GetObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$1;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$1;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSDownloadTask;->access$400(Lcom/tencent/cos/xml/transfer/COSDownloadTask;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getFileOffset()J

    move-result-wide v0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSDownloadTask$1;->this$0:Lcom/tencent/cos/xml/transfer/COSDownloadTask;

    add-long/2addr p1, v0

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/cos/xml/transfer/COSTransferTask;->onTransferProgressChange(JJ)V

    return-void
.end method
