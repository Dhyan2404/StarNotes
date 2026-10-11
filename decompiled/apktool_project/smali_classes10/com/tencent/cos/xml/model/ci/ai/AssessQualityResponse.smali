.class public Lcom/tencent/cos/xml/model/ci/ai/AssessQualityResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation


# instance fields
.field public aestheticScore:I

.field public bigImage:Z

.field public blackAndWhite:Z

.field public clarityScore:I

.field public longImage:Z

.field public lowQualityScore:I

.field public pureImage:Z

.field public requestId:Ljava/lang/String;

.field public smallImage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
