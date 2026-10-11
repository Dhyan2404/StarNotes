.class Lcom/tencent/cos/xml/transfer/UploadService$1;
.super Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/UploadService;->getHttpMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/UploadService;

.field final synthetic val$requestName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/UploadService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$1;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService$1;->val$requestName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->onDataReady()V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$1;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$000(Lcom/tencent/cos/xml/transfer/UploadService;)Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/UploadService$1;->val$requestName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/tencent/cos/xml/transfer/UploadService$OnGetHttpTaskMetrics;->onGetHttpMetrics(Ljava/lang/String;Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    return-void
.end method
