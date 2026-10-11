.class public Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "VideoMontage"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateVideoMontageResponseVideoMontage"
.end annotation


# instance fields
.field public audio:Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageAudio;

.field public audioMix:Lcom/tencent/cos/xml/model/ci/common/AudioMix;

.field public audioMixArray:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/common/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field public container:Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageContainer;

.field public duration:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public video:Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
