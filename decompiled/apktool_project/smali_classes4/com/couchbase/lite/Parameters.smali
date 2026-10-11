.class public final Lcom/couchbase/lite/Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final map:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final readonly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/couchbase/lite/Parameters;-><init>(Lcom/couchbase/lite/Parameters;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Parameters;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Parameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/Parameters;-><init>(Lcom/couchbase/lite/Parameters;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/Parameters;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Parameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/couchbase/lite/Parameters;->map:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/Parameters;->map:Ljava/util/Map;

    .line 5
    iput-boolean p2, p0, Lcom/couchbase/lite/Parameters;->readonly:Z

    return-void
.end method


# virtual methods
.method public encode()Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getManagedEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object v0

    :try_start_0
    const-string v1, "BLOB.queryParam"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->setArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/internal/fleece/FLEncoder;

    iget-object p0, p0, Lcom/couchbase/lite/Parameters;->map:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->write(Ljava/util/Map;)Z

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->finish2()Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/couchbase/lite/Parameters;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public readonlyCopy()Lcom/couchbase/lite/Parameters;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Parameters;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Parameters;-><init>(Lcom/couchbase/lite/Parameters;Z)V

    return-object v0
.end method

.method public setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setInt(Ljava/lang/String;I)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setLong(Ljava/lang/String;J)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Parameters;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Parameters;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Parameters;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/couchbase/lite/Parameters;->readonly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/couchbase/lite/Parameters;->map:Ljava/util/Map;

    invoke-static {p2}, Lcom/couchbase/lite/Fleece;->toCBLObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Parameters is readonly mode."

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
