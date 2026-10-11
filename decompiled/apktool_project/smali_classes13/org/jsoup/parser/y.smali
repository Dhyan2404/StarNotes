.class final enum Lorg/jsoup/parser/y;
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
    .locals 7

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->g0()V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->e0()V

    sget-object p0, Lorg/jsoup/parser/a;->j:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->D0(Lorg/jsoup/parser/a;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$c;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Lorg/jsoup/parser/Token$c;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    const-string v3, "table"

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "caption"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->t()V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/a;

    :goto_0
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->D0(Lorg/jsoup/parser/a;)V

    goto/16 :goto_1

    :cond_3
    const-string v5, "colgroup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->t()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/a;->l:Lorg/jsoup/parser/a;

    goto :goto_0

    :cond_4
    const-string v6, "col"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/z;->processStartTag(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_5
    sget-object v5, Lorg/jsoup/parser/a$a;->u:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->t()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/a;->m:Lorg/jsoup/parser/a;

    goto :goto_0

    :cond_6
    sget-object v5, Lorg/jsoup/parser/a$a;->v:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string p0, "tbody"

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/z;->processStartTag(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/z;->processEndTag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_8
    sget-object v3, Lorg/jsoup/parser/a$a;->w:[Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object p0, Lorg/jsoup/parser/a;->d:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->o0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0

    :cond_9
    const-string v3, "input"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, v0, Lorg/jsoup/parser/Token$Tag;->j:Lorg/jsoup/nodes/Attributes;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/y;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p0

    return p0

    :cond_a
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_b
    const-string v3, "form"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->D()Lorg/jsoup/nodes/FormElement;

    move-result-object p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    invoke-virtual {p2, v0, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->U(Lorg/jsoup/parser/Token$StartTag;Z)Lorg/jsoup/nodes/FormElement;

    :cond_d
    :goto_1
    return v1

    :cond_e
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/y;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v2

    :cond_10
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->m0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->x0()V

    return v1

    :cond_11
    sget-object v1, Lorg/jsoup/parser/a$a;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v2

    :cond_12
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/y;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p0

    return p0

    :cond_13
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lorg/jsoup/parser/z;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    :cond_14
    return v1

    :cond_15
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/y;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p0

    return p0
.end method

.method public b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/z;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/jsoup/parser/a$a;->C:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->A0(Z)V

    sget-object p0, Lorg/jsoup/parser/a;->g:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->o0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->A0(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/jsoup/parser/a;->g:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->o0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    :goto_0
    return p0
.end method
