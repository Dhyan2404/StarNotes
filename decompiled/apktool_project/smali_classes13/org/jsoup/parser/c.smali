.class final enum Lorg/jsoup/parser/c;
.super Lorg/jsoup/parser/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/a;-><init>(Ljava/lang/String;ILorg/jsoup/parser/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/parser/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v3

    :cond_0
    new-instance p0, Lorg/jsoup/parser/Token$b;

    invoke-direct {p0}, Lorg/jsoup/parser/Token$b;-><init>()V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$b;->e(Ljava/lang/String;)Lorg/jsoup/parser/Token$b;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/z;->updateToken(Lorg/jsoup/parser/Token;)Lorg/jsoup/parser/Token;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->G()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/parser/Token$b;

    invoke-static {v1}, Lorg/jsoup/parser/a;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/z;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jsoup/parser/a$a;->C:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->A0(Z)V

    sget-object v4, Lorg/jsoup/parser/a;->g:Lorg/jsoup/parser/a;

    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->o0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->A0(Z)V

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/jsoup/parser/a;->g:Lorg/jsoup/parser/a;

    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->o0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->R(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->g0()V

    :cond_5
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->j0()Lorg/jsoup/parser/a;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->D0(Lorg/jsoup/parser/a;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method
