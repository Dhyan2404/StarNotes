.class public Lcom/tencent/cos/xml/model/tag/audit/get/TextAuditJobResponse$Section;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditSection;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/get/TextAuditJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field public abuseInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo;

.field public illegalInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/TextAuditScenarioInfo;

.field public label:Ljava/lang/String;

.field public result:I

.field public startByte:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditSection;-><init>()V

    return-void
.end method
