.class public Lcom/tencent/cos/xml/model/ci/ai/RecognitionQRcodeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/ai/RecognitionQRcodeResponse$RecognitionQRcodeResponseCodeLocation;,
        Lcom/tencent/cos/xml/model/ci/ai/RecognitionQRcodeResponse$RecognitionQRcodeResponseQRcodeInfo;
    }
.end annotation


# instance fields
.field public codeStatus:I

.field public qRcodeInfo:Lcom/tencent/cos/xml/model/ci/ai/RecognitionQRcodeResponse$RecognitionQRcodeResponseQRcodeInfo;

.field public resultImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
