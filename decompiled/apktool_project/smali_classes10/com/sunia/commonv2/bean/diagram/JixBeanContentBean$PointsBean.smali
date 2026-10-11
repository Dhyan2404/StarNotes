.class public Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointsBean"
.end annotation


# instance fields
.field private t:I

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getT()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;->t:I

    return p0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;->y:D

    return-wide v0
.end method

.method public setT(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;->t:I

    return-void
.end method

.method public setX(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;->x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/diagram/JixBeanContentBean$PointsBean;->y:D

    return-void
.end method
