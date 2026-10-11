.class public Lcom/tencent/cos/xml/model/ci/audit/CancelLiveVideoAuditResponse$CancelLiveVideoAuditResponseJobsDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/audit/CancelLiveVideoAuditResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelLiveVideoAuditResponseJobsDetail"
.end annotation


# instance fields
.field public creationTime:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public jobId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
