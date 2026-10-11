.class public Lcom/couchbase/lite/ResultContext;
.super Lcom/couchbase/lite/internal/DbContext;
.source "SourceFile"


# instance fields
.field private final rs:Lcom/couchbase/lite/ResultSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/AbstractDatabase;Lcom/couchbase/lite/ResultSet;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/AbstractDatabase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ResultSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/DbContext;-><init>(Lcom/couchbase/lite/BaseDatabase;)V

    iput-object p2, p0, Lcom/couchbase/lite/ResultContext;->rs:Lcom/couchbase/lite/ResultSet;

    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/couchbase/lite/AbstractDatabase;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/couchbase/lite/internal/DbContext;->getDatabase()Lcom/couchbase/lite/BaseDatabase;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/AbstractDatabase;

    return-object p0
.end method

.method public bridge synthetic getDatabase()Lcom/couchbase/lite/BaseDatabase;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/couchbase/lite/ResultContext;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getResultSet()Lcom/couchbase/lite/ResultSet;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ResultContext;->rs:Lcom/couchbase/lite/ResultSet;

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/ResultContext;->rs:Lcom/couchbase/lite/ResultSet;

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->isClosed()Z

    move-result p0

    return p0
.end method
