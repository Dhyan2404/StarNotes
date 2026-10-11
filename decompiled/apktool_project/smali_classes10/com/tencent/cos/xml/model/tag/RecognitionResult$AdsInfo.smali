.class public Lcom/tencent/cos/xml/model/tag/RecognitionResult$AdsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "AdsInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/RecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdsInfo"
.end annotation


# instance fields
.field public category:Ljava/lang/String;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "Category"
    .end annotation
.end field

.field public code:I
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "Code"
    .end annotation
.end field

.field public hitFlag:I
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "HitFlag"
    .end annotation
.end field

.field public label:Ljava/lang/String;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "Label"
    .end annotation
.end field

.field public libResults:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/bean/AuditLibResults;",
            ">;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "Msg"
    .end annotation
.end field

.field public ocrResults:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/bean/AuditOcrResults;",
            ">;"
        }
    .end annotation
.end field

.field public score:I
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "Score"
    .end annotation
.end field

.field public subLabel:Ljava/lang/String;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "SubLabel"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
