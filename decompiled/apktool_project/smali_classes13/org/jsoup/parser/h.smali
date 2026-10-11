.class final enum Lorg/jsoup/parser/h;
.super Lorg/jsoup/parser/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/a;-><init>(Ljava/lang/String;ILorg/jsoup/parser/b;)V

    return-void
.end method

.method private a(Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 1

    .line 1
    const-string p0, "td"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "th"

    :goto_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/z;->processEndTag(Ljava/lang/String;)Z

    return-void
.end method

.method private b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 0

    sget-object p0, Lorg/jsoup/parser/a;->g:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->o0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/parser/a$a;->x:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    sget-object p0, Lorg/jsoup/parser/a;->n:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->D0(Lorg/jsoup/parser/a;)V

    return v1

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->y()V

    invoke-virtual {p2}, Lorg/jsoup/parser/z;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    :cond_1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->m0(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->q()V

    sget-object p0, Lorg/jsoup/parser/a;->n:Lorg/jsoup/parser/a;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->D0(Lorg/jsoup/parser/a;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object v2, Lorg/jsoup/parser/a$a;->y:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v1

    :cond_3
    sget-object v2, Lorg/jsoup/parser/a$a;->z:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v1

    :cond_4
    invoke-direct {p0, p2}, Lorg/jsoup/parser/h;->a(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/h;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/parser/a$a;->A:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "td"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "th"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->v(Lorg/jsoup/parser/a;)V

    return v1

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/h;->b(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p0

    return p0
.end method
