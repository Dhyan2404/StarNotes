.class public Lcom/onyx/engine/sdk/ChapterSearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private position:Lcom/onyx/engine/sdk/PinPosition;

.field private searchResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/SearchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/ChapterSearchResult$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/ChapterSearchResult$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/engine/sdk/ChapterSearchResult;->toSearchResult(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static toSearchResult(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/ChapterSearchResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/SearchResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/ChapterSearchResult;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ChapterSearchResult;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ChapterSearchResult;->getSearchResultList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/SearchResult;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ChapterSearchResult;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/PinPosition;->copy()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/SearchResult;->getStartNodePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/PinPosition;->setNodePosition(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/SearchResult;->getStartOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/PinPosition;->setTextOffset(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/SearchResult;->getStartXPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/PinPosition;->setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v3, v4}, Lcom/onyx/engine/sdk/SearchResult;->setStartPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/SearchResult;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ChapterSearchResult;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/engine/sdk/PinPosition;->copy()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/SearchResult;->getEndNodePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/PinPosition;->setNodePosition(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/SearchResult;->getEndOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/PinPosition;->setTextOffset(I)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/SearchResult;->getEndXPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/engine/sdk/PinPosition;->setXpath(Ljava/lang/String;)Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v3, v4}, Lcom/onyx/engine/sdk/SearchResult;->setEndPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/SearchResult;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/ChapterSearchResult;->getSearchResultList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getSearchResultList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/SearchResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->searchResultList:Ljava/util/List;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->searchResultList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/ChapterSearchResult;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setSearchResultList(Ljava/util/List;)Lcom/onyx/engine/sdk/ChapterSearchResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/SearchResult;",
            ">;)",
            "Lcom/onyx/engine/sdk/ChapterSearchResult;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->searchResultList:Ljava/util/List;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->searchResultList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChapterSearchResult{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->position:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchResultList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/ChapterSearchResult;->searchResultList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
