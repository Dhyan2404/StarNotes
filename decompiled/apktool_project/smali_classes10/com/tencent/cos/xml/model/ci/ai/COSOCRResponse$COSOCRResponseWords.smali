.class public Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseWords;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Words"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COSOCRResponseWords"
.end annotation


# instance fields
.field public character:Ljava/lang/String;

.field public confidence:I

.field public wordCoordPoint:Lcom/tencent/cos/xml/model/ci/ai/COSOCRResponse$COSOCRResponseWordCoordPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
