.class Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlProgressListener;
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenerHandler"
.end annotation


# instance fields
.field private cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

.field private cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/Downloader;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/Downloader;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {v1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$000(Lcom/tencent/cos/xml/transfer/Downloader;)J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/Downloader;->access$000(Lcom/tencent/cos/xml/transfer/Downloader;)J

    move-result-wide p0

    add-long/2addr p0, p3

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/Downloader;->access$200(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {v1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$100(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->clear(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    :cond_0
    return-void
.end method

.method public setCosXmlProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->cosXmlProgressListener:Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    return-void
.end method

.method public setCosXmlResultListener(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    return-void
.end method
