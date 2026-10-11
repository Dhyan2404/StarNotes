.class Lcom/tencent/cos/xml/transfer/UploadService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/UploadService;->abortMultiUpload(Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/UploadService;

.field final synthetic val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/UploadService;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/UploadService;->access$1100(Lcom/tencent/cos/xml/transfer/UploadService;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$1200(Lcom/tencent/cos/xml/transfer/UploadService;)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    iget-object p1, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p1}, Lcom/tencent/cos/xml/transfer/UploadService;->access$1100(Lcom/tencent/cos/xml/transfer/UploadService;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/UploadService$5;->this$0:Lcom/tencent/cos/xml/transfer/UploadService;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/UploadService;->access$1200(Lcom/tencent/cos/xml/transfer/UploadService;)V

    return-void
.end method
