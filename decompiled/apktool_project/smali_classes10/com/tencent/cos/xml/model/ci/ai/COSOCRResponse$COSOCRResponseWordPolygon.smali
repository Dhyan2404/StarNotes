.class public Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseWordPolygon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "WordPolygon"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COSOCRResponseWordPolygon"
.end annotation


# instance fields
.field public leftBottom:Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponsePolygon;

.field public leftTop:Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponsePolygon;

.field public rightBottom:Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponsePolygon;

.field public rightTop:Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponsePolygon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
