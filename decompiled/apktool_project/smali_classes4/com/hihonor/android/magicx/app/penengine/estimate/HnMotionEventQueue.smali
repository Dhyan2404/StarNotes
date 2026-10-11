.class public final Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:I = -0x1


# instance fields
.field public a:Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenKit-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;

    invoke-direct {v0}, Lcom/hihonor/android/magicx/app/penengine/estimate/HnRecycleQueueImpl;-><init>()V

    iput-object v0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;->clear()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->b:Ljava/lang/String;

    const-string v0, "HnMotionEventQueue, clear error, mRecycleQueue is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public fill(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventInfo;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;->fill(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->b:Ljava/lang/String;

    const-string p1, "HnMotionEventQueue, fill error, mRecycleQueue is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getQueue()Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;
    .locals 0

    iget-object p0, p0, Lcom/hihonor/android/magicx/app/penengine/estimate/HnMotionEventQueue;->a:Lcom/hihonor/android/magicx/app/penengine/estimate/IHnRecycleQueue;

    return-object p0
.end method
