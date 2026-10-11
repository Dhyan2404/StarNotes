.class public interface abstract Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCookies(Ljava/net/URI;)Ljava/lang/String;
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setCookies(Ljava/net/URI;Ljava/util/List;Z)V
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method
