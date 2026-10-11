.class public interface abstract Lcom/huawei/stylus/penengine/estimate/IHwStrokeEstimate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getEstimateEvent(Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/stylus/penengine/estimate/IHwRecycleQueue;",
            "Ljava/util/List<",
            "Lcom/huawei/stylus/penengine/estimate/HwMotionEventInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract isFeatureEnable()Z
.end method

.method public abstract setRefreshRate(F)V
.end method
