.class public Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseResultInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "ResultInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWorkflowDetailResponseResultInfo"
.end annotation


# instance fields
.field public objectCount:Ljava/lang/String;

.field public objectInfo:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field public spriteObjectCount:Ljava/lang/String;

.field public spriteObjectInfo:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseSpriteObjectInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
