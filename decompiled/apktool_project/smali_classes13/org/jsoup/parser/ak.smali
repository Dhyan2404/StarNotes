.class final enum Lorg/jsoup/parser/ak;
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
    .locals 3

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    const-string v2, "<"

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->H()V

    sget-object p0, Lorg/jsoup/parser/ab;->f:Lorg/jsoup/parser/ab;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/r;->y()V

    sget-object p0, Lorg/jsoup/parser/ab;->r:Lorg/jsoup/parser/ab;

    goto :goto_0

    :cond_2
    const-string p0, "<!"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    sget-object p0, Lorg/jsoup/parser/ab;->t:Lorg/jsoup/parser/ab;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    return-void
.end method
