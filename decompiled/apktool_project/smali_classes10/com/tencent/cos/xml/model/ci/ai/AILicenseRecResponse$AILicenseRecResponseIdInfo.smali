.class public Lcom/tencent/cos/xml/model/ci/ai/AILicenseRecResponse$AILicenseRecResponseIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "IdInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/AILicenseRecResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AILicenseRecResponseIdInfo"
.end annotation


# instance fields
.field public detectedText:Ljava/lang/String;

.field public location:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
        ignoreListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/ai/AILicenseRecResponse$AILicenseRecResponseLocation;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
