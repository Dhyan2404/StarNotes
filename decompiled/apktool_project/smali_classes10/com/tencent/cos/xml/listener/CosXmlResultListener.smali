.class public interface abstract Lcom/tencent/cos/xml/listener/CosXmlResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V
    .param p2    # Lcom/tencent/cos/xml/exception/CosXmlClientException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)V
.end method
