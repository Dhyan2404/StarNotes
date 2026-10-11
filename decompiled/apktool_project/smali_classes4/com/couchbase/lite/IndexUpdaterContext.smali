.class public Lcom/couchbase/lite/IndexUpdaterContext;
.super Lcom/couchbase/lite/internal/DbContext;
.source "SourceFile"


# instance fields
.field private final updater:Lcom/couchbase/lite/IndexUpdaterImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/IndexUpdaterImpl;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/IndexUpdaterImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/DbContext;-><init>(Lcom/couchbase/lite/BaseDatabase;)V

    iput-object p2, p0, Lcom/couchbase/lite/IndexUpdaterContext;->updater:Lcom/couchbase/lite/IndexUpdaterImpl;

    return-void
.end method


# virtual methods
.method public getDbLock()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/DbContext;->getDatabase()Lcom/couchbase/lite/BaseDatabase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Database is null"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/IndexUpdaterContext;->updater:Lcom/couchbase/lite/IndexUpdaterImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexUpdaterImpl;->isClosed()Z

    move-result p0

    return p0
.end method
