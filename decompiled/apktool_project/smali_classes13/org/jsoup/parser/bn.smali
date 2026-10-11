.class final enum Lorg/jsoup/parser/bn;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->H()V

    iget-object p0, p1, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Token$c;->f(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result p0

    if-eq p0, v0, :cond_0

    const p2, 0xffff

    if-ne p0, p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/r;->u()V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    :cond_1
    return-void
.end method
