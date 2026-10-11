.class public Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$Labels;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Labels"
.end annotation


# instance fields
.field public adsInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$DocumentAuditScenarioInfo;

.field public politicsInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$DocumentAuditScenarioInfo;

.field public pornInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$DocumentAuditScenarioInfo;

.field public terrorismInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetDocumentAuditJobResponse$DocumentAuditScenarioInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
