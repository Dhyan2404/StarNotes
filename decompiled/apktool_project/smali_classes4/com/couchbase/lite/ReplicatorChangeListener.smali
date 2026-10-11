.class public interface abstract Lcom/couchbase/lite/ReplicatorChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/ChangeListener<",
        "Lcom/couchbase/lite/ReplicatorChange;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract changed(Lcom/couchbase/lite/ReplicatorChange;)V
    .param p1    # Lcom/couchbase/lite/ReplicatorChange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public bridge synthetic changed(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/couchbase/lite/ReplicatorChange;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/ReplicatorChangeListener;->changed(Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method
