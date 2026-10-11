.class public Lorg/jsoup/search/SearchHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final p:I = 0x32

.field public static final q:I = 0x9c40

.field public static final r:I = 0x7d0

.field public static final s:Ljava/lang/String; = "\uffff"


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/yxo;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/StringBuilder;

.field public i:Lorg/jsoup/search/SearchOptions;

.field public j:Ljava/util/regex/Pattern;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Lorg/jsoup/search/SearchOptions;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/search/SearchHelper;->m:I

    iput-object p1, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget-object v1, p1, Lorg/jsoup/search/SearchOptions;->a:Ljava/lang/String;

    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->removeMultipleSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p1, Lorg/jsoup/search/SearchOptions;->f:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/search/SearchHelper;->j:Ljava/util/regex/Pattern;

    iget v1, p1, Lorg/jsoup/search/SearchOptions;->b:I

    iget-object p1, p1, Lorg/jsoup/search/SearchOptions;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/2addr v1, v3

    iput v1, p0, Lorg/jsoup/search/SearchHelper;->l:I

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->f()V

    iget p1, p0, Lorg/jsoup/search/SearchHelper;->l:I

    const/16 v1, 0x32

    if-le p1, v1, :cond_1

    iput v1, p0, Lorg/jsoup/search/SearchHelper;->l:I

    goto :goto_1

    :cond_1
    if-gez p1, :cond_2

    iput v0, p0, Lorg/jsoup/search/SearchHelper;->l:I

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Search text to long"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static H(Lorg/jsoup/nodes/Node;Lorg/jsoup/search/SearchHelper;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jsoup/search/SearchHelper;->isAbort()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1, p0}, Lorg/jsoup/search/SearchHelper;->addSearchText(Lorg/jsoup/nodes/TextNode;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, p0}, Lorg/jsoup/search/SearchHelper;->addElementSpace(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    invoke-static {v0, p1}, Lorg/jsoup/search/SearchHelper;->H(Lorg/jsoup/nodes/Node;Lorg/jsoup/search/SearchHelper;)V

    invoke-virtual {p1}, Lorg/jsoup/search/SearchHelper;->isAbort()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    :goto_0
    return-void
.end method

.method public static search(Lorg/jsoup/nodes/Document;Lorg/jsoup/search/SearchOptions;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Document;",
            "Lorg/jsoup/search/SearchOptions;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/SearchResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/jsoup/search/SearchHelper;

    invoke-direct {v0, p1}, Lorg/jsoup/search/SearchHelper;-><init>(Lorg/jsoup/search/SearchOptions;)V

    invoke-static {p0, v0}, Lorg/jsoup/search/SearchHelper;->H(Lorg/jsoup/nodes/Node;Lorg/jsoup/search/SearchHelper;)V

    invoke-virtual {v0}, Lorg/jsoup/search/SearchHelper;->getSearchResult()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Lorg/jsoup/search/SearchHelper;->close()V

    return-object p0
.end method


# virtual methods
.method public final I(Lorg/jsoup/nodes/SearchResult;)V
    .locals 3

    iget v0, p1, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/jsoup/search/SearchHelper;->l:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object p0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\uffff"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lorg/jsoup/nodes/SearchResult;->leftText:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public final M(Lorg/jsoup/nodes/TextNode;)V
    .locals 3

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/search/SearchHelper;->n:Z

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-instance v2, Lcom/sunia/HTREnginev2/yxo;

    invoke-direct {v2, p1, v1, v0}, Lcom/sunia/HTREnginev2/yxo;-><init>(Lorg/jsoup/nodes/TextNode;II)V

    iget-object p0, p0, Lorg/jsoup/search/SearchHelper;->e:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/search/SearchHelper;->o:Z

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->g0()V

    return-void
.end method

.method public addElementSpace(Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/search/SearchHelper;->n:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    const-string v0, "\uffff"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/search/SearchHelper;->n:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addSearchText(Lorg/jsoup/nodes/TextNode;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jsoup/search/SearchHelper;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->byteEndPos()I

    move-result v0

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget v1, v1, Lorg/jsoup/search/SearchOptions;->c:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/search/SearchHelper;->M(Lorg/jsoup/nodes/TextNode;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/jsoup/search/SearchHelper;->e0(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->abort()V

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->j:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->e:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    return-void
.end method

.method public final e0(Z)V
    .locals 9

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/search/SearchHelper;->k:I

    iget v2, p0, Lorg/jsoup/search/SearchHelper;->m:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jsoup/search/SearchHelper;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->removeMultipleSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/search/SearchHelper;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    aget v6, v2, v4

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    aput v6, v2, v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v6, v5

    aput v6, v2, v4

    goto :goto_1

    :cond_1
    aput v5, v2, v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    aput v5, v2, v4

    :goto_1
    invoke-virtual {p0, v0, v3, v2}, Lorg/jsoup/search/SearchHelper;->f0(Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Find search content position failed"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->abort()V

    return-void

    :cond_2
    aget v3, v2, v7

    aget v5, v2, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v7

    iget v6, p0, Lorg/jsoup/search/SearchHelper;->m:I

    add-int/2addr v5, v6

    aget v4, v2, v4

    add-int/2addr v4, v6

    invoke-virtual {p0, v3, v5, v4}, Lorg/jsoup/search/SearchHelper;->w(Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/jsoup/search/SearchHelper;->j0(Z)V

    iget-boolean v0, p0, Lorg/jsoup/search/SearchHelper;->o:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    iget p1, p0, Lorg/jsoup/search/SearchHelper;->m:I

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget-object v1, v1, Lorg/jsoup/search/SearchOptions;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lorg/jsoup/search/SearchHelper;->m:I

    :cond_4
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget v0, v0, Lorg/jsoup/search/SearchOptions;->d:I

    const v1, 0x9c40

    if-lez v0, :cond_2

    iget-object v2, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x64

    const/16 v2, 0x7d0

    if-ge v0, v2, :cond_0

    iput v2, p0, Lorg/jsoup/search/SearchHelper;->k:I

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/jsoup/search/SearchHelper;->k:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v1, p0, Lorg/jsoup/search/SearchHelper;->k:I

    :goto_1
    return-void
.end method

.method public final f0(Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p1, 0x0

    aget v0, p3, p1

    const/4 v1, 0x1

    aget v2, p3, v1

    move v4, p1

    move v3, v0

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    aget-char v5, p0, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_1

    if-nez v4, :cond_0

    move v3, v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_2

    aget v3, p3, p1

    if-lez v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v4, p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_3

    add-int/lit8 v2, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    :goto_3
    aput v3, p3, p1

    aput v2, p3, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lt v4, p0, :cond_5

    move p1, v1

    :cond_5
    return p1
.end method

.method public finishSearch()V
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/search/SearchHelper;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jsoup/search/SearchHelper;->e0(Z)V

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->abort()V

    return-void
.end method

.method public final g0()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getSearchResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/SearchResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->finishSearch()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final h0(Lcom/sunia/HTREnginev2/yxo;ILorg/jsoup/nodes/SearchResult;)V
    .locals 2

    iget p0, p1, Lcom/sunia/HTREnginev2/yxo;->b:I

    sub-int p0, p2, p0

    add-int/lit8 p0, p0, -0x1

    iget-object v0, p1, Lcom/sunia/HTREnginev2/yxo;->a:Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    iget-object v0, p1, Lcom/sunia/HTREnginev2/yxo;->a:Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->getXPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lorg/jsoup/nodes/SearchResult;->endXPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/yxo;->a:Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->byteStartPos()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p3, Lorg/jsoup/nodes/SearchResult;->endPosition:I

    iput p2, p3, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    return-void
.end method

.method public final i0(Lorg/jsoup/nodes/SearchResult;)V
    .locals 3

    iget v0, p1, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/jsoup/search/SearchHelper;->l:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object p0, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\uffff"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lorg/jsoup/nodes/SearchResult;->rightText:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public isAbort()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget-boolean v0, v0, Lorg/jsoup/search/SearchOptions;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jsoup/search/SearchHelper;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->abort()V

    :cond_0
    iget-boolean p0, p0, Lorg/jsoup/search/SearchHelper;->o:Z

    return p0
.end method

.method public final j(Lcom/sunia/HTREnginev2/yxo;ILorg/jsoup/nodes/SearchResult;)V
    .locals 2

    iget p0, p1, Lcom/sunia/HTREnginev2/yxo;->b:I

    sub-int p0, p2, p0

    iget-object v0, p1, Lcom/sunia/HTREnginev2/yxo;->a:Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    iget-object v0, p1, Lcom/sunia/HTREnginev2/yxo;->a:Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->getXPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lorg/jsoup/nodes/SearchResult;->startXPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/yxo;->a:Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->byteStartPos()I

    move-result p1

    add-int/2addr p1, p0

    iput p1, p3, Lorg/jsoup/nodes/SearchResult;->startPosition:I

    iput p2, p3, Lorg/jsoup/nodes/SearchResult;->startOffset:I

    return-void
.end method

.method public final j0(Z)V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/jsoup/search/SearchHelper;->l:I

    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget p1, p1, Lorg/jsoup/search/SearchOptions;->d:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget v0, v0, Lorg/jsoup/search/SearchOptions;->d:I

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->abort()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->f()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/SearchResult;

    if-nez p1, :cond_4

    iget v2, v1, Lorg/jsoup/nodes/SearchResult;->endOffset:I

    iget v3, p0, Lorg/jsoup/search/SearchHelper;->l:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/jsoup/search/SearchHelper;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lorg/jsoup/search/SearchHelper;->I(Lorg/jsoup/nodes/SearchResult;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/search/SearchHelper;->i0(Lorg/jsoup/nodes/SearchResult;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget v1, v1, Lorg/jsoup/search/SearchOptions;->d:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/jsoup/search/SearchHelper;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/jsoup/search/SearchHelper;->i:Lorg/jsoup/search/SearchOptions;

    iget v2, v2, Lorg/jsoup/search/SearchOptions;->d:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->abort()V

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lorg/jsoup/search/SearchHelper;->o:Z

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lorg/jsoup/search/SearchHelper;->f()V

    :cond_6
    return-void
.end method

.method public final w(Ljava/lang/String;II)V
    .locals 6

    new-instance v0, Lorg/jsoup/nodes/SearchResult;

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/SearchResult;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jsoup/search/SearchHelper;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/yxo;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/sunia/HTREnginev2/yxo;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v3, p2, v0}, Lorg/jsoup/search/SearchHelper;->j(Lcom/sunia/HTREnginev2/yxo;ILorg/jsoup/nodes/SearchResult;)V

    move v2, v4

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p3, v1}, Lcom/sunia/HTREnginev2/yxo;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3, p3, v0}, Lorg/jsoup/search/SearchHelper;->h0(Lcom/sunia/HTREnginev2/yxo;ILorg/jsoup/nodes/SearchResult;)V

    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/nodes/SearchResult;->isInvalid()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lorg/jsoup/search/SearchHelper;->g:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Find search result position failed"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
