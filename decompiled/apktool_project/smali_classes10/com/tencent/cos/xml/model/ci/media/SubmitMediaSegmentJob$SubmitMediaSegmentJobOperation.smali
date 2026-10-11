.class public Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob$SubmitMediaSegmentJobOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitMediaSegmentJobOperation"
.end annotation


# instance fields
.field public jobLevel:Ljava/lang/String;

.field public output:Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob$SubmitMediaSegmentJobOutput;

.field public segment:Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob$SubmitMediaSegmentJobSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
