.class public Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseWordCoordinate;,
        Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseWordCoordPoint;,
        Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseWords;,
        Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseWordPolygon;,
        Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponsePolygon;,
        Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseItemPolygon;,
        Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseTextDetections;
    }
.end annotation


# instance fields
.field public angel:F

.field public language:Ljava/lang/String;

.field public pdfPageSize:I

.field public requestId:Ljava/lang/String;

.field public textDetections:Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseTextDetections;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
