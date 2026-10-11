.class Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/listener/CosXmlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
    .locals 2

    check-cast p2, Lcom/tencent/cos/xml/model/object/ListPartsResult;

    iget-object v0, p2, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    iget-object v0, v0, Lcom/tencent/cos/xml/model/tag/ListParts;->parts:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->val$allParts:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    iget-object v1, v1, Lcom/tencent/cos/xml/model/tag/ListParts;->parts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->val$nextPartNumberMarker:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p2, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    iget-object v1, v1, Lcom/tencent/cos/xml/model/tag/ListParts;->nextPartNumberMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->val$nextPartNumberMarker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    iget-object v0, v0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->val$nextPartNumberMarker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/tencent/cos/xml/model/object/ListPartsResult;->listParts:Lcom/tencent/cos/xml/model/tag/ListParts;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6$1;->this$1:Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;

    iget-object v1, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->val$allParts:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/tencent/cos/xml/model/tag/ListParts;->parts:Ljava/util/List;

    iget-object p0, p0, Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$6;->val$cosXmlResultListener:Lcom/tencent/cos/xml/listener/CosXmlResultListener;

    invoke-interface {p0, p1, p2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V

    :goto_0
    return-void
.end method
