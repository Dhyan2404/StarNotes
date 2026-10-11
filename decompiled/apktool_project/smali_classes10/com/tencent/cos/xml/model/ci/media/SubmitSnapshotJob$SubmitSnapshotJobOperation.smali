.class public Lcom/tencent/cos/xml/model/ci/media/SubmitSnapshotJob$SubmitSnapshotJobOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitSnapshotJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitSnapshotJobOperation"
.end annotation


# instance fields
.field public jobLevel:Ljava/lang/String;

.field public output:Lcom/tencent/cos/xml/model/ci/media/SubmitSnapshotJob$SubmitSnapshotJobOutput;

.field public snapshot:Lcom/tencent/cos/xml/model/ci/media/TemplateSnapshot$TemplateSnapshotSnapshot;

.field public templateId:Ljava/lang/String;

.field public userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
