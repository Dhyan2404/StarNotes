.class Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

.field final synthetic val$request:Lcom/tencent/cos/xml/model/CosXmlRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;->val$request:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$1900(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object v1, v1, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;->val$request:Lcom/tencent/cos/xml/model/CosXmlRequest;

    invoke-static {v1, p0, v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2000(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8$2;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$8;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$1700(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)V

    :cond_1
    :goto_0
    return-void
.end method
