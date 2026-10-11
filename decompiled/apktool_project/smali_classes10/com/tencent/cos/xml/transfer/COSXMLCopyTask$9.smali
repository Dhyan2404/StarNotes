.class Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$400(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$400(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$500(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;->onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 4

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$400(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Lcom/tencent/cos/xml/model/CosXmlResult;->headers:Ljava/util/Map;

    const-string p2, "Content-Length"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1502(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;J)J

    :cond_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1500(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    iget-wide v2, p1, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->multiCopySizeDivision:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1602(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Z)Z

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1700(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1700(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1702(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Ljava/util/Map;)Ljava/util/Map;

    :goto_0
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1800(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1800(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1802(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Ljava/util/List;)Ljava/util/List;

    :goto_1
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1300(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1300(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1302(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_2
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$9;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->cosXmlService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-static {p0, p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$1900(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;Lcom/tencent/cos/xml/CosXmlSimpleService;)V

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;->access$2000(Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;)V

    :goto_3
    return-void
.end method
