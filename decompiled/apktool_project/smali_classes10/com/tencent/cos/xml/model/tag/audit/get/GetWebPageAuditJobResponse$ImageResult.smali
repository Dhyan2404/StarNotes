.class public Lcom/tencent/cos/xml/model/tag/audit/get/GetWebPageAuditJobResponse$ImageResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/get/GetWebPageAuditJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageResult"
.end annotation


# instance fields
.field public adsInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;

.field public label:Ljava/lang/String;

.field public politicsInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;

.field public pornInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;

.field public suggestion:I

.field public terrorismInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
