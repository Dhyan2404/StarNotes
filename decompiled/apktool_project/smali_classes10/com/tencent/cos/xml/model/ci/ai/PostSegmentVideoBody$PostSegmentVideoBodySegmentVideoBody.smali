.class public Lcom/tencent/cos/xml/model/ci/ai/PostSegmentVideoBody$PostSegmentVideoBodySegmentVideoBody;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->ALL:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "SegmentVideoBody"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/PostSegmentVideoBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostSegmentVideoBodySegmentVideoBody"
.end annotation


# instance fields
.field public backgroundBlue:Ljava/lang/String;

.field public backgroundGreen:Ljava/lang/String;

.field public backgroundLogoUrl:Ljava/lang/String;

.field public backgroundRed:Ljava/lang/String;

.field public binaryThreshold:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public removeBlue:Ljava/lang/String;

.field public removeGreen:Ljava/lang/String;

.field public removeRed:Ljava/lang/String;

.field public segmentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
