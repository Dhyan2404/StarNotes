.class Lcom/tencent/cos/xml/CosXmlBaseService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/common/QCloudResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/qcloud/core/common/QCloudResultListener<",
        "Lcom/tencent/qcloud/core/http/HttpResult<",
        "TT2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/CosXmlBaseService;

.field final synthetic val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

.field final synthetic val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

.field final synthetic val$internal:Z


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlBaseService;Lcom/tencent/cos/xml/model/CosXmlRequest;ZLcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->this$0:Lcom/tencent/cos/xml/CosXmlBaseService;

    iput-object p2, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iput-boolean p3, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$internal:Z

    iput-object p4, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/tencent/qcloud/core/common/QCloudClientException;Lcom/tencent/qcloud/core/common/QCloudServiceException;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->this$0:Lcom/tencent/cos/xml/CosXmlBaseService;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->access$000(Lcom/tencent/cos/xml/CosXmlBaseService;Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p2

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-boolean v2, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$internal:Z

    invoke-virtual {p2, v1, p1, v2}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-interface {p2, p0, p1, v0}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-boolean v2, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$internal:Z

    invoke-virtual {p1, v1, p2, v2}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-interface {p2, p0, v0, p1}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/qcloud/core/http/HttpResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResult<",
            "TT2;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-boolean v2, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$internal:Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    .line 3
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->this$0:Lcom/tencent/cos/xml/CosXmlBaseService;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-static {v0, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->access$000(Lcom/tencent/cos/xml/CosXmlBaseService;Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService$1;->val$cosXmlRequest:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResult;->content()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/xml/model/CosXmlResult;

    invoke-interface {v0, p0, p1}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/qcloud/core/http/HttpResult;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService$1;->onSuccess(Lcom/tencent/qcloud/core/http/HttpResult;)V

    return-void
.end method
