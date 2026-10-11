.class public Lcom/sunia/commonv2/bean/HWEPointV3$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/HWEPointV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field private eventType:Ljava/lang/String;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/HWEPointV3$Point;->isDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/HWEPointV3$Point;->isUp()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public getX()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV3$Point;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWEPointV3$Point;->y:F

    return p0
.end method

.method public isDown()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/bean/HWEPointV3$Point;->eventType:Ljava/lang/String;

    const-string v0, "DOWN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isMove()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/bean/HWEPointV3$Point;->eventType:Ljava/lang/String;

    const-string v0, "MOVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUp()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/commonv2/bean/HWEPointV3$Point;->eventType:Ljava/lang/String;

    const-string v0, "UP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
