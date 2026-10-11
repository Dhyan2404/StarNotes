.class public Lorg/apache/poi/text/SearchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentLength:I

.field private endLineIndex:I

.field private endWordIndex:I

.field private found:Z

.field private rectangleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation
.end field

.field private searchText:Ljava/lang/String;

.field private searchTextIndex:I

.field private searchWordIndex:I

.field private startLineIndex:I

.field private startWordIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/SearchOptions;->searchText:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/text/SearchOptions;->rectangleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->contentLength:I

    return p0
.end method

.method public getEndLineIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->endLineIndex:I

    return p0
.end method

.method public getEndWordIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->endWordIndex:I

    return p0
.end method

.method public getRectangleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/text/SearchOptions;->rectangleList:Ljava/util/List;

    return-object p0
.end method

.method public getSearchChar()C
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/SearchOptions;->searchText:Ljava/lang/String;

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/text/SearchOptions;->searchText:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchTextIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    return p0
.end method

.method public getSearchWordIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->searchWordIndex:I

    return p0
.end method

.method public getStartLineIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->startLineIndex:I

    return p0
.end method

.method public getStartWordIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/text/SearchOptions;->startWordIndex:I

    return p0
.end method

.method public increaseSearchIndex()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    return-void
.end method

.method public isFinish()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    iget-object p0, p0, Lorg/apache/poi/text/SearchOptions;->searchText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFound()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/text/SearchOptions;->found:Z

    return p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/SearchOptions;->rectangleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->searchWordIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->startLineIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->endLineIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->startWordIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->endWordIndex:I

    iput-boolean v0, p0, Lorg/apache/poi/text/SearchOptions;->found:Z

    return-void
.end method

.method public searchNext()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/text/SearchOptions;->rectangleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lorg/apache/poi/text/SearchOptions;->endWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->searchWordIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->startLineIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->endLineIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->startWordIndex:I

    iput v0, p0, Lorg/apache/poi/text/SearchOptions;->endWordIndex:I

    iput-boolean v0, p0, Lorg/apache/poi/text/SearchOptions;->found:Z

    return-void
.end method

.method public searchSucess()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/text/SearchOptions;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/text/SearchOptions;->isFound()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setContentLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/SearchOptions;->contentLength:I

    return-void
.end method

.method public setEndLineIndex(I)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/SearchOptions;->endLineIndex:I

    return-object p0
.end method

.method public setEndWordIndex(I)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/SearchOptions;->endWordIndex:I

    return-object p0
.end method

.method public setFound(Z)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/text/SearchOptions;->found:Z

    return-object p0
.end method

.method public setRectangleList(Ljava/util/List;)Lorg/apache/poi/text/SearchOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;)",
            "Lorg/apache/poi/text/SearchOptions;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/text/SearchOptions;->rectangleList:Ljava/util/List;

    return-object p0
.end method

.method public setSearchText(Ljava/lang/String;)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/text/SearchOptions;->searchText:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchTextIndex(I)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/SearchOptions;->searchTextIndex:I

    return-object p0
.end method

.method public setSearchWordIndex(I)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/SearchOptions;->searchWordIndex:I

    return-object p0
.end method

.method public setStartLineIndex(I)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/SearchOptions;->startLineIndex:I

    return-object p0
.end method

.method public setStartWordIndex(I)Lorg/apache/poi/text/SearchOptions;
    .locals 0

    iput p1, p0, Lorg/apache/poi/text/SearchOptions;->startWordIndex:I

    return-object p0
.end method
