.class public Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail$ImagesAuditScenarioInfo;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditJobsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagesAuditScenarioInfo"
.end annotation


# instance fields
.field public code:I

.field public label:Ljava/lang/String;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/ImageAuditScenarioInfo;-><init>()V

    return-void
.end method
