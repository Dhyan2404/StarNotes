.class public Lcom/tencent/cos/xml/model/ci/common/NotifyConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->ALL:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "NotifyConfig"
.end annotation


# instance fields
.field public event:Ljava/lang/String;

.field public mqMode:Ljava/lang/String;

.field public mqName:Ljava/lang/String;

.field public mqRegion:Ljava/lang/String;

.field public resultFormat:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
