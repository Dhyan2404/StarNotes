.class public Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$Labels;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Labels"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Labels"
.end annotation


# instance fields
.field public audio:Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;

.field public image:Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;

.field public text:Lcom/tencent/cos/xml/model/ci/audit/CreateStrategy$LabelInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
