.class Lcom/tencent/cos/xml/transfer/Downloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/Downloader;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/Downloader;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/Downloader;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$400(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/Downloader;->access$100(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 2

    check-cast p2, Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    iget-object p1, p2, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    const-string p2, "ETag"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$002(Lcom/tencent/cos/xml/transfer/Downloader;J)J

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p2}, Lcom/tencent/cos/xml/transfer/Downloader;->access$100(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/Downloader;->access$200(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p1, p2}, Lcom/tencent/cos/xml/transfer/Downloader;->access$300(Lcom/tencent/cos/xml/transfer/Downloader;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$002(Lcom/tencent/cos/xml/transfer/Downloader;J)J

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/Downloader;->access$200(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/utils/SharePreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/tencent/cos/xml/utils/SharePreferenceUtils;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$100(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p2}, Lcom/tencent/cos/xml/transfer/Downloader;->access$000(Lcom/tencent/cos/xml/transfer/Downloader;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setRange(J)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$100(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p2}, Lcom/tencent/cos/xml/transfer/Downloader;->access$400(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->setProgressListener(Lcom/tencent/cos/xml/listener/CosXmlProgressListener;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/Downloader;->access$500(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/CosXml;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p2}, Lcom/tencent/cos/xml/transfer/Downloader;->access$100(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    move-result-object p2

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/Downloader$1;->this$0:Lcom/tencent/cos/xml/transfer/Downloader;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/Downloader;->access$400(Lcom/tencent/cos/xml/transfer/Downloader;)Lcom/tencent/cos/xml/transfer/Downloader$ListenerHandler;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/tencent/cos/xml/BaseCosXml;->getObjectAsync(Lcom/tencent/cos/xml/model/object/GetObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method
