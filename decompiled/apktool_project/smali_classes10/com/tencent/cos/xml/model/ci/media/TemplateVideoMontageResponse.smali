.class public Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontageResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage;
    }
.end annotation


# instance fields
.field public bucketId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public videoMontage:Lcom/tencent/cos/xml/model/ci/media/TemplateVideoMontageResponse$TemplateVideoMontageResponseVideoMontage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
