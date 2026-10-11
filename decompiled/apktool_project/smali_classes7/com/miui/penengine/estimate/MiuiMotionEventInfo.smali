.class public Lcom/miui/penengine/estimate/MiuiMotionEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ORIENTATION:F = 0.7853982f

.field public static final DEFAULT_PRESSURE:F = 1.0f

.field public static final DEFAULT_TILT:F = 0.5f


# instance fields
.field private miuiMotionEvent:Lcom/miui/penengine/d/a;


# direct methods
.method public constructor <init>(FFJ)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;-><init>(FFJI)V

    return-void
.end method

.method public constructor <init>(FFJFFFIZ)V
    .locals 12

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/penengine/a/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/penengine/d/e;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/miui/penengine/d/e;-><init>(FFJFFFIZ)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/penengine/d/b;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/miui/penengine/d/b;-><init>(FFJFFFIZ)V

    :goto_0
    iput-object v1, v0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    return-void
.end method

.method public constructor <init>(FFJI)V
    .locals 10

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f490fdb

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v8, p5

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;-><init>(FFJFFFIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/penengine/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/penengine/d/e;

    invoke-direct {v0, p1}, Lcom/miui/penengine/d/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    :cond_0
    return-void
.end method

.method public static createByMotionEvent(Landroid/view/MotionEvent;)Lcom/miui/penengine/estimate/MiuiMotionEventInfo;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    if-eqz v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    :goto_1
    move v8, v0

    if-eqz v2, :cond_3

    const v0, 0x3f490fdb

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v0

    :goto_2
    move v10, v0

    if-eqz v2, :cond_4

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_4
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :goto_3
    move v9, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    new-instance p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    const/4 v12, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;-><init>(FFJFFFIZ)V

    return-object p0
.end method

.method public static createByMotionEvent(Landroid/view/MotionEvent;I)Lcom/miui/penengine/estimate/MiuiMotionEventInfo;
    .locals 11

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v1

    :goto_0
    move v6, v1

    if-eqz v0, :cond_3

    const v1, 0x3f490fdb

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getHistoricalOrientation(I)F

    move-result v1

    :goto_1
    move v8, v1

    if-eqz v0, :cond_4

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result p0

    :goto_2
    move v7, p0

    new-instance p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;

    const/4 v9, 0x2

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;-><init>(FFJFFFIZ)V

    return-object p0
.end method


# virtual methods
.method public distanceTo(Lcom/miui/penengine/estimate/MiuiMotionEventInfo;)F
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getY()F

    move-result p0

    invoke-static {v0, p1, v1, p0}, Lcom/miui/penengine/c/c;->a(FFFF)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getMiuiMotionEvent()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/miui/penengine/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMotionAction()I
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->g()I

    move-result p0

    return p0
.end method

.method public getOrientation()F
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->c()F

    move-result p0

    return p0
.end method

.method public getPressure()F
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->b()F

    move-result p0

    return p0
.end method

.method public getTilt()F
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->h()F

    move-result p0

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public getX()F
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->a()F

    move-result p0

    return p0
.end method

.method public getY()F
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->f()F

    move-result p0

    return p0
.end method

.method public isHistoryPoint()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->miuiMotionEvent:Lcom/miui/penengine/d/a;

    invoke-interface {p0}, Lcom/miui/penengine/d/a;->d()Z

    move-result p0

    return p0
.end method

.method public timeDifferenceTo(Lcom/miui/penengine/estimate/MiuiMotionEventInfo;)F
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    long-to-float p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getTilt()F

    move-result v4

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getPressure()F

    move-result v5

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->getMotionAction()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/penengine/estimate/MiuiMotionEventInfo;->isHistoryPoint()Z

    move-result p0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MiuiMotionEventInfo{x="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", pressure="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", tilt="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", motionAction="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", historyPoint="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
