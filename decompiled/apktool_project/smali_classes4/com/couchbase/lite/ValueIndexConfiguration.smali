.class public final Lcom/couchbase/lite/ValueIndexConfiguration;
.super Lcom/couchbase/lite/IndexConfiguration;
.source "SourceFile"


# instance fields
.field private where:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexConfiguration;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/ValueIndexConfiguration;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createIndex(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Collection;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->N1QL:Lcom/couchbase/lite/internal/QueryLanguage;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/QueryLanguage;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexConfiguration;->getIndexSpec()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/couchbase/lite/ValueIndexConfiguration;->where:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/couchbase/lite/internal/core/C4Collection;->createValueIndex(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getWhere()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ValueIndexConfiguration;->where:Ljava/lang/String;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/couchbase/lite/ValueIndexConfiguration;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/ValueIndexConfiguration;->where:Ljava/lang/String;

    return-object p0
.end method
