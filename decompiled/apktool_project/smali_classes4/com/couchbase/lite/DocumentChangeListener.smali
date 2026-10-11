.class public interface abstract Lcom/couchbase/lite/DocumentChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/ChangeListener<",
        "Lcom/couchbase/lite/DocumentChange;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract changed(Lcom/couchbase/lite/DocumentChange;)V
    .param p1    # Lcom/couchbase/lite/DocumentChange;
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
    check-cast p1, Lcom/couchbase/lite/DocumentChange;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/DocumentChangeListener;->changed(Lcom/couchbase/lite/DocumentChange;)V

    return-void
.end method
