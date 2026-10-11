.class public Lcom/tencent/cos/xml/model/tag/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/MediaInfo$Format;,
        Lcom/tencent/cos/xml/model/tag/MediaInfo$Subtitle;,
        Lcom/tencent/cos/xml/model/tag/MediaInfo$Audio;,
        Lcom/tencent/cos/xml/model/tag/MediaInfo$Video;,
        Lcom/tencent/cos/xml/model/tag/MediaInfo$Stream;
    }
.end annotation


# instance fields
.field public format:Lcom/tencent/cos/xml/model/tag/MediaInfo$Format;

.field public stream:Lcom/tencent/cos/xml/model/tag/MediaInfo$Stream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
