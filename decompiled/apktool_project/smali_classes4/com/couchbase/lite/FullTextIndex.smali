.class public final Lcom/couchbase/lite/FullTextIndex;
.super Lcom/couchbase/lite/Index;
.source "SourceFile"


# instance fields
.field private ignoreDiacrits:Z

.field private final indexItems:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/FullTextIndexItem;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/couchbase/lite/FullTextIndexItem;)V
    .locals 1
    .param p1    # [Lcom/couchbase/lite/FullTextIndexItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Index;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/FullTextIndex;->language:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/couchbase/lite/FullTextIndex;->ignoreDiacrits:Z

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/FullTextIndex;->indexItems:Ljava/util/List;

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
            Lcom/couchbase/lite/LiteCoreException;,
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->JSON:Lcom/couchbase/lite/internal/QueryLanguage;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/QueryLanguage;->getCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/couchbase/lite/Index;->getIndexSpec()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/couchbase/lite/FullTextIndex;->language:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/couchbase/lite/FullTextIndex;->ignoreDiacrits:Z

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/couchbase/lite/internal/core/C4Collection;->createFullTextIndex(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public getJson()Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/couchbase/lite/FullTextIndex;->indexItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/FullTextIndexItem;

    iget-object v1, v1, Lcom/couchbase/lite/FullTextIndexItem;->expression:Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/FullTextIndex;->language:Ljava/lang/String;

    return-object p0
.end method

.method public ignoreAccents(Z)Lcom/couchbase/lite/FullTextIndex;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/FullTextIndex;->ignoreDiacrits:Z

    return-object p0
.end method

.method public isIgnoringAccents()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/FullTextIndex;->ignoreDiacrits:Z

    return p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/couchbase/lite/FullTextIndex;
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
    iput-object p1, p0, Lcom/couchbase/lite/FullTextIndex;->language:Ljava/lang/String;

    return-object p0
.end method
