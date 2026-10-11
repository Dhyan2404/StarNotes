.class public abstract Lorg/jsoup/parser/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/jsoup/parser/CharacterReader;

.field public b:Lorg/jsoup/parser/r;

.field protected baseUri:Ljava/lang/String;

.field public c:Lorg/jsoup/parser/Token$StartTag;

.field protected currentToken:Lorg/jsoup/parser/Token;

.field public d:Lorg/jsoup/parser/Token$EndTag;

.field protected doc:Lorg/jsoup/nodes/Document;

.field public e:Z

.field protected parser:Lorg/jsoup/parser/Parser;

.field protected settings:Lorg/jsoup/parser/ParseSettings;

.field protected stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/z;->c:Lorg/jsoup/parser/Token$StartTag;

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/z;->d:Lorg/jsoup/parser/Token$EndTag;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    iget v0, p0, Lorg/jsoup/parser/Token;->b:I

    iput v0, p1, Lorg/jsoup/parser/Token;->b:I

    iget p0, p0, Lorg/jsoup/parser/Token;->b:I

    iput p0, p1, Lorg/jsoup/parser/Token;->c:I

    return-object p1
.end method

.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/z;->e:Z

    return-void
.end method

.method public final b(Lorg/jsoup/parser/Token;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object p0

    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Lorg/jsoup/parser/Token;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p0

    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public currentElement()Lorg/jsoup/nodes/Element;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/z;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/z;->stack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract d()Lorg/jsoup/parser/ParseSettings;
.end method

.method public e(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/parser/z;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/z;->runParser()V

    iget-object p1, p0, Lorg/jsoup/parser/z;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/z;->a:Lorg/jsoup/parser/CharacterReader;

    iput-object p1, p0, Lorg/jsoup/parser/z;->b:Lorg/jsoup/parser/r;

    iput-object p1, p0, Lorg/jsoup/parser/z;->stack:Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/jsoup/parser/z;->doc:Lorg/jsoup/nodes/Document;

    return-object p0
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/z;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object p0, p0, Lorg/jsoup/parser/z;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p0

    invoke-direct {v1, p0, p1}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Parser;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end method

.method public initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .locals 1

    const-string v0, "String input must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/parser/z;->doc:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p3}, Lorg/jsoup/nodes/Document;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    iput-object p3, p0, Lorg/jsoup/parser/z;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/z;->settings:Lorg/jsoup/parser/ParseSettings;

    new-instance v0, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jsoup/parser/z;->a:Lorg/jsoup/parser/CharacterReader;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    new-instance p1, Lorg/jsoup/parser/r;

    iget-object v0, p0, Lorg/jsoup/parser/z;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p3}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lorg/jsoup/parser/r;-><init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V

    iput-object p1, p0, Lorg/jsoup/parser/z;->b:Lorg/jsoup/parser/r;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/z;->stack:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/jsoup/parser/z;->baseUri:Ljava/lang/String;

    return-void
.end method

.method public isAbort()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/z;->e:Z

    return p0
.end method

.method public parseCompleted()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/z;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->c()V

    return-void
.end method

.method public abstract process(Lorg/jsoup/parser/Token;)Z
.end method

.method public processAfter(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/z;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/Parser;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method public processBefore(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/z;->parser:Lorg/jsoup/parser/Parser;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/Parser;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method public processEndTag(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/z;->d:Lorg/jsoup/parser/Token$EndTag;

    if-ne v0, v1, :cond_0

    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v1}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    invoke-virtual {v1, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/z;->updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/z;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    iget-object v1, v1, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/z;->d:Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/z;->updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/z;->d:Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/z;->a(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    :goto_1
    iget-object v1, p0, Lorg/jsoup/parser/z;->d:Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Tag;->p()Lorg/jsoup/parser/Token$Tag;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    goto :goto_0

    :goto_2
    iput-object v0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    return p1
.end method

.method public processStartTag(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/z;->c:Lorg/jsoup/parser/Token$StartTag;

    if-ne v0, v1, :cond_0

    new-instance v1, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v1}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v1, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/z;->updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/z;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    goto :goto_3

    :cond_0
    const-string v2, "br"

    invoke-virtual {p0, v0, p1, v2}, Lorg/jsoup/parser/z;->c(Lorg/jsoup/parser/Token;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/z;->b(Lorg/jsoup/parser/Token;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/z;->a(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/z;->updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    :goto_2
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$StartTag;->p()Lorg/jsoup/parser/Token$Tag;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    goto :goto_0

    :goto_3
    iput-object v0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    return p1
.end method

.method public processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    iget-object v1, p0, Lorg/jsoup/parser/z;->c:Lorg/jsoup/parser/Token$StartTag;

    if-ne v0, v1, :cond_0

    new-instance v1, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v1}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->r(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/z;->updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/z;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$StartTag;->p()Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/Token$StartTag;->r(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/parser/Token$StartTag;

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/parser/z;->b(Lorg/jsoup/parser/Token;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/z;->updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/z;->a(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    :goto_0
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/z;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    :goto_1
    iput-object v0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    return p1
.end method

.method public runParser()V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/parser/z;->b:Lorg/jsoup/parser/r;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    :cond_0
    iget-boolean v2, p0, Lorg/jsoup/parser/z;->e:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/parser/r;->b()Lorg/jsoup/parser/Token;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/parser/z;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jsoup/parser/z;->processBefore(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/z;->process(Lorg/jsoup/parser/Token;)Z

    invoke-virtual {p0, v2, v3}, Lorg/jsoup/parser/z;->processAfter(Lorg/jsoup/parser/Token;Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v2}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token;

    iget-object v2, v2, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v1, :cond_0

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/z;->parseCompleted()V

    return-void
.end method

.method public updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/z;->currentToken:Lorg/jsoup/parser/Token;

    iget v0, p0, Lorg/jsoup/parser/Token;->b:I

    iput v0, p1, Lorg/jsoup/parser/Token;->b:I

    iget p0, p0, Lorg/jsoup/parser/Token;->c:I

    iput p0, p1, Lorg/jsoup/parser/Token;->c:I

    return-object p1
.end method
