.class public final Lcom/couchbase/lite/FullTextIndexConfiguration;
.super Lcom/couchbase/lite/IndexConfiguration;
.source "SourceFile"


# instance fields
.field private ignoreDiacrits:Z

.field private language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->language:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->ignoreDiacrits:Z

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

    invoke-direct {p0, p1}, Lcom/couchbase/lite/FullTextIndexConfiguration;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createIndex(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Collection;)V
    .locals 8
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

    move-result v3

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexConfiguration;->getIndexSpec()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->language:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->ignoreDiacrits:Z

    iget-object v7, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->where:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/couchbase/lite/internal/core/C4Collection;->createFullTextIndex(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->where:Ljava/lang/String;

    return-object p0
.end method

.method public ignoreAccents(Z)Lcom/couchbase/lite/FullTextIndexConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->ignoreDiacrits:Z

    return-object p0
.end method

.method public isIgnoringAccents()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->ignoreDiacrits:Z

    return p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/couchbase/lite/FullTextIndexConfiguration;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/couchbase/lite/internal/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/couchbase/lite/FullTextIndexConfiguration;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/FullTextIndexConfiguration;->where:Ljava/lang/String;

    return-object p0
.end method
