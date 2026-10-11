.class public Lcom/tencent/cos/xml/model/ci/media/TemplateSnapshotResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation


# instance fields
.field public createTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public snapshot:Lcom/tencent/cos/xml/model/ci/media/TemplateSnapshot$TemplateSnapshotSnapshot;

.field public tag:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
