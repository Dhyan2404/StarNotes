.class public Lorg/jsoup/search/SearchOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/search/SearchOptions;->f:Z

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/search/SearchOptions;->g:Z

    return-void
.end method

.method public getContextLength()I
    .locals 0

    iget p0, p0, Lorg/jsoup/search/SearchOptions;->b:I

    return p0
.end method

.method public getLimit()I
    .locals 0

    iget p0, p0, Lorg/jsoup/search/SearchOptions;->d:I

    return p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/search/SearchOptions;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lorg/jsoup/search/SearchOptions;->c:I

    return p0
.end method

.method public isAbort()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/search/SearchOptions;->g:Z

    return p0
.end method

.method public isCaseSensitive()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/search/SearchOptions;->f:Z

    return p0
.end method

.method public isMatchWholeWord()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/search/SearchOptions;->e:Z

    return p0
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/search/SearchOptions;->f:Z

    return-void
.end method

.method public setContextLength(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/search/SearchOptions;->b:I

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/search/SearchOptions;->d:I

    return-void
.end method

.method public setMatchWholeWord(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/search/SearchOptions;->e:Z

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/search/SearchOptions;->a:Ljava/lang/String;

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/search/SearchOptions;->c:I

    return-void
.end method
