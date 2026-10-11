.class public Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobExtractDigitalWatermark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "ExtractDigitalWatermark"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitExtractDigitalWatermarkJobExtractDigitalWatermark"
.end annotation


# instance fields
.field public type:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Text"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobExtractDigitalWatermark;->type:Ljava/lang/String;

    const-string v0, "V1"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/SubmitExtractDigitalWatermarkJob$SubmitExtractDigitalWatermarkJobExtractDigitalWatermark;->version:Ljava/lang/String;

    return-void
.end method
