.class public Lcom/tencent/cos/xml/model/ci/media/OperationVideoTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "VideoTag"
.end annotation


# instance fields
.field public scenario:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Stream"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/OperationVideoTag;->scenario:Ljava/lang/String;

    return-void
.end method
