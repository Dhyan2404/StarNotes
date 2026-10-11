.class interface abstract Lcom/tencent/cos/xml/transfer/COSXMLUploadTask$MultiUploadsStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/transfer/COSXMLUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiUploadsStateListener"
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

.method public abstract onUploadParts()V
.end method
