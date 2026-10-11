.class Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->multiUploadPart(Lcom/tencent/cos/xml/CosXmlSimpleService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

.field final synthetic val$finalUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;Lcom/tencent/cos/xml/model/object/UploadPartRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iput-object p2, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->val$finalUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 2

    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    iget-object p3, p3, Lcom/tencent/cos/xml/transfer/COSXMLTask;->IS_EXIT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p3}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2100(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    iget-object p4, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p4}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2400(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/Map;

    move-result-object p4

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->val$finalUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p3

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {v0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2400(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->val$finalUploadPartRequest:Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$11;->this$0:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$2500(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;)J

    move-result-wide p1

    invoke-static {p0, p3, p4, p1, p2}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;->access$600(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
