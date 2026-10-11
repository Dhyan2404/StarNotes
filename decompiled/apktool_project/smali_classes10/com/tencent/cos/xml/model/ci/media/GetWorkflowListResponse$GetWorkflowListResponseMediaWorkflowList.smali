.class public Lcom/tencent/cos/xml/model/ci/media/GetWorkflowListResponse$GetWorkflowListResponseMediaWorkflowList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "MediaWorkflowList"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/GetWorkflowListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWorkflowListResponseMediaWorkflowList"
.end annotation


# instance fields
.field public createTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public workflowId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
