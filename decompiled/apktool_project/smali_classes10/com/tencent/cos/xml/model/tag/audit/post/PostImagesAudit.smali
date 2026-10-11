.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit$ImagesAuditInput;
    }
.end annotation


# instance fields
.field public conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

.field public input:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        ignoreListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit$ImagesAuditInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->input:Ljava/util/List;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    return-void
.end method
