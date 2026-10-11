.class public Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit$PostLiveVideoAuditUserInfo;,
        Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit$PostLiveVideoAuditStorageConf;,
        Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit$PostLiveVideoAuditInput;,
        Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit$PostLiveVideoAuditConf;
    }
.end annotation


# instance fields
.field public conf:Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit$PostLiveVideoAuditConf;

.field public input:Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit$PostLiveVideoAuditInput;

.field public storageConf:Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit$PostLiveVideoAuditStorageConf;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "live_video"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostLiveVideoAudit;->type:Ljava/lang/String;

    return-void
.end method
