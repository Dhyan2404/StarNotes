.class final enum Lorg/jsoup/parser/bm;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->H()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    sget-object p0, Lorg/jsoup/parser/ab;->H:Lorg/jsoup/parser/ab;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/jsoup/parser/Token$Tag;->i:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->o()V

    :goto_0
    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    :goto_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    return-void
.end method
