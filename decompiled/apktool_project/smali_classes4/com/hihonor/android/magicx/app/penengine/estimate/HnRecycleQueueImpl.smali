.class public Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;
.implements Lcom/hihonor/stylus/penengine/feature/IFeature;


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:I = -0x1


# instance fields
.field public a:Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;

    invoke-direct {v0}, Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;-><init>()V

    iput-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;)Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;
    .locals 7

    new-instance p0, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;

    invoke-virtual {p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;->getPress()F

    move-result v3

    invoke-virtual {p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;->getTilt()F

    move-result v4

    invoke-virtual {p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;-><init>(FFFFJ)V

    return-object p0
.end method

.method public clear()V
    .locals 1

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;->clear()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->b:Ljava/lang/String;

    const-string v0, "HnMotionEventQueue, clear error, mRecycleQueue is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public fill(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->a(Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;)Lcom/hihonor/stylus/penengine/estimate/HnMotionEventInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;->fill(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->b:Ljava/lang/String;

    const-string p1, "HnMotionEventQueue, fill error, mRecycleQueue is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getRecycleQueue()Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;->a:Lcom/hihonor/penkit/impl/estimate/HnRecycleQueueImpl;

    return-object p0
.end method
