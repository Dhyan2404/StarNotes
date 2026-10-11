.class public interface abstract Lcom/tencent/cos/xml/transfer/TransferListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onError(Ljava/lang/String;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
.end method

.method public abstract onProgressChanged(Ljava/lang/String;JJ)V
.end method

.method public abstract onStateChanged(Ljava/lang/String;Lcom/tencent/cos/xml/transfer/TransferState;)V
.end method
