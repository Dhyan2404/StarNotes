.class public Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$Results;,
        Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$PageSegment;,
        Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$DocumentAuditScenarioInfo;,
        Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$Labels;,
        Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$DocumentAuditJobsDetail;
    }
.end annotation


# instance fields
.field public jobsDetail:Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$DocumentAuditJobsDetail;

.field public requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
