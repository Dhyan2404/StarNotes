.class public Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration$Transition;
    }
.end annotation


# instance fields
.field public status:Ljava/lang/String;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "Status"
    .end annotation
.end field

.field public transition:Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration$Transition;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        name = "Transition"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration;->status:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration$Transition;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration$Transition;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration;->transition:Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration$Transition;

    .line 4
    iput p2, p1, Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration$Transition;->days:I

    const/4 p0, 0x1

    .line 5
    iput p0, p1, Lcom/tencent/cos/xml/model/tag/IntelligentTieringConfiguration$Transition;->requestFrequent:I

    return-void
.end method
