.class public Lcom/tencent/cos/xml/model/ci/media/SubmitPicProcessJobResponse$SubmitPicProcessJobResponseOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitPicProcessJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitPicProcessJobResponseOperation"
.end annotation


# instance fields
.field public output:Lcom/tencent/cos/xml/model/ci/media/SubmitPicProcessJob$SubmitPicProcessJobOutput;

.field public picProcess:Lcom/tencent/cos/xml/model/ci/common/PicProcess;

.field public picProcessResult:Lcom/tencent/cos/xml/model/tag/pic/PicUploadResult;

.field public templateId:Ljava/lang/String;

.field public templateName:Ljava/lang/String;

.field public userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
