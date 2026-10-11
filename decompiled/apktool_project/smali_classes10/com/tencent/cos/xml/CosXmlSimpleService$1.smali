.class Lcom/tencent/cos/xml/CosXmlSimpleService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/CosXmlSimpleService;->preBuildConnectionAsync(Ljava/lang/String;Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/CosXmlSimpleService;

.field final synthetic val$listener:Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/CosXmlSimpleService$1;->this$0:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iput-object p2, p0, Lcom/tencent/cos/xml/CosXmlSimpleService$1;->val$listener:Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getStatusCode()I

    move-result p1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlSimpleService$1;->val$listener:Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;

    invoke-interface {p0}, Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlSimpleService$1;->val$listener:Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;

    invoke-interface {p0, p2, p3}, Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;->onFail(Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlSimpleService$1;->val$listener:Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;

    invoke-interface {p0}, Lcom/tencent/cos/xml/listener/CosXmlResultSimpleListener;->onSuccess()V

    return-void
.end method
