.class public Lcom/tencent/cos/xml/model/ci/common/EffectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->ALL:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "EffectConfig"
.end annotation


# instance fields
.field public bgmFadeTime:Ljava/lang/String;

.field public enableBgmFade:Ljava/lang/String;

.field public enableEndFadeout:Ljava/lang/String;

.field public enableStartFadein:Ljava/lang/String;

.field public endFadeoutTime:Ljava/lang/String;

.field public startFadeinTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
