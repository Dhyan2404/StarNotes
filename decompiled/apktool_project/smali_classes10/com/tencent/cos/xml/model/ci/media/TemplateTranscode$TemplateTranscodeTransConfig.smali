.class public Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeTransConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "TransConfig"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateTranscodeTransConfig"
.end annotation


# instance fields
.field public adjDarMethod:Ljava/lang/String;

.field public audioBitrateAdjMethod:Ljava/lang/String;

.field public dashEncrypt:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeDashEncrypt;

.field public deleteMetadata:Ljava/lang/String;

.field public hlsEncrypt:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeHlsEncrypt;

.field public isCheckAudioBitrate:Ljava/lang/String;

.field public isCheckReso:Ljava/lang/String;

.field public isCheckVideoBitrate:Ljava/lang/String;

.field public isCheckVideoFps:Ljava/lang/String;

.field public isHdr2Sdr:Ljava/lang/String;

.field public resoAdjMethod:Ljava/lang/String;

.field public transcodeIndex:Ljava/lang/String;

.field public videoBitrateAdjMethod:Ljava/lang/String;

.field public videoFpsAdjMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
