.class public Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hihonor/android/magicx/app/penengine/estimate/IHnStrokeEstimate;
.implements Lcom/hihonor/stylus/penengine/feature/IFeature;


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:I = -0x1


# instance fields
.field public a:Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;

    invoke-direct {v0}, Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;-><init>()V

    iput-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;)Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;
    .locals 7

    new-instance p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;

    invoke-virtual {p1}, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;->getPress()F

    move-result v3

    invoke-virtual {p1}, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;->getTilt()F

    move-result v4

    invoke-virtual {p1}, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;-><init>(FFFFJ)V

    return-object p0
.end method

.method public getEstimateEvent(Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;",
            "Ljava/util/List<",
            "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;

    if-nez v1, :cond_1

    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->b:Ljava/lang/String;

    const-string p1, "HnStrokeEstimate, getEstimateEvent error, sEstimate is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    instance-of v0, p1, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;

    invoke-virtual {p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->getRecycleQueue()Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;

    invoke-virtual {v1, p1, v0}, Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;->getEstimateEvent(Lcom/hihonor/stylus/penengine/estimate/IHnRecycleQueue;Ljava/util/List;)I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->a(Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;)Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return p1

    :cond_5
    :goto_2
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->b:Ljava/lang/String;

    const-string p1, "HnStrokeEstimate, getEstimateEvent error, queue or lstEstimate is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isFeatureEnable()Z
    .locals 1

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;->isFeatureEnable()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->b:Ljava/lang/String;

    const-string v0, "HnStrokeEstimate, isFeatureEnable error, sEstimate is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setRefreshRate(F)V
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hihonor/penkit/impl/estimate/HnStrokeEstimateImpl;->setRefreshRate(F)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnStrokeEstimateImpl;->b:Ljava/lang/String;

    const-string p1, "HnStrokeEstimate, setRefreshRate error, sEstimate is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
