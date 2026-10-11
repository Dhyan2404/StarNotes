.class public Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageContainer;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageAudio;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageVideo;
    }
.end annotation


# instance fields
.field public audio:Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageAudio;

.field public audioMix:Lcom/tencent/cos/xml/model/ci/common/AudioMix;

.field public audioMixArray:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
        ignoreListNote = true
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

.field public name:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public video:Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage$TemplateVideoMontageVideo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoMontage"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontage;->tag:Ljava/lang/String;

    return-void
.end method
