.class final enum Lorg/jsoup/parser/bi;
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

    sget-object v0, Lorg/jsoup/parser/ab;->aq:[C

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->o([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->q()V

    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result p2

    if-eqz p2, :cond_5

    const v0, 0xffff

    if-eq p2, v0, :cond_4

    const/16 p0, 0x27

    const/16 v0, 0x26

    if-eq p2, v0, :cond_2

    if-eq p2, p0, :cond_1

    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    goto :goto_2

    :cond_1
    sget-object p0, Lorg/jsoup/parser/ab;->O:Lorg/jsoup/parser/ab;

    :goto_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lorg/jsoup/parser/r;->i(Ljava/lang/Character;Z)[I

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p1, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Token$Tag;->j([I)V

    goto :goto_2

    :cond_3
    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    const p1, 0xfffd

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    :goto_2
    return-void
.end method
