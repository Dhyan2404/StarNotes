.class public Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private boundingbox:Lcom/sunia/commonv2/bean/BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounding-box"
    .end annotation
.end field

.field private cx:D

.field private cy:D

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean;",
            ">;"
        }
    .end annotation
.end field

.field private endDecoration:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private kind:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private phi:D

.field private reco:Ljava/lang/String;

.field private rotateAngle:D

.field private rx:D

.field private ry:D

.field private startAngle:D

.field private startDecoration:Ljava/lang/String;

.field private sweepAngle:D

.field private type:Ljava/lang/String;

.field private words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;",
            ">;"
        }
    .end annotation
.end field

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->endDecoration:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->startDecoration:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoundingbox()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->boundingbox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method

.method public getCx()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->cx:D

    return-wide v0
.end method

.method public getCy()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->cy:D

    return-wide v0
.end method

.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->elements:Ljava/util/List;

    return-object p0
.end method

.method public getEndDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->endDecoration:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getPhi()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->phi:D

    return-wide v0
.end method

.method public getReco()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->reco:Ljava/lang/String;

    return-object p0
.end method

.method public getRotateAngle()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->rotateAngle:D

    return-wide v0
.end method

.method public getRx()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->rx:D

    return-wide v0
.end method

.method public getRy()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->ry:D

    return-wide v0
.end method

.method public getStartAngle()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->startAngle:D

    return-wide v0
.end method

.method public getStartDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->startDecoration:Ljava/lang/String;

    return-object p0
.end method

.method public getSweepAngle()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->sweepAngle:D

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getWords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->words:Ljava/util/List;

    return-object p0
.end method

.method public getX1()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->x1:F

    return p0
.end method

.method public getX2()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->x2:F

    return p0
.end method

.method public getY1()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->y1:F

    return p0
.end method

.method public getY2()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->y2:F

    return p0
.end method

.method public setBoundingbox(Lcom/sunia/commonv2/bean/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->boundingbox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-void
.end method

.method public setCx(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->cx:D

    return-void
.end method

.method public setCy(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->cy:D

    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->elements:Ljava/util/List;

    return-void
.end method

.method public setEndDecoration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->endDecoration:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->id:Ljava/lang/String;

    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->kind:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->label:Ljava/lang/String;

    return-void
.end method

.method public setPhi(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->phi:D

    return-void
.end method

.method public setReco(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->reco:Ljava/lang/String;

    return-void
.end method

.method public setRotateAngle(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->rotateAngle:D

    return-void
.end method

.method public setRx(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->rx:D

    return-void
.end method

.method public setRy(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->ry:D

    return-void
.end method

.method public setStartAngle(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->startAngle:D

    return-void
.end method

.method public setStartDecoration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->startDecoration:Ljava/lang/String;

    return-void
.end method

.method public setSweepAngle(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->sweepAngle:D

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->type:Ljava/lang/String;

    return-void
.end method

.method public setWords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$WordsBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->words:Ljava/util/List;

    return-void
.end method

.method public setX1(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->x1:F

    return-void
.end method

.method public setX2(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->x2:F

    return-void
.end method

.method public setY1(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->y1:F

    return-void
.end method

.method public setY2(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanElementBean$Item;->y2:F

    return-void
.end method
