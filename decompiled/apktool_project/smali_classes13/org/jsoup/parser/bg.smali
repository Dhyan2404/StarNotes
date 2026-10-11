.class final enum Lorg/jsoup/parser/bg;
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

    if-eqz v0, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x60

    if-eq v0, v1, :cond_3

    const v1, 0xffff

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/parser/r;->o()V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    goto :goto_3

    :cond_0
    sget-object p0, Lorg/jsoup/parser/ab;->M:Lorg/jsoup/parser/ab;

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->H()V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    goto :goto_0

    :cond_3
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    goto :goto_2

    :cond_4
    sget-object p0, Lorg/jsoup/parser/ab;->L:Lorg/jsoup/parser/ab;

    goto :goto_3

    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    const p2, 0xfffd

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Token$Tag;->g(C)V

    :goto_2
    sget-object p0, Lorg/jsoup/parser/ab;->N:Lorg/jsoup/parser/ab;

    :goto_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
