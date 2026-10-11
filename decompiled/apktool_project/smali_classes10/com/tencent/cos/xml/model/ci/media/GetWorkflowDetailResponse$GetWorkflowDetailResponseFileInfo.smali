.class public Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "FileInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWorkflowDetailResponseFileInfo"
.end annotation


# instance fields
.field public basicInfo:Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseBasicInfo;

.field public imageInfo:Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseImageInfo;

.field public mediaInfo:Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseMediaInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
