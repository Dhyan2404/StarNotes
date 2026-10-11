.class public Lcom/tencent/cos/xml/model/ci/media/SubmitConcatJob$SubmitConcatJobConcatTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "ConcatTemplate"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitConcatJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitConcatJobConcatTemplate"
.end annotation


# instance fields
.field public audio:Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatAudio;

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

.field public concatFragment:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
        ignoreListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/media/SubmitConcatJob$SubmitConcatJobConcatFragment;",
            ">;"
        }
    .end annotation
.end field

.field public container:Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatContainer;

.field public directConcat:Ljava/lang/String;

.field public index:Ljava/lang/String;

.field public video:Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
