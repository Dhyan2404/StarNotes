.class public Lcom/tencent/cos/xml/model/tag/Tagging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/Tagging$Tag;,
        Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;
    }
.end annotation


# instance fields
.field public tagSet:Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/Tagging;->tagSet:Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/xml/model/tag/Tagging;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/cos/xml/model/tag/Tagging;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/Tagging;->tagSet:Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;

    iget-object p1, p1, Lcom/tencent/cos/xml/model/tag/Tagging;->tagSet:Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/tag/Tagging$TagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
