.class public Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResponse$AIIDCardOCRResponseIdInfo;,
        Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResponse$AIIDCardOCRResponseAdvancedInfo;
    }
.end annotation


# instance fields
.field public advancedInfo:Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResponse$AIIDCardOCRResponseAdvancedInfo;

.field public idInfo:Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResponse$AIIDCardOCRResponseIdInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
