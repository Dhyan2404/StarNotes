.class public Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJobResponse$SubmitMediaSegmentJobResponseOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitMediaSegmentJobResponseOperation"
.end annotation


# instance fields
.field public jobLevel:Ljava/lang/String;

.field public mediaInfo:Lcom/tencent/cos/xml/model/tag/MediaInfo;

.field public mediaResult:Lcom/tencent/cos/xml/model/ci/common/MediaResult;

.field public output:Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob$SubmitMediaSegmentJobOutput;

.field public segment:Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob$SubmitMediaSegmentJobSegment;

.field public userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
