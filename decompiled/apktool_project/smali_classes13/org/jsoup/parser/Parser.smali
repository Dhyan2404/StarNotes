.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/jsoup/parser/z;

.field public b:Lorg/jsoup/parser/ParseErrorList;

.field public c:Lorg/jsoup/parser/ParseSettings;

.field public d:Lorg/jsoup/search/SearchHelper;

.field public e:Lorg/jsoup/parser/ParserListener;

.field public f:Z


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->f:Z

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    invoke-virtual {p1}, Lorg/jsoup/parser/z;->d()Lorg/jsoup/parser/ParseSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/ParseSettings;

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->b:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method public static htmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/z;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/jsoup/parser/Parser;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/z;)V

    invoke-virtual {v0, v1, p1, p0}, Lorg/jsoup/parser/z;->e(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parseBodyFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 4

    invoke-static {p1}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array v2, p1, [Lorg/jsoup/nodes/Node;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/jsoup/nodes/Node;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->remove()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    array-length v2, p0

    :goto_1
    if-ge p1, v2, :cond_1

    aget-object v3, p0, p1

    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    new-instance v1, Lorg/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/z;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    new-instance v1, Lorg/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/z;)V

    iput-object p3, v1, Lorg/jsoup/parser/Parser;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseXmlFragment(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    new-instance v1, Lorg/jsoup/parser/Parser;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/z;)V

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->o(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/r;

    new-instance v1, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jsoup/parser/r;-><init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/r;->j(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/z;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/search/SearchHelper;->finishSearch()V

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    invoke-virtual {v0}, Lorg/jsoup/parser/z;->abort()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    :cond_0
    return-void
.end method

.method public abortSearch()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/search/SearchHelper;->abort()V

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    invoke-virtual {v0}, Lorg/jsoup/parser/z;->abort()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->f:Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/jsoup/parser/ParserListener;->parseCompleted()V

    :cond_0
    return-void
.end method

.method public d(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    invoke-virtual {p0}, Lorg/jsoup/parser/z;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lorg/jsoup/parser/ParserListener;->startTagAfter(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/jsoup/parser/ParserListener;->endTagAfter(Lorg/jsoup/parser/Token$EndTag;Lorg/jsoup/nodes/Element;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/jsoup/parser/ParserListener;->startTagBefore(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/jsoup/parser/ParserListener;->endTagBefore(Lorg/jsoup/parser/Token$EndTag;Lorg/jsoup/nodes/Element;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Lorg/jsoup/nodes/Node;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/jsoup/parser/Parser;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/search/SearchHelper;->isAbort()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iput-boolean v3, p0, Lorg/jsoup/parser/Parser;->f:Z

    iput-object v2, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    return v3

    :cond_1
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    check-cast p1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0, p1}, Lorg/jsoup/search/SearchHelper;->addSearchText(Lorg/jsoup/nodes/TextNode;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, p1}, Lorg/jsoup/search/SearchHelper;->addElementSpace(Lorg/jsoup/nodes/Element;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    invoke-virtual {p1}, Lorg/jsoup/search/SearchHelper;->isAbort()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method public getErrors()Lorg/jsoup/parser/ParseErrorList;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->b:Lorg/jsoup/parser/ParseErrorList;

    return-object p0
.end method

.method public getListener()Lorg/jsoup/parser/ParserListener;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    return-object p0
.end method

.method public getSearchHelper()Lorg/jsoup/search/SearchHelper;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    return-object p0
.end method

.method public getTreeBuilder()Lorg/jsoup/parser/z;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    return-object p0
.end method

.method public isTrackErrors()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Parser;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {p0}, Lorg/jsoup/parser/ParseErrorList;->getMaxSize()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/jsoup/parser/z;->f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    invoke-virtual {v0, p1, p2, p0}, Lorg/jsoup/parser/z;->e(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p0}, Lorg/jsoup/parser/z;->e(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public setListener(Lorg/jsoup/parser/ParserListener;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->e:Lorg/jsoup/parser/ParserListener;

    return-void
.end method

.method public setSearchHelper(Lorg/jsoup/search/SearchHelper;)V
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Parser;->f:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->d:Lorg/jsoup/search/SearchHelper;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Must call before search start"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTrackErrors(I)Lorg/jsoup/parser/Parser;
    .locals 0

    if-lez p1, :cond_0

    invoke-static {p1}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->b:Lorg/jsoup/parser/ParseErrorList;

    return-object p0
.end method

.method public setTreeBuilder(Lorg/jsoup/parser/z;)Lorg/jsoup/parser/Parser;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->a:Lorg/jsoup/parser/z;

    iput-object p0, p1, Lorg/jsoup/parser/z;->parser:Lorg/jsoup/parser/Parser;

    return-object p0
.end method

.method public settings()Lorg/jsoup/parser/ParseSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/ParseSettings;

    return-object p0
.end method

.method public settings(Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Parser;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->c:Lorg/jsoup/parser/ParseSettings;

    return-object p0
.end method
