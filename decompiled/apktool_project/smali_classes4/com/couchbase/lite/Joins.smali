.class public final Lcom/couchbase/lite/Joins;
.super Lcom/couchbase/lite/BuilderQuery;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/WhereRouter;
.implements Lcom/couchbase/lite/OrderByRouter;
.implements Lcom/couchbase/lite/LimitRouter;


# instance fields
.field private final joins:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Join;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/BuilderQuery;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/BuilderQuery;
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
            "Lcom/couchbase/lite/BuilderQuery;",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Join;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/BuilderQuery;-><init>()V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/BuilderQuery;->copy(Lcom/couchbase/lite/BuilderQuery;)V

    iput-object p2, p0, Lcom/couchbase/lite/Joins;->joins:Ljava/util/List;

    invoke-virtual {p0, p0}, Lcom/couchbase/lite/BuilderQuery;->setJoins(Lcom/couchbase/lite/Joins;)V

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

    iget-object p0, p0, Lcom/couchbase/lite/Joins;->joins:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/Join;

    invoke-virtual {v1}, Lcom/couchbase/lite/Join;->asJSON()Ljava/lang/Object;

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

.method public bridge synthetic getParameters()Lcom/couchbase/lite/Parameters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractQuery;->getParameters()Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public limit(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/Joins;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    return-object p0
.end method

.method public limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "limit"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/couchbase/lite/Limit;

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/Limit;-><init>(Lcom/couchbase/lite/BuilderQuery;Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public varargs orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;
    .locals 1
    .param p1    # [Lcom/couchbase/lite/Ordering;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "orderings"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/OrderBy;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/OrderBy;-><init>(Lcom/couchbase/lite/BuilderQuery;Ljava/util/List;)V

    return-object v0
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

.method public where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Where;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Where;-><init>(Lcom/couchbase/lite/BuilderQuery;Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method
