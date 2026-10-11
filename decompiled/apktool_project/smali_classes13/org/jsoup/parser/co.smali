.class final enum Lorg/jsoup/parser/co;
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

    if-eqz v0, :cond_1

    const p0, 0xffff

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jsoup/parser/Token$e;

    invoke-direct {p0}, Lorg/jsoup/parser/Token$e;-><init>()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->e(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    const p0, 0xfffd

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->c(C)V

    :goto_0
    return-void
.end method
