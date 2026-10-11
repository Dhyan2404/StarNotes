.class public Lcom/tencent/cos/xml/crypto/COSDirectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/crypto/COSDirect;


# instance fields
.field private cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

.field private cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/CosXmlSimpleService;Lcom/tencent/cos/xml/crypto/CryptoModuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    iput-object p2, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    :cond_0
    return-void
.end method

.method public cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    :cond_0
    return-void
.end method

.method public completeMultipartUpload(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->isTransferSecurely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->completeMultipartUploadSecurely(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->completeMultiUpload(Lcom/tencent/cos/xml/model/object/CompleteMultiUploadRequest;)Lcom/tencent/cos/xml/model/object/CompleteMultiUploadResult;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Api implementation not found"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public getCosService()Lcom/tencent/cos/xml/CosXmlSimpleService;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    return-object p0
.end method

.method public getCryptoModule()Lcom/tencent/cos/xml/crypto/CryptoModuleBase;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    return-object p0
.end method

.method public getObject(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->isTransferSecurely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-interface {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModule;->getObjectSecurely(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getObject(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Api implementation not found"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->headObject(Lcom/tencent/cos/xml/model/object/HeadObjectRequest;)Lcom/tencent/cos/xml/model/object/HeadObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public initMultipartUpload(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->isTransferSecurely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->initMultipartUploadSecurely(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->initMultipartUpload(Lcom/tencent/cos/xml/model/object/InitMultipartUploadRequest;)Lcom/tencent/cos/xml/model/object/InitMultipartUploadResult;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Api implementation not found"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public isTransferSecurely()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public putObject(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->isTransferSecurely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->putObjectSecurely(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlSimpleService;->putObject(Lcom/tencent/cos/xml/model/object/PutObjectRequest;)Lcom/tencent/cos/xml/model/object/PutObjectResult;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Api implementation not found"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public uploadPart(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)Lcom/tencent/cos/xml/model/object/UploadPartResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->isTransferSecurely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->uploadPartSecurely(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)Lcom/tencent/cos/xml/model/object/UploadPartResult;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->uploadPart(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)Lcom/tencent/cos/xml/model/object/UploadPartResult;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Api implementation not found"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0
.end method

.method public uploadPartAsync(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->isTransferSecurely()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cryptoModule:Lcom/tencent/cos/xml/crypto/CryptoModuleBase;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/crypto/CryptoModuleBase;->uploadPartAsyncSecurely(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/crypto/COSDirectImpl;->cosService:Lcom/tencent/cos/xml/CosXmlSimpleService;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->uploadPartAsync(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    goto :goto_0

    :cond_1
    const-string p0, "Api implementation not found"

    invoke-static {p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;->internalException(Ljava/lang/String;)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p2, p1, p0, v0}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :goto_0
    return-void
.end method
