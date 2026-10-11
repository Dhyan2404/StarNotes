.class public Lcom/tencent/cos/xml/model/tag/RefererConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;,
        Lcom/tencent/cos/xml/model/tag/RefererConfiguration$Domain;
    }
.end annotation


# instance fields
.field public domainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/RefererConfiguration$Domain;",
            ">;"
        }
    .end annotation
.end field

.field public emptyReferConfiguration:Ljava/lang/String;

.field public refererType:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowEmptyRefer()Z
    .locals 1

    const-string v0, "Allow"

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->emptyReferConfiguration:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getEnabled()Z
    .locals 1

    const-string v0, "Enabled"

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->status:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getRefererType()Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->refererType:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->fromString(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;

    move-result-object p0

    return-object p0
.end method

.method public setAllowEmptyRefer(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Allow"

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->emptyReferConfiguration:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Deny"

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->emptyReferConfiguration:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Enabled"

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->status:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Disabled"

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->status:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setRefererType(Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/RefererConfiguration$RefererType;->getTypeStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/RefererConfiguration;->refererType:Ljava/lang/String;

    return-void
.end method
