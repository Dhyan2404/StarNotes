.class public final Lcom/couchbase/lite/QueryChange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final error:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final query:Lcom/couchbase/lite/Query;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rs:Lcom/couchbase/lite/ResultSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Query;Lcom/couchbase/lite/ResultSet;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Query;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ResultSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/QueryChange;->query:Lcom/couchbase/lite/Query;

    iput-object p2, p0, Lcom/couchbase/lite/QueryChange;->rs:Lcom/couchbase/lite/ResultSet;

    iput-object p3, p0, Lcom/couchbase/lite/QueryChange;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/QueryChange;->error:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getQuery()Lcom/couchbase/lite/Query;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/QueryChange;->query:Lcom/couchbase/lite/Query;

    return-object p0
.end method

.method public getResults()Lcom/couchbase/lite/ResultSet;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/QueryChange;->rs:Lcom/couchbase/lite/ResultSet;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryChange{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/QueryChange;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/QueryChange;->query:Lcom/couchbase/lite/Query;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/QueryChange;->rs:Lcom/couchbase/lite/ResultSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
