.class public Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Container"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateTranscodeContainer"
.end annotation


# instance fields
.field public clipConfig:Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeClipConfig;

.field public format:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
