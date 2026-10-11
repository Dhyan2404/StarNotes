.class public Lcom/tencent/cos/xml/model/ci/ai/PostVideoTargetRecResponse$PostVideoTargetRecResponseBodyRecognition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "BodyRecognition"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/PostVideoTargetRecResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostVideoTargetRecResponseBodyRecognition"
.end annotation


# instance fields
.field public bodyInfo:Lcom/tencent/cos/xml/model/ci/ai/PostVideoTargetRecResponse$PostVideoTargetRecResponseBodyInfo;

.field public time:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
