.class public Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;,
        Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$LinesBean;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;",
            ">;"
        }
    .end annotation
.end field

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$LinesBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->elements:Ljava/util/List;

    return-object p0
.end method

.method public getLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$LinesBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->lines:Ljava/util/List;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->elements:Ljava/util/List;

    return-void
.end method

.method public setLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$LinesBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->lines:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;->version:Ljava/lang/String;

    return-void
.end method
