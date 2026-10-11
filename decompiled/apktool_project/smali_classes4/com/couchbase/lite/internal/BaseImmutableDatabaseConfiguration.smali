.class public Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dbDir:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final fullSync:Z

.field private final mmapEnabled:Z


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/DatabaseConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/DatabaseConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/DatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getDefaultDbDirPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->dbDir:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/couchbase/lite/DatabaseConfiguration;->isFullSync()Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->fullSync:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/DatabaseConfiguration;->isMMapEnabled()Z

    move-result p1

    :goto_3
    iput-boolean p1, p0, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->mmapEnabled:Z

    return-void
.end method


# virtual methods
.method public final getDirectory()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->dbDir:Ljava/lang/String;

    return-object p0
.end method

.method public final isFullSync()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->fullSync:Z

    return p0
.end method

.method public final isMMapEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->mmapEnabled:Z

    return p0
.end method
