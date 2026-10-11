.class public Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResponse$AIIDCardOCRResponseIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "IdInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/AIIDCardOCRResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AIIDCardOCRResponseIdInfo"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public authority:Ljava/lang/String;

.field public birth:Ljava/lang/String;

.field public idNum:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nation:Ljava/lang/String;

.field public sex:Ljava/lang/String;

.field public validDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
