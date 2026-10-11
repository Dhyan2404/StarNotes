.class public interface abstract Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Replicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract statusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
