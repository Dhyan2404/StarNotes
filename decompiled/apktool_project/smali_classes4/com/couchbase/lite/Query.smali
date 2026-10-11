.class public interface abstract Lcom/couchbase/lite/Query;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addChangeListener(Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .param p1    # Lcom/couchbase/lite/QueryChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/QueryChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract execute()Lcom/couchbase/lite/ResultSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation
.end method

.method public abstract explain()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation
.end method

.method public abstract getParameters()Lcom/couchbase/lite/Parameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setParameters(Lcom/couchbase/lite/Parameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation
.end method
