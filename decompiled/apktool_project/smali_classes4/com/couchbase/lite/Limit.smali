.class public Lcom/couchbase/lite/Limit;
.super Lcom/couchbase/lite/BuilderQuery;
.source "SourceFile"


# instance fields
.field private final limit:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final offset:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/BuilderQuery;Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/BuilderQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/BuilderQuery;-><init>()V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/BuilderQuery;->copy(Lcom/couchbase/lite/BuilderQuery;)V

    iput-object p2, p0, Lcom/couchbase/lite/Limit;->limit:Lcom/couchbase/lite/Expression;

    iput-object p3, p0, Lcom/couchbase/lite/Limit;->offset:Lcom/couchbase/lite/Expression;

    invoke-virtual {p0, p0}, Lcom/couchbase/lite/BuilderQuery;->setLimit(Lcom/couchbase/lite/Limit;)V

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

    iget-object v1, p0, Lcom/couchbase/lite/Limit;->limit:Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/couchbase/lite/Limit;->offset:Lcom/couchbase/lite/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method public bridge synthetic getParameters()Lcom/couchbase/lite/Parameters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractQuery;->getParameters()Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
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
