.class public interface abstract Lcom/couchbase/lite/ReplicationFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract filtered(Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Document;",
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/DocumentFlag;",
            ">;)Z"
        }
    .end annotation
.end method
