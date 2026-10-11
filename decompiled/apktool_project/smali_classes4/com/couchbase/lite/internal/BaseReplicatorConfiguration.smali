.class public Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final collectionConfigurations:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final internalCollectionConfigurations:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->internalCollectionConfigurations:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCollectionInternal(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->internalCollectionConfigurations:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getCollectionConfigurations()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->collectionConfigurations:Ljava/util/Map;

    return-object p0
.end method

.method public removeCollectionInternal(Lcom/couchbase/lite/Collection;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;->internalCollectionConfigurations:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
