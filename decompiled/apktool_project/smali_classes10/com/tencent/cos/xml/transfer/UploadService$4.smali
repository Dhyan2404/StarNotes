.class Lcom/tencent/cos/xml/transfer/UploadService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/UploadService;->uploadPart(IJJLcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/UploadService;

.field final synthetic val$uploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/UploadService;Lcom/tencent/cos/xml/model/object/UploadPartRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->val$uploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 4

    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p3}, Lcom/tencent/cos/xml/transfer/UploadService;->access$100(Lcom/tencent/cos/xml/transfer/UploadService;)[B

    move-result-object p3

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p4}, Lcom/tencent/cos/xml/transfer/UploadService;->access$700(Lcom/tencent/cos/xml/transfer/UploadService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$600(Lcom/tencent/cos/xml/transfer/UploadService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->val$uploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    iget-object p4, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p4}, Lcom/tencent/cos/xml/transfer/UploadService;->access$600(Lcom/tencent/cos/xml/transfer/UploadService;)Ljava/util/Map;

    move-result-object p4

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->val$uploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/UploadService;->access$800(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/UploadService;->access$800(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p2}, Lcom/tencent/cos/xml/transfer/UploadService;->access$900(Lcom/tencent/cos/xml/transfer/UploadService;)J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$4;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$500(Lcom/tencent/cos/xml/transfer/UploadService;)I

    move-result p0

    if-lez p0, :cond_0

    invoke-static {}, Lcom/tencent/cos/xml/transfer/UploadService;->access$1000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "upload file has been abort"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
