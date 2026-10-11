.class final enum Lorg/jsoup/parser/cp;
.super Lorg/jsoup/parser/ab;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/ab;-><init>(Ljava/lang/String;ILorg/jsoup/parser/ac;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/parser/r;Lorg/jsoup/parser/CharacterReader;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->B()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->a(Z)Lorg/jsoup/parser/Token$Tag;

    sget-object p0, Lorg/jsoup/parser/ab;->j:Lorg/jsoup/parser/ab;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    const/16 p0, 0x3c

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->c(C)V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/r;->v()V

    sget-object p0, Lorg/jsoup/parser/ab;->Q:Lorg/jsoup/parser/ab;

    goto :goto_1

    :cond_2
    sget-object p0, Lorg/jsoup/parser/ab;->i:Lorg/jsoup/parser/ab;

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/jsoup/parser/ab;->R:Lorg/jsoup/parser/ab;

    :goto_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->n(Lorg/jsoup/parser/ab;)V

    :goto_2
    return-void
.end method
