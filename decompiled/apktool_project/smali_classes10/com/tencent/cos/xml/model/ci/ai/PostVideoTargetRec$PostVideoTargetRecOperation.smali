.class public Lcom/tencent/cos/xml/model/ci/ai/PostVideoTargetRec$PostVideoTargetRecOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/PostVideoTargetRec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostVideoTargetRecOperation"
.end annotation


# instance fields
.field public jobLevel:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public userData:Ljava/lang/String;

.field public videoTargetRec:Lcom/tencent/cos/xml/model/ci/common/VideoTargetRec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
