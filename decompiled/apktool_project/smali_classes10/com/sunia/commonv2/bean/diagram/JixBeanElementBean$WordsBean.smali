.class public Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordsBean"
.end annotation


# instance fields
.field private boundingbox:Lcom/sunia/commonv2/bean/BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounding-box"
    .end annotation
.end field

.field private candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundingbox()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;->boundingbox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;->candidates:Ljava/util/List;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;->label:Ljava/lang/String;

    return-object p0
.end method

.method public setBoundingbox(Lcom/sunia/commonv2/bean/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;->boundingbox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-void
.end method

.method public setCandidates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;->candidates:Ljava/util/List;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;->label:Ljava/lang/String;

    return-void
.end method
