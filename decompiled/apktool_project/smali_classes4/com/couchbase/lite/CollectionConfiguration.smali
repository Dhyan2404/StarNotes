.class public Lcom/couchbase/lite/CollectionConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channels:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conflictResolver:Lcom/couchbase/lite/ConflictResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private documentIDs:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pullFilter:Lcom/couchbase/lite/ReplicationFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pushFilter:Lcom/couchbase/lite/ReplicationFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/CollectionConfiguration;)V
    .locals 6
    .param p1    # Lcom/couchbase/lite/CollectionConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v1, p1, Lcom/couchbase/lite/CollectionConfiguration;->channels:Ljava/util/List;

    iget-object v2, p1, Lcom/couchbase/lite/CollectionConfiguration;->documentIDs:Ljava/util/List;

    iget-object v3, p1, Lcom/couchbase/lite/CollectionConfiguration;->pullFilter:Lcom/couchbase/lite/ReplicationFilter;

    iget-object v4, p1, Lcom/couchbase/lite/CollectionConfiguration;->pushFilter:Lcom/couchbase/lite/ReplicationFilter;

    iget-object v5, p1, Lcom/couchbase/lite/CollectionConfiguration;->conflictResolver:Lcom/couchbase/lite/ConflictResolver;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CollectionConfiguration;-><init>(Ljava/util/List;Ljava/util/List;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ConflictResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ConflictResolver;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/couchbase/lite/ReplicationFilter;",
            "Lcom/couchbase/lite/ReplicationFilter;",
            "Lcom/couchbase/lite/ConflictResolver;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/couchbase/lite/CollectionConfiguration;->channels:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/couchbase/lite/CollectionConfiguration;->documentIDs:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/couchbase/lite/CollectionConfiguration;->pullFilter:Lcom/couchbase/lite/ReplicationFilter;

    .line 6
    iput-object p4, p0, Lcom/couchbase/lite/CollectionConfiguration;->pushFilter:Lcom/couchbase/lite/ReplicationFilter;

    .line 7
    iput-object p5, p0, Lcom/couchbase/lite/CollectionConfiguration;->conflictResolver:Lcom/couchbase/lite/ConflictResolver;

    return-void
.end method


# virtual methods
.method public final getChannels()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/CollectionConfiguration;->channels:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/couchbase/lite/CollectionConfiguration;->channels:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getConflictResolver()Lcom/couchbase/lite/ConflictResolver;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/CollectionConfiguration;->conflictResolver:Lcom/couchbase/lite/ConflictResolver;

    return-object p0
.end method

.method public final getDocumentIDs()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/CollectionConfiguration;->documentIDs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/couchbase/lite/CollectionConfiguration;->documentIDs:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getPullFilter()Lcom/couchbase/lite/ReplicationFilter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/CollectionConfiguration;->pullFilter:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public getPushFilter()Lcom/couchbase/lite/ReplicationFilter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/CollectionConfiguration;->pushFilter:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public final setChannels(Ljava/util/List;)Lcom/couchbase/lite/CollectionConfiguration;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/couchbase/lite/CollectionConfiguration;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/CollectionConfiguration;->channels:Ljava/util/List;

    return-object p0
.end method

.method public final setConflictResolver(Lcom/couchbase/lite/ConflictResolver;)Lcom/couchbase/lite/CollectionConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/CollectionConfiguration;->conflictResolver:Lcom/couchbase/lite/ConflictResolver;

    return-object p0
.end method

.method public final setDocumentIDs(Ljava/util/List;)Lcom/couchbase/lite/CollectionConfiguration;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/couchbase/lite/CollectionConfiguration;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/CollectionConfiguration;->documentIDs:Ljava/util/List;

    return-object p0
.end method

.method public final setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/CollectionConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/CollectionConfiguration;->pullFilter:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public final setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/CollectionConfiguration;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/CollectionConfiguration;->pushFilter:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectionConfiguration{("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/CollectionConfiguration;->pullFilter:Lcom/couchbase/lite/ReplicationFilter;

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "<"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/CollectionConfiguration;->conflictResolver:Lcom/couchbase/lite/ConflictResolver;

    if-eqz v1, :cond_1

    const-string v1, "!"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/CollectionConfiguration;->pushFilter:Lcom/couchbase/lite/ReplicationFilter;

    if-eqz v1, :cond_2

    const-string v2, ">"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/CollectionConfiguration;->channels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/CollectionConfiguration;->documentIDs:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
