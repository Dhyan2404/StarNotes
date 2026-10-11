.class public Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "ObjectInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWorkflowDetailResponseObjectInfo"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public inputObjectName:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public objectName:Ljava/lang/String;

.field public objectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
