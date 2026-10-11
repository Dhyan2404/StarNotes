.class final enum Lorg/jsoup/parser/t;
.super Lorg/jsoup/parser/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/a;-><init>(Ljava/lang/String;ILorg/jsoup/parser/b;)V

    return-void
.end method

.method private a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/z;)Z
    .locals 0

    .line 2
    const-string p0, "head"

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/z;->processEndTag(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/z;->process(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/a;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$b;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->R(Lorg/jsoup/parser/Token$b;)V

    return v1

    :cond_0
    sget-object v0, Lorg/jsoup/parser/b0;->a:[I

    iget-object v2, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_e

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    const-string v4, "head"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/t;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/z;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->k0()Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/a;->f:Lorg/jsoup/parser/a;

    :goto_0
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->D0(Lorg/jsoup/parser/a;)V

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lorg/jsoup/parser/a$a;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/t;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/z;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "html"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object p0, Lorg/jsoup/parser/a;->g:Lorg/jsoup/parser/a;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/a;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p0

    return p0

    :cond_5
    sget-object v5, Lorg/jsoup/parser/a$a;->a:[Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    const-string p1, "base"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "href"

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->f0(Lorg/jsoup/nodes/Element;)V

    goto :goto_1

    :cond_6
    const-string v5, "meta"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_7
    const-string v5, "title"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v0, p2}, Lorg/jsoup/parser/a;->a(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto :goto_1

    :cond_8
    sget-object v5, Lorg/jsoup/parser/a$a;->b:[Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v0, p2}, Lorg/jsoup/parser/a;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto :goto_1

    :cond_9
    const-string v5, "noscript"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    sget-object p0, Lorg/jsoup/parser/a;->e:Lorg/jsoup/parser/a;

    goto :goto_0

    :cond_a
    const-string v5, "script"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object p0, p2, Lorg/jsoup/parser/z;->b:Lorg/jsoup/parser/r;

    sget-object p1, Lorg/jsoup/parser/ab;->f:Lorg/jsoup/parser/ab;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->e0()V

    sget-object p0, Lorg/jsoup/parser/a;->h:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->D0(Lorg/jsoup/parser/a;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    :cond_b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v3

    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/t;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/z;)Z

    move-result p0

    return p0

    :cond_d
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v3

    :cond_e
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$c;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Lorg/jsoup/parser/Token$c;)V

    :cond_f
    :goto_1
    return v1
.end method
