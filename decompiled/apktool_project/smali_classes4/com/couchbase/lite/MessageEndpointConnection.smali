.class public interface abstract Lcom/couchbase/lite/MessageEndpointConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close(Ljava/lang/Exception;Lcom/couchbase/lite/MessagingCloseCompletion;)V
    .param p1    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MessagingCloseCompletion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract open(Lcom/couchbase/lite/ReplicatorConnection;Lcom/couchbase/lite/MessagingCompletion;)V
    .param p1    # Lcom/couchbase/lite/ReplicatorConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MessagingCompletion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract send(Lcom/couchbase/lite/Message;Lcom/couchbase/lite/MessagingCompletion;)V
    .param p1    # Lcom/couchbase/lite/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MessagingCompletion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
