.class public Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    invoke-direct {v0, p1}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    return-void
.end method

.method public getCurveType()I
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->getCurveType()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->getPath()Landroid/graphics/Path;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPathFromString(Ljava/lang/String;F)Landroid/graphics/Path;
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-nez p0, :cond_1

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->getFormedShapePathFromString(Ljava/lang/String;F)Landroid/graphics/Path;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->getFormedShapeStringResult()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public notifyViewSizeChange(II)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->notifyViewSizeChange(II)V

    return-void
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->processFormingEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setStopTime(I)V
    .locals 0

    iget-object p0, p0, Lcom/huawei/stylus/penengine/instantshape/InstantShapeGenerator;->a:Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/penkit/impl/manager/forming/OpenFormingManager;->setStopTime(I)V

    return-void
.end method
