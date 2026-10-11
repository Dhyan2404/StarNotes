.class final enum Lorg/jsoup/parser/ay;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x26

    if-eq v0, p0, :cond_2

    const/16 p0, 0x3c

    if-eq v0, p0, :cond_1

    const p0, 0xffff

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/jsoup/parser/Token$e;

    invoke-direct {p0}, Lorg/jsoup/parser/Token$e;-><init>()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->e(Lorg/jsoup/parser/Token;)V

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/jsoup/parser/ab;->k:Lorg/jsoup/parser/ab;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/jsoup/parser/ab;->d:Lorg/jsoup/parser/ab;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->n(Lorg/jsoup/parser/ab;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    const p0, 0xfffd

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->c(C)V

    :goto_1
    return-void
.end method
