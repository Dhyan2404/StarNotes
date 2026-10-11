.class Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;

.field final synthetic val$clientException:Lcom/tencent/cos/xml/exception/CosXmlClientException;

.field final synthetic val$request:Lcom/tencent/cos/xml/model/CosXmlRequest;

.field final synthetic val$serviceException:Lcom/tencent/cos/xml/exception/CosXmlServiceException;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->val$request:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iput-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->val$clientException:Lcom/tencent/cos/xml/exception/CosXmlClientException;

    iput-object p4, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->val$serviceException:Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$1900(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->val$request:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-static {v1, v2, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2000(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->val$request:Lcom/tencent/cos/xml/model/CosXmlRequest;

    iget-object v2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->val$clientException:Lcom/tencent/cos/xml/exception/CosXmlClientException;

    iget-object v3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->val$serviceException:Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->encounterError(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :goto_0
    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$13;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2900(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
