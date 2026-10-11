.class public interface abstract Lcom/tencent/cos/xml/CosXml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/SimpleCosXml;


# virtual methods
.method public abstract addImageSearch(Lcom/tencent/cos/xml/model/ci/ai/AddImageSearchRequest;)Lcom/tencent/cos/xml/model/EmptyResponseResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract addImageSearchAsync(Lcom/tencent/cos/xml/model/ci/ai/AddImageSearchRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiBodyRecognition(Lcom/tencent/cos/xml/model/ci/ai/AIBodyRecognitionRequest;)Lcom/tencent/cos/xml/model/ci/ai/AIBodyRecognitionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiBodyRecognitionAsync(Lcom/tencent/cos/xml/model/ci/ai/AIBodyRecognitionRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiDetectCar(Lcom/tencent/cos/xml/model/ci/ai/AIDetectCarRequest;)Lcom/tencent/cos/xml/model/ci/ai/AIDetectCarResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiDetectCarAsync(Lcom/tencent/cos/xml/model/ci/ai/AIDetectCarRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiDetectFace(Lcom/tencent/cos/xml/model/ci/ai/AIDetectFaceRequest;)Lcom/tencent/cos/xml/model/ci/ai/AIDetectFaceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiDetectFaceAsync(Lcom/tencent/cos/xml/model/ci/ai/AIDetectFaceRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiDetectPet(Lcom/tencent/cos/xml/model/ci/ai/AIDetectPetRequest;)Lcom/tencent/cos/xml/model/ci/ai/AIDetectPetResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiDetectPetAsync(Lcom/tencent/cos/xml/model/ci/ai/AIDetectPetRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiEnhanceImage(Lcom/tencent/cos/xml/model/ci/ai/AIEnhanceImageRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiEnhanceImageAsync(Lcom/tencent/cos/xml/model/ci/ai/AIEnhanceImageRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiFaceEffect(Lcom/tencent/cos/xml/model/ci/ai/AIFaceEffectRequest;)Lcom/tencent/cos/xml/model/ci/ai/AIFaceEffectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiFaceEffectAsync(Lcom/tencent/cos/xml/model/ci/ai/AIFaceEffectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiGameRec(Lcom/tencent/cos/xml/model/ci/ai/AIGameRecRequest;)Lcom/tencent/cos/xml/model/ci/ai/AIGameRecResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiGameRecAsync(Lcom/tencent/cos/xml/model/ci/ai/AIGameRecRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiIDCardOCR(Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRRequest;)Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiIDCardOCRAsync(Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiImageColoring(Lcom/tencent/cos/xml/model/ci/ai/AIImageColoringRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiImageColoringAsync(Lcom/tencent/cos/xml/model/ci/ai/AIImageColoringRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiImageCrop(Lcom/tencent/cos/xml/model/ci/ai/AIImageCropRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiImageCropAsync(Lcom/tencent/cos/xml/model/ci/ai/AIImageCropRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiLicenseRec(Lcom/tencent/cos/xml/model/ci/ai/AILicenseRecRequest;)Lcom/tencent/cos/xml/model/ci/ai/AILicenseRecResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiLicenseRecAsync(Lcom/tencent/cos/xml/model/ci/ai/AILicenseRecRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract aiSuperResolution(Lcom/tencent/cos/xml/model/ci/ai/AISuperResolutionRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract aiSuperResolutionAsync(Lcom/tencent/cos/xml/model/ci/ai/AISuperResolutionRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract appendObject(Lcom/tencent/cos/xml/model/object/AppendObjectRequest;)Lcom/tencent/cos/xml/model/object/AppendObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract appendObjectAsync(Lcom/tencent/cos/xml/model/object/AppendObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract assessQuality(Lcom/tencent/cos/xml/model/ci/ai/AssessQualityRequest;)Lcom/tencent/cos/xml/model/ci/ai/AssessQualityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract assessQualityAsync(Lcom/tencent/cos/xml/model/ci/ai/AssessQualityRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract autoTranslationBlock(Lcom/tencent/cos/xml/model/ci/ai/AutoTranslationBlockRequest;)Lcom/tencent/cos/xml/model/ci/ai/AutoTranslationBlockResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract autoTranslationBlockAsync(Lcom/tencent/cos/xml/model/ci/ai/AutoTranslationBlockRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract cOSOCR(Lcom/tencent/cos/xml/model/ci/ai/COSOCRRequest;)Lcom/tencent/cos/xml/model/ci/ai/COSOCRResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract cOSOCRAsync(Lcom/tencent/cos/xml/model/ci/ai/COSOCRRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract createCRcode(Lcom/tencent/cos/xml/model/ci/ai/CreateCRcodeRequest;)Lcom/tencent/cos/xml/model/ci/ai/CreateCRcodeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract createCRcodeAsync(Lcom/tencent/cos/xml/model/ci/ai/CreateCRcodeRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucket(Lcom/tencent/cos/xml/model/bucket/DeleteBucketRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketCORS(Lcom/tencent/cos/xml/model/bucket/DeleteBucketCORSRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketCORSResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketCORSAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketCORSRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketDomain(Lcom/tencent/cos/xml/model/bucket/DeleteBucketDomainRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketDomainResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketDomainAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketDomainRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketInventory(Lcom/tencent/cos/xml/model/bucket/DeleteBucketInventoryRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketInventoryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketInventoryAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketInventoryRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketLifecycle(Lcom/tencent/cos/xml/model/bucket/DeleteBucketLifecycleRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketLifecycleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketLifecycleAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketLifecycleRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketPolicy(Lcom/tencent/cos/xml/model/bucket/DeleteBucketPolicyRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketPolicyResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketPolicyAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketPolicyRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketReplication(Lcom/tencent/cos/xml/model/bucket/DeleteBucketReplicationRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketReplicationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketReplicationAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketReplicationRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketTagging(Lcom/tencent/cos/xml/model/bucket/DeleteBucketTaggingRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketTaggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketTaggingAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketTaggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteBucketWebsite(Lcom/tencent/cos/xml/model/bucket/DeleteBucketWebsiteRequest;)Lcom/tencent/cos/xml/model/bucket/DeleteBucketWebsiteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteBucketWebsiteAsync(Lcom/tencent/cos/xml/model/bucket/DeleteBucketWebsiteRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteImageSearch(Lcom/tencent/cos/xml/model/ci/ai/DeleteImageSearchRequest;)Lcom/tencent/cos/xml/model/EmptyResponseResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteImageSearchAsync(Lcom/tencent/cos/xml/model/ci/ai/DeleteImageSearchRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteMultiObject(Lcom/tencent/cos/xml/model/object/DeleteMultiObjectRequest;)Lcom/tencent/cos/xml/model/object/DeleteMultiObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteMultiObjectAsync(Lcom/tencent/cos/xml/model/object/DeleteMultiObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract deleteObject(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteObjectAsync(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/listener/CosXmlBooleanListener;)V
.end method

.method public abstract deleteObjectTagging(Lcom/tencent/cos/xml/model/object/DeleteObjectTaggingRequest;)Lcom/tencent/cos/xml/model/object/DeleteObjectTaggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract deleteObjectTaggingAsync(Lcom/tencent/cos/xml/model/object/DeleteObjectTaggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract detectLabel(Lcom/tencent/cos/xml/model/ci/ai/DetectLabelRequest;)Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract detectLabelAsync(Lcom/tencent/cos/xml/model/ci/ai/DetectLabelRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract doesBucketExist(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract doesBucketExistAsync(Ljava/lang/String;Lcom/tencent/cos/xml/listener/CosXmlBooleanListener;)V
.end method

.method public abstract doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract doesObjectExistAsync(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/listener/CosXmlBooleanListener;)V
.end method

.method public abstract getActionSequence(Lcom/tencent/cos/xml/model/ci/ai/GetActionSequenceRequest;)Lcom/tencent/cos/xml/model/ci/ai/GetActionSequenceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getActionSequenceAsync(Lcom/tencent/cos/xml/model/ci/ai/GetActionSequenceRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucket(Lcom/tencent/cos/xml/model/bucket/GetBucketRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketACL(Lcom/tencent/cos/xml/model/bucket/GetBucketACLRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketACLAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketACLRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketAccelerate(Lcom/tencent/cos/xml/model/bucket/GetBucketAccelerateRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketAccelerateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketAccelerateAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketAccelerateRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketCORS(Lcom/tencent/cos/xml/model/bucket/GetBucketCORSRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketCORSResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketCORSAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketCORSRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketDomain(Lcom/tencent/cos/xml/model/bucket/GetBucketDomainRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketDomainResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketDomainAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketDomainRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketIntelligentTiering(Lcom/tencent/cos/xml/model/bucket/GetBucketIntelligentTieringRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketIntelligentTieringResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketIntelligentTieringAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketIntelligentTieringRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketInventory(Lcom/tencent/cos/xml/model/bucket/GetBucketInventoryRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketInventoryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketInventoryAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketInventoryRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketLifecycle(Lcom/tencent/cos/xml/model/bucket/GetBucketLifecycleRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketLifecycleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketLifecycleAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketLifecycleRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketLocation(Lcom/tencent/cos/xml/model/bucket/GetBucketLocationRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketLocationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketLocationAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketLocationRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketLogging(Lcom/tencent/cos/xml/model/bucket/GetBucketLoggingRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketLoggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketLoggingAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketLoggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketObjectVersions(Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketObjectVersionsAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketObjectVersionsRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketPolicy(Lcom/tencent/cos/xml/model/bucket/GetBucketPolicyRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketPolicyResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketPolicyAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketPolicyRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketReferer(Lcom/tencent/cos/xml/model/bucket/GetBucketRefererRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketRefererResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketRefererAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketRefererRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketReplication(Lcom/tencent/cos/xml/model/bucket/GetBucketReplicationRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketReplicationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketReplicationAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketReplicationRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketTagging(Lcom/tencent/cos/xml/model/bucket/GetBucketTaggingRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketTaggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketTaggingAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketTaggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketVersioning(Lcom/tencent/cos/xml/model/bucket/GetBucketVersioningRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketVersioningResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketVersioningAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketVersioningRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getBucketWebsite(Lcom/tencent/cos/xml/model/bucket/GetBucketWebsiteRequest;)Lcom/tencent/cos/xml/model/bucket/GetBucketWebsiteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getBucketWebsiteAsync(Lcom/tencent/cos/xml/model/bucket/GetBucketWebsiteRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getDescribeMediaBuckets(Lcom/tencent/cos/xml/model/ci/GetDescribeMediaBucketsRequest;)Lcom/tencent/cos/xml/model/ci/GetDescribeMediaBucketsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getDescribeMediaBucketsAsync(Lcom/tencent/cos/xml/model/ci/GetDescribeMediaBucketsRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getLiveCode(Lcom/tencent/cos/xml/model/ci/ai/GetLiveCodeRequest;)Lcom/tencent/cos/xml/model/ci/ai/GetLiveCodeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getLiveCodeAsync(Lcom/tencent/cos/xml/model/ci/ai/GetLiveCodeRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getMediaInfo(Lcom/tencent/cos/xml/model/ci/GetMediaInfoRequest;)Lcom/tencent/cos/xml/model/ci/GetMediaInfoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getMediaInfoAsync(Lcom/tencent/cos/xml/model/ci/GetMediaInfoRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getObjectACL(Lcom/tencent/cos/xml/model/object/GetObjectACLRequest;)Lcom/tencent/cos/xml/model/object/GetObjectACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getObjectACLAsync(Lcom/tencent/cos/xml/model/object/GetObjectACLRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getObjectTagging(Lcom/tencent/cos/xml/model/object/GetObjectTaggingRequest;)Lcom/tencent/cos/xml/model/object/GetObjectTaggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getObjectTaggingAsync(Lcom/tencent/cos/xml/model/object/GetObjectTaggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getPrivateM3U8(Lcom/tencent/cos/xml/model/ci/media/GetPrivateM3U8Request;)Lcom/tencent/cos/xml/model/ci/media/GetPrivateM3U8Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getPrivateM3U8Async(Lcom/tencent/cos/xml/model/ci/media/GetPrivateM3U8Request;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getSearchImage(Lcom/tencent/cos/xml/model/ci/ai/GetSearchImageRequest;)Lcom/tencent/cos/xml/model/ci/ai/GetSearchImageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getSearchImageAsync(Lcom/tencent/cos/xml/model/ci/ai/GetSearchImageRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getService(Lcom/tencent/cos/xml/model/service/GetServiceRequest;)Lcom/tencent/cos/xml/model/service/GetServiceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getServiceAsync(Lcom/tencent/cos/xml/model/service/GetServiceRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getSnapshot(Lcom/tencent/cos/xml/model/ci/GetSnapshotRequest;)Lcom/tencent/cos/xml/model/ci/GetSnapshotResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getSnapshotAsync(Lcom/tencent/cos/xml/model/ci/GetSnapshotRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract getWorkflowDetail(Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailRequest;)Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract getWorkflowDetailAsync(Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract goodsMatting(Lcom/tencent/cos/xml/model/ci/ai/GoodsMattingRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract goodsMattingAsync(Lcom/tencent/cos/xml/model/ci/ai/GoodsMattingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract headBucket(Lcom/tencent/cos/xml/model/bucket/HeadBucketRequest;)Lcom/tencent/cos/xml/model/bucket/HeadBucketResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract headBucketAsync(Lcom/tencent/cos/xml/model/bucket/HeadBucketRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract imageRepair(Lcom/tencent/cos/xml/model/ci/ai/ImageRepairRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract imageRepairAsync(Lcom/tencent/cos/xml/model/ci/ai/ImageRepairRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract listBucketInventory(Lcom/tencent/cos/xml/model/bucket/ListBucketInventoryRequest;)Lcom/tencent/cos/xml/model/bucket/ListBucketInventoryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract listBucketInventoryAsync(Lcom/tencent/cos/xml/model/bucket/ListBucketInventoryRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract listBucketVersions(Lcom/tencent/cos/xml/model/bucket/ListBucketVersionsRequest;)Lcom/tencent/cos/xml/model/bucket/ListBucketVersionsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract listBucketVersionsAsync(Lcom/tencent/cos/xml/model/bucket/ListBucketVersionsRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract livenessRecognition(Lcom/tencent/cos/xml/model/ci/ai/LivenessRecognitionRequest;)Lcom/tencent/cos/xml/model/ci/ai/LivenessRecognitionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract livenessRecognitionAsync(Lcom/tencent/cos/xml/model/ci/ai/LivenessRecognitionRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract optionObject(Lcom/tencent/cos/xml/model/object/OptionObjectRequest;)Lcom/tencent/cos/xml/model/object/OptionObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract optionObjectAsync(Lcom/tencent/cos/xml/model/object/OptionObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract previewDocument(Lcom/tencent/cos/xml/model/ci/PreviewDocumentRequest;)Lcom/tencent/cos/xml/model/ci/PreviewDocumentResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract previewDocumentAsync(Lcom/tencent/cos/xml/model/ci/PreviewDocumentRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract previewDocumentInHtml(Lcom/tencent/cos/xml/model/ci/PreviewDocumentInHtmlRequest;)Lcom/tencent/cos/xml/model/ci/PreviewDocumentInHtmlResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract previewDocumentInHtmlAsync(Lcom/tencent/cos/xml/model/ci/PreviewDocumentInHtmlRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract previewDocumentInHtmlBytes(Lcom/tencent/cos/xml/model/ci/PreviewDocumentInHtmlBytesRequest;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract previewDocumentInHtmlBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract previewDocumentInHtmlLink(Lcom/tencent/cos/xml/model/ci/PreviewDocumentInHtmlLinkRequest;)Lcom/tencent/cos/xml/model/ci/PreviewDocumentInHtmlLinkResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract previewDocumentInHtmlLinkAsync(Lcom/tencent/cos/xml/model/ci/PreviewDocumentInHtmlLinkRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucket(Lcom/tencent/cos/xml/model/bucket/PutBucketRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketACL(Lcom/tencent/cos/xml/model/bucket/PutBucketACLRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketACLAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketACLRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketAccelerate(Lcom/tencent/cos/xml/model/bucket/PutBucketAccelerateRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketAccelerateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketAccelerateAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketAccelerateRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketCORS(Lcom/tencent/cos/xml/model/bucket/PutBucketCORSRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketCORSResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketCORSAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketCORSRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketDomain(Lcom/tencent/cos/xml/model/bucket/PutBucketDomainRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketDomainResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketDomainAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketDomainRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketIntelligentTiering(Lcom/tencent/cos/xml/model/bucket/PutBucketIntelligentTieringRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketIntelligentTieringResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketIntelligentTieringAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketIntelligentTieringRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketInventory(Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketInventoryAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketInventoryRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketLifecycle(Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketLifecycleAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketLifecycleRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketLogging(Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketLoggingAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketLoggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketPolicy(Lcom/tencent/cos/xml/model/bucket/PutBucketPolicyRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketPolicyResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketPolicyAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketPolicyRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketReferer(Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketRefererResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketRefererAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketRefererRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketReplication(Lcom/tencent/cos/xml/model/bucket/PutBucketReplicationRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketReplicationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketReplicationAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketReplicationRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketTagging(Lcom/tencent/cos/xml/model/bucket/PutBucketTaggingRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketTaggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketTaggingAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketTaggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketVersionAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putBucketVersioning(Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketVersioningResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketWebsite(Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;)Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putBucketWebsiteAsync(Lcom/tencent/cos/xml/model/bucket/PutBucketWebsiteRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putObjectACL(Lcom/tencent/cos/xml/model/object/PutObjectACLRequest;)Lcom/tencent/cos/xml/model/object/PutObjectACLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putObjectACLAsync(Lcom/tencent/cos/xml/model/object/PutObjectACLRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract putObjectTagging(Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;)Lcom/tencent/cos/xml/model/object/PutObjectTaggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract putObjectTaggingAsync(Lcom/tencent/cos/xml/model/object/PutObjectTaggingRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract recognitionQRcode(Lcom/tencent/cos/xml/model/ci/ai/RecognitionQRcodeRequest;)Lcom/tencent/cos/xml/model/ci/ai/RecognitionQRcodeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract recognitionQRcodeAsync(Lcom/tencent/cos/xml/model/ci/ai/RecognitionQRcodeRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract recognizeLogo(Lcom/tencent/cos/xml/model/ci/ai/RecognizeLogoRequest;)Lcom/tencent/cos/xml/model/ci/ai/RecognizeLogoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract recognizeLogoAsync(Lcom/tencent/cos/xml/model/ci/ai/RecognizeLogoRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract restoreObject(Lcom/tencent/cos/xml/model/object/RestoreRequest;)Lcom/tencent/cos/xml/model/object/RestoreResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract restoreObjectAsync(Lcom/tencent/cos/xml/model/object/RestoreRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract selectObjectContent(Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;)Lcom/tencent/cos/xml/model/object/SelectObjectContentResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract selectObjectContentAsync(Lcom/tencent/cos/xml/model/object/SelectObjectContentRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
.end method

.method public abstract updateObjectMeta(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/COSMetaData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateObjectMetaAsync(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/COSMetaData;Lcom/tencent/cos/xml/listener/CosXmlBooleanListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateObjectMetaData(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/COSMetaData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation
.end method

.method public abstract updateObjectMetaDataAsync(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/cos/xml/model/tag/COSMetaData;Lcom/tencent/cos/xml/listener/CosXmlBooleanListener;)V
.end method
