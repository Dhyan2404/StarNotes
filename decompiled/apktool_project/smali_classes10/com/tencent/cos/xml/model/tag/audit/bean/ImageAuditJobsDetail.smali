.class public Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail$ImagesAuditScenarioInfo;
    }
.end annotation


# instance fields
.field public adsInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail$ImagesAuditScenarioInfo;

.field public compressionResult:I

.field public object:Ljava/lang/String;

.field public politicsInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail$ImagesAuditScenarioInfo;

.field public pornInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail$ImagesAuditScenarioInfo;

.field public qualityInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail$ImagesAuditScenarioInfo;

.field public score:I

.field public terrorismInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail$ImagesAuditScenarioInfo;

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;-><init>()V

    return-void
.end method
