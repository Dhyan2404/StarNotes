.class public Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field public avgFps:Ljava/lang/String;

.field public bitrate:F

.field public codecLongName:Ljava/lang/String;

.field public codecName:Ljava/lang/String;

.field public codecTag:Ljava/lang/String;

.field public codecTagString:Ljava/lang/String;

.field public codecTimeBase:Ljava/lang/String;

.field public dar:Ljava/lang/String;

.field public duration:F

.field public fieldOrder:Ljava/lang/String;

.field public fps:F

.field public hasBFrame:I

.field public height:I

.field public index:I

.field public language:Ljava/lang/String;

.field public level:I

.field public numFrames:I

.field public pixFormat:Ljava/lang/String;

.field public profile:Ljava/lang/String;

.field public refFrames:I

.field public sar:Ljava/lang/String;

.field public startTime:F

.field public timebase:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
