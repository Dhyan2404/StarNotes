.class public abstract Lcom/couchbase/lite/Index;
.super Lcom/couchbase/lite/AbstractIndex;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractIndex;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexSpec()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Index;->getJson()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toJSON(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v1, "Error encoding JSON"

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public abstract getJson()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
