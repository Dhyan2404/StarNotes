.class public final Lcom/couchbase/lite/Select;
.super Lcom/couchbase/lite/BuilderQuery;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/FromRouter;


# instance fields
.field private final distinct:Z

.field private final selectResults:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/SelectResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Z[Lcom/couchbase/lite/SelectResult;)V
    .locals 0
    .param p2    # [Lcom/couchbase/lite/SelectResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/BuilderQuery;-><init>()V

    iput-boolean p1, p0, Lcom/couchbase/lite/Select;->distinct:Z

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/Select;->selectResults:Ljava/util/List;

    invoke-virtual {p0, p0}, Lcom/couchbase/lite/BuilderQuery;->setSelect(Lcom/couchbase/lite/Select;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addChangeListener(Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Lcom/couchbase/lite/QueryChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->addChangeListener(Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/QueryChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractQuery;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public asJSON()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/couchbase/lite/Select;->selectResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/SelectResult;

    invoke-virtual {v1}, Lcom/couchbase/lite/SelectResult;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic execute()Lcom/couchbase/lite/ResultSet;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractQuery;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic explain()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractQuery;->explain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;
    .locals 1
    .param p1    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/From;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/From;-><init>(Lcom/couchbase/lite/BuilderQuery;Lcom/couchbase/lite/DataSource;)V

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/couchbase/lite/Parameters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractQuery;->getParameters()Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public getSelectResults()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/SelectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Select;->selectResults:Ljava/util/List;

    return-object p0
.end method

.method public hasSelectResults()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Select;->selectResults:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isDistinct()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/Select;->distinct:Z

    return p0
.end method

.method public bridge synthetic removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method

.method public bridge synthetic setParameters(Lcom/couchbase/lite/Parameters;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Parameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->setParameters(Lcom/couchbase/lite/Parameters;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/BuilderQuery;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
