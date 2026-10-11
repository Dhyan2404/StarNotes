.class public Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseVideoTagResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "VideoTagResult"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitVideoTagJobResponseVideoTagResult"
.end annotation


# instance fields
.field public streamData:Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseStreamData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
