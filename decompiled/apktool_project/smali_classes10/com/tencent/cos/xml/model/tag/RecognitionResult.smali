.class public Lcom/tencent/cos/xml/model/tag/RecognitionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "RecognitionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/RecognitionResult$QualityInfo;,
        Lcom/tencent/cos/xml/model/tag/RecognitionResult$AdsInfo;,
        Lcom/tencent/cos/xml/model/tag/RecognitionResult$TerroristInfo;,
        Lcom/tencent/cos/xml/model/tag/RecognitionResult$PoliticsInfo;,
        Lcom/tencent/cos/xml/model/tag/RecognitionResult$PornInfo;
    }
.end annotation


# instance fields
.field public adsInfo:Lcom/tencent/cos/xml/model/tag/RecognitionResult$AdsInfo;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "AdsInfo"
    .end annotation
.end field

.field public category:Ljava/lang/String;

.field public compressionResult:I

.field public dataId:Ljava/lang/String;

.field public jobId:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public object:Ljava/lang/String;

.field public politicsInfo:Lcom/tencent/cos/xml/model/tag/RecognitionResult$PoliticsInfo;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "PoliticsInfo"
    .end annotation
.end field

.field public pornInfo:Lcom/tencent/cos/xml/model/tag/RecognitionResult$PornInfo;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "PornInfo"
    .end annotation
.end field

.field public qualityInfo:Lcom/tencent/cos/xml/model/tag/RecognitionResult$QualityInfo;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "QualityInfo"
    .end annotation
.end field

.field public result:I

.field public score:I

.field public state:Ljava/lang/String;

.field public subLabel:Ljava/lang/String;

.field public terroristInfo:Lcom/tencent/cos/xml/model/tag/RecognitionResult$TerroristInfo;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "TerroristInfo"
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
