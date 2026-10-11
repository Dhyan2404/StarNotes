.class public Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo$Results;,
        Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo$LibResults;
    }
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public hitFlag:I

.field public keywords:Ljava/lang/String;

.field public libResults:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo$LibResults;",
            ">;"
        }
    .end annotation
.end field

.field public recognitionResults:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo$Results;",
            ">;"
        }
    .end annotation
.end field

.field public score:I

.field public speakerResults:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo$Results;",
            ">;"
        }
    .end annotation
.end field

.field public subLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
