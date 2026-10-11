.class public interface abstract Lcom/couchbase/lite/internal/core/C4CollectionObserver$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4CollectionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nCreate(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nFree(J)V
.end method

.method public abstract nGetChanges(JI)[Lcom/couchbase/lite/internal/core/C4DocumentChange;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
