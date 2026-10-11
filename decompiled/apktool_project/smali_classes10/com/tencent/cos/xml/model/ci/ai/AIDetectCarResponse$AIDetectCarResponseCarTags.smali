.class public Lcom/tencent/cos/xml/model/ci/ai/AIDetectCarResponse$AIDetectCarResponseCarTags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "CarTags"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/AIDetectCarResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AIDetectCarResponseCarTags"
.end annotation


# instance fields
.field public brand:Ljava/lang/String;

.field public carLocation:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
        ignoreListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/ai/AIDetectCarResponse$AIDetectCarResponseCarLocation;",
            ">;"
        }
    .end annotation
.end field

.field public color:Ljava/lang/String;

.field public confidence:I

.field public plateContent:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
        ignoreListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/ai/AIDetectCarResponse$AIDetectCarResponsePlateContent;",
            ">;"
        }
    .end annotation
.end field

.field public serial:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
