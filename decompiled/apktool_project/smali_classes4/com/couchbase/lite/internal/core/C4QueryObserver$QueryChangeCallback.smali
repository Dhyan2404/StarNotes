.class public interface abstract Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4QueryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryChangeCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onQueryChanged(Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V
    .param p1    # Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LiteCoreException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
