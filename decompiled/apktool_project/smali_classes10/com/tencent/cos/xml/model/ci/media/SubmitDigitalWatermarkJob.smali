.class public Lcom/tencent/cos/xml/model/ci/media/SubmitDigitalWatermarkJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/SubmitDigitalWatermarkJob$SubmitDigitalWatermarkJobOutput;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitDigitalWatermarkJob$SubmitDigitalWatermarkJobOperation;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitDigitalWatermarkJob$SubmitDigitalWatermarkJobInput;
    }
.end annotation


# instance fields
.field public callBack:Ljava/lang/String;

.field public callBackFormat:Ljava/lang/String;

.field public callBackMqConfig:Lcom/tencent/cos/xml/model/tag/CallBackMqConfig;

.field public callBackType:Ljava/lang/String;

.field public input:Lcom/tencent/cos/xml/model/ci/media/SubmitDigitalWatermarkJob$SubmitDigitalWatermarkJobInput;

.field public operation:Lcom/tencent/cos/xml/model/ci/media/SubmitDigitalWatermarkJob$SubmitDigitalWatermarkJobOperation;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DigitalWatermark"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/SubmitDigitalWatermarkJob;->tag:Ljava/lang/String;

    return-void
.end method
