.class public Lcom/tencent/cos/xml/model/ci/common/DigitalWatermark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
.end annotation


# instance fields
.field public ignoreError:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Text"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/DigitalWatermark;->type:Ljava/lang/String;

    const-string v0, "V1"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/common/DigitalWatermark;->version:Ljava/lang/String;

    return-void
.end method
