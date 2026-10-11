.class public Lcom/tencent/cos/xml/model/tag/audit/get/TextAuditJobResponse$TextAuditJobsDetail;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/get/TextAuditJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextAuditJobsDetail"
.end annotation


# instance fields
.field public abuseInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditScenarioInfo;

.field public adsInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditScenarioInfo;

.field public content:Ljava/lang/String;

.field public illegalInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditScenarioInfo;

.field public politicsInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditScenarioInfo;

.field public pornInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditScenarioInfo;

.field public section:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/get/TextAuditJobResponse$Section;",
            ">;"
        }
    .end annotation
.end field

.field public sectionCount:I

.field public terrorismInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditScenarioInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;-><init>()V

    return-void
.end method
