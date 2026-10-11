.class public Lcom/tencent/cos/xml/model/tag/audit/get/GetVideoAuditJobResponse$SnapshotAuditScenarioInfo;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/get/GetVideoAuditJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotAuditScenarioInfo"
.end annotation


# instance fields
.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;-><init>()V

    return-void
.end method
