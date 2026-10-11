.class final enum Lorg/jsoup/parser/bq;
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
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result p2

    if-eqz p2, :cond_3

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    iget-object p0, p1, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/parser/r;->u()V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    goto :goto_2

    :cond_2
    sget-object p0, Lorg/jsoup/parser/ab;->T:Lorg/jsoup/parser/ab;

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    iget-object p0, p1, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    const p2, 0xfffd

    :goto_1
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$c;->e(C)Lorg/jsoup/parser/Token$c;

    sget-object p0, Lorg/jsoup/parser/ab;->U:Lorg/jsoup/parser/ab;

    :goto_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    return-void
.end method
