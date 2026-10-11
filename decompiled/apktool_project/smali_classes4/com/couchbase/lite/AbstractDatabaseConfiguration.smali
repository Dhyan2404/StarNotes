.class abstract Lcom/couchbase/lite/AbstractDatabaseConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dbDirectory:Ljava/lang/String;

.field private fullSync:Z

.field private mmapEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/AbstractDatabaseConfiguration;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/AbstractDatabaseConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->isFullSync()Z

    move-result v1

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->isMMapEnabled()Z

    move-result p1

    .line 5
    :goto_2
    invoke-direct {p0, v0, v1, p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->isFullSync()Z

    move-result v1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->isMMapEnabled()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot create database configuration"

    .line 8
    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getDefaultDbDirPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->dbDirectory:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->fullSync:Z

    .line 11
    iput-boolean p3, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->mmapEnabled:Z

    return-void
.end method


# virtual methods
.method public abstract getDatabaseConfiguration()Lcom/couchbase/lite/DatabaseConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->dbDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public isFullSync()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->fullSync:Z

    return p0
.end method

.method public isMMapEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->mmapEnabled:Z

    return p0
.end method

.method public setDirectory(Ljava/lang/String;)Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "directory"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/couchbase/lite/internal/utils/FileUtils;->verifyDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->dbDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->getDatabaseConfiguration()Lcom/couchbase/lite/DatabaseConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public setFullSync(Z)Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->fullSync:Z

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->getDatabaseConfiguration()Lcom/couchbase/lite/DatabaseConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public setMMapEnabled(Z)Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->mmapEnabled:Z

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabaseConfiguration;->getDatabaseConfiguration()Lcom/couchbase/lite/DatabaseConfiguration;

    move-result-object p0

    return-object p0
.end method
