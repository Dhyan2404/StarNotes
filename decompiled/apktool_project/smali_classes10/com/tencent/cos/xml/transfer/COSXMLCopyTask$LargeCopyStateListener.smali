.class interface abstract Lcom/tencent/cos/xml/transfer/COSXMLCopyTask$LargeCopyStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSXMLCopyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LargeCopyStateListener"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
.end method

.method public abstract onFailed(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
.end method

.method public abstract onInit()V
.end method

.method public abstract onListParts()V
.end method

.method public abstract onUploadPartCopy()V
.end method
