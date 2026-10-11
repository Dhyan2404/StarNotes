.class public Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJobResponse$SubmitTranscodeJobResponseOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitTranscodeJobResponseOperation"
.end annotation


# instance fields
.field public digitalWatermark:Lcom/tencent/cos/xml/model/ci/common/DigitalWatermark;

.field public jobLevel:Ljava/lang/String;

.field public mediaInfo:Lcom/tencent/cos/xml/model/tag/MediaInfo;

.field public mediaResult:Lcom/tencent/cos/xml/model/ci/common/MediaResult;

.field public output:Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobOutput;

.field public removeWatermark:Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobRemoveWatermark;

.field public templateId:Ljava/lang/String;

.field public templateName:Ljava/lang/String;

.field public transcode:Lcom/tencent/cos/xml/model/ci/media/SubmitTranscodeJob$SubmitTranscodeJobTranscode;

.field public userData:Ljava/lang/String;

.field public watermark:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$Watermark;",
            ">;"
        }
    .end annotation
.end field

.field public watermarkTemplateId:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
