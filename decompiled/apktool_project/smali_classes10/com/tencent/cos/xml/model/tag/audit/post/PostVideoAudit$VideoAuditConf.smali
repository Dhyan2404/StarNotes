.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Conf"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoAuditConf"
.end annotation


# instance fields
.field public callbackVersion:Ljava/lang/String;

.field public detectContent:I

.field public snapshot:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;->snapshot:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;

    return-void
.end method
