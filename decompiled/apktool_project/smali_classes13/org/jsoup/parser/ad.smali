.class final enum Lorg/jsoup/parser/ad;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->l(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 p2, 0x3e

    if-eq v0, p2, :cond_2

    const p2, 0xffff

    if-eq v0, p2, :cond_0

    const/16 p0, 0x9

    if-eq v0, p0, :cond_4

    const/16 p0, 0xa

    if-eq v0, p0, :cond_4

    const/16 p0, 0xc

    if-eq v0, p0, :cond_4

    const/16 p0, 0xd

    if-eq v0, p0, :cond_4

    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->k(C)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->H()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/r;->o()V

    :goto_0
    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    :goto_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    goto :goto_2

    :cond_3
    sget-object p0, Lorg/jsoup/parser/ab;->P:Lorg/jsoup/parser/ab;

    goto :goto_1

    :cond_4
    sget-object p0, Lorg/jsoup/parser/ab;->H:Lorg/jsoup/parser/ab;

    goto :goto_1

    :cond_5
    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-static {}, Lorg/jsoup/parser/ab;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->l(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
