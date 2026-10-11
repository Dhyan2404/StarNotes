.class abstract Lcom/couchbase/lite/BuilderQuery;
.super Lcom/couchbase/lite/AbstractQuery;
.source "SourceFile"


# instance fields
.field private from:Lcom/couchbase/lite/DataSource;

.field private groupBy:Lcom/couchbase/lite/GroupBy;

.field private having:Lcom/couchbase/lite/Having;

.field private joins:Lcom/couchbase/lite/Joins;

.field private limit:Lcom/couchbase/lite/Limit;

.field private orderBy:Lcom/couchbase/lite/OrderBy;

.field private select:Lcom/couchbase/lite/Select;

.field private where:Lcom/couchbase/lite/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;-><init>()V

    return-void
.end method

.method private marshalAsJSON()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/BuilderQuery;->select:Lcom/couchbase/lite/Select;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/couchbase/lite/Select;->isDistinct()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DISTINCT"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/BuilderQuery;->select:Lcom/couchbase/lite/Select;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/couchbase/lite/Select;->hasSelectResults()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/couchbase/lite/BuilderQuery;->select:Lcom/couchbase/lite/Select;

    invoke-virtual {v1}, Lcom/couchbase/lite/Select;->asJSON()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "WHAT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/couchbase/lite/BuilderQuery;->from:Lcom/couchbase/lite/DataSource;

    invoke-virtual {v2}, Lcom/couchbase/lite/DataSource;->asJSON()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/couchbase/lite/BuilderQuery;->joins:Lcom/couchbase/lite/Joins;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/couchbase/lite/Joins;->asJSON()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "FROM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/couchbase/lite/BuilderQuery;->where:Lcom/couchbase/lite/Expression;

    if-eqz v1, :cond_5

    const-string v2, "WHERE"

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/couchbase/lite/BuilderQuery;->groupBy:Lcom/couchbase/lite/GroupBy;

    if-eqz v1, :cond_6

    const-string v2, "GROUP_BY"

    invoke-virtual {v1}, Lcom/couchbase/lite/GroupBy;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/couchbase/lite/BuilderQuery;->having:Lcom/couchbase/lite/Having;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/couchbase/lite/Having;->asJSON()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "HAVING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/couchbase/lite/BuilderQuery;->orderBy:Lcom/couchbase/lite/OrderBy;

    if-eqz v1, :cond_8

    const-string v2, "ORDER_BY"

    invoke-virtual {v1}, Lcom/couchbase/lite/OrderBy;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p0, p0, Lcom/couchbase/lite/BuilderQuery;->limit:Lcom/couchbase/lite/Limit;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/couchbase/lite/Limit;->asJSON()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "LIMIT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    const-string v1, "OFFSET"

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {v0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private marshalAsJSONSafely()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/BuilderQuery;->marshalAsJSON()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Failed marshalling query as JSON query"

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copy(Lcom/couchbase/lite/BuilderQuery;)V
    .locals 1

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->select:Lcom/couchbase/lite/Select;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->select:Lcom/couchbase/lite/Select;

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->from:Lcom/couchbase/lite/DataSource;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->from:Lcom/couchbase/lite/DataSource;

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->joins:Lcom/couchbase/lite/Joins;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->joins:Lcom/couchbase/lite/Joins;

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->where:Lcom/couchbase/lite/Expression;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->where:Lcom/couchbase/lite/Expression;

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->groupBy:Lcom/couchbase/lite/GroupBy;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->groupBy:Lcom/couchbase/lite/GroupBy;

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->having:Lcom/couchbase/lite/Having;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->having:Lcom/couchbase/lite/Having;

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->orderBy:Lcom/couchbase/lite/OrderBy;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->orderBy:Lcom/couchbase/lite/OrderBy;

    iget-object v0, p1, Lcom/couchbase/lite/BuilderQuery;->limit:Lcom/couchbase/lite/Limit;

    iput-object v0, p0, Lcom/couchbase/lite/BuilderQuery;->limit:Lcom/couchbase/lite/Limit;

    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractQuery;->getParameters()Lcom/couchbase/lite/Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->setParameters(Lcom/couchbase/lite/Parameters;)V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed copying query parameters"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getDatabase()Lcom/couchbase/lite/AbstractDatabase;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/BuilderQuery;->from:Lcom/couchbase/lite/DataSource;

    invoke-virtual {p0}, Lcom/couchbase/lite/DataSource;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object p0

    return-object p0
.end method

.method public final prepQueryLocked(Lcom/couchbase/lite/AbstractDatabase;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 3
    .param p1    # Lcom/couchbase/lite/AbstractDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/BuilderQuery;->marshalAsJSONSafely()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/couchbase/lite/AbstractQuery;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "JSON query: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/couchbase/lite/AbstractDatabase;->createJsonQuery(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "Failed to generate JSON query."

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFrom(Lcom/couchbase/lite/DataSource;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->from:Lcom/couchbase/lite/DataSource;

    return-void
.end method

.method public setGroupBy(Lcom/couchbase/lite/GroupBy;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->groupBy:Lcom/couchbase/lite/GroupBy;

    return-void
.end method

.method public setHaving(Lcom/couchbase/lite/Having;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->having:Lcom/couchbase/lite/Having;

    return-void
.end method

.method public setJoins(Lcom/couchbase/lite/Joins;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->joins:Lcom/couchbase/lite/Joins;

    return-void
.end method

.method public setLimit(Lcom/couchbase/lite/Limit;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->limit:Lcom/couchbase/lite/Limit;

    return-void
.end method

.method public setOrderBy(Lcom/couchbase/lite/OrderBy;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->orderBy:Lcom/couchbase/lite/OrderBy;

    return-void
.end method

.method public setSelect(Lcom/couchbase/lite/Select;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->select:Lcom/couchbase/lite/Select;

    return-void
.end method

.method public setWhere(Lcom/couchbase/lite/Expression;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/BuilderQuery;->where:Lcom/couchbase/lite/Expression;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/couchbase/lite/BuilderQuery;->marshalAsJSONSafely()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
