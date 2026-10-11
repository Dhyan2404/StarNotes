.class public Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob$SubmitMediaSegmentJobSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitMediaSegmentJobSegment"
.end annotation


# instance fields
.field public duration:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public hlsEncrypt:Lcom/tencent/cos/xml/model/ci/media/SubmitMediaSegmentJob$SubmitMediaSegmentJobHlsEncrypt;

.field public transcodeIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
