.class final enum Lorg/jsoup/parser/bk;
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

    sget-object v0, Lorg/jsoup/parser/ab;->at:[C

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->o([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$Tag;->h(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result p2

    if-eqz p2, :cond_6

    const/16 v0, 0x20

    if-eq p2, v0, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v0, 0x60

    if-eq p2, v0, :cond_4

    const v0, 0xffff

    if-eq p2, v0, :cond_3

    const/16 v0, 0x9

    if-eq p2, v0, :cond_5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_5

    const/16 v0, 0xc

    if-eq p2, v0, :cond_5

    const/16 v0, 0xd

    if-eq p2, v0, :cond_5

    const/16 v0, 0x26

    if-eq p2, v0, :cond_1

    const/16 v0, 0x27

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/r;->o()V

    :goto_0
    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    goto :goto_2

    :cond_1
    const/16 p0, 0x3e

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lorg/jsoup/parser/r;->i(Ljava/lang/Character;Z)[I

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p1, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Token$Tag;->j([I)V

    goto :goto_3

    :cond_2
    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    goto :goto_0

    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    :goto_1
    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    goto :goto_3

    :cond_5
    sget-object p0, Lorg/jsoup/parser/ab;->H:Lorg/jsoup/parser/ab;

    :goto_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    const p1, 0xfffd

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
