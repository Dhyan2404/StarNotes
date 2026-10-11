.class public Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseWorkflowExecution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "WorkflowExecution"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWorkflowDetailResponseWorkflowExecution"
.end annotation


# instance fields
.field public createTime:Ljava/lang/String;

.field public object:Ljava/lang/String;

.field public runId:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public tasks:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseTasks;",
            ">;"
        }
    .end annotation
.end field

.field public workflowId:Ljava/lang/String;

.field public workflowName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
