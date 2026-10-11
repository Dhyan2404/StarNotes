.class public interface abstract Lcom/couchbase/lite/QueryChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/ChangeListener<",
        "Lcom/couchbase/lite/QueryChange;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract changed(Lcom/couchbase/lite/QueryChange;)V
    .param p1    # Lcom/couchbase/lite/QueryChange;
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
    check-cast p1, Lcom/couchbase/lite/QueryChange;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/QueryChangeListener;->changed(Lcom/couchbase/lite/QueryChange;)V

    return-void
.end method
