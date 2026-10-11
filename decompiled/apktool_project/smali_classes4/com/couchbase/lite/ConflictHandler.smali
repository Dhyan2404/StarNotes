.class public interface abstract Lcom/couchbase/lite/ConflictHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract handle(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/Document;)Z
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
