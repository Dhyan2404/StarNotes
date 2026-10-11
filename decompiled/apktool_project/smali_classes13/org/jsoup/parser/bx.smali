.class final enum Lorg/jsoup/parser/bx;
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

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->w()V

    sget-object p0, Lorg/jsoup/parser/ab;->aa:Lorg/jsoup/parser/ab;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->f()C

    move-result p2

    if-eqz p2, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    const/16 p0, 0x9

    if-eq p2, p0, :cond_3

    const/16 p0, 0xa

    if-eq p2, p0, :cond_3

    const/16 p0, 0xc

    if-eq p2, p0, :cond_3

    const/16 p0, 0xd

    if-eq p2, p0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->w()V

    iget-object p0, p1, Lorg/jsoup/parser/r;->m:Lorg/jsoup/parser/Token$d;

    iget-object p0, p0, Lorg/jsoup/parser/Token$d;->d:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->t(Lorg/jsoup/parser/ab;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->w()V

    iget-object p0, p1, Lorg/jsoup/parser/r;->m:Lorg/jsoup/parser/Token$d;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/jsoup/parser/Token$d;->h:Z

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->x()V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->r(Lorg/jsoup/parser/ab;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->w()V

    iget-object p0, p1, Lorg/jsoup/parser/r;->m:Lorg/jsoup/parser/Token$d;

    iget-object p0, p0, Lorg/jsoup/parser/Token$d;->d:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/jsoup/parser/ab;->aa:Lorg/jsoup/parser/ab;

    :goto_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    :cond_3
    return-void
.end method
