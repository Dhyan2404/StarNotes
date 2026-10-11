.class public interface abstract Lcom/couchbase/lite/ReplicatorConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close(Lcom/couchbase/lite/MessagingError;)V
.end method

.method public abstract receive(Lcom/couchbase/lite/Message;)V
    .param p1    # Lcom/couchbase/lite/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
