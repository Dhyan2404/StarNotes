.class final enum Lorg/jsoup/parser/af;
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

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->a(Z)Lorg/jsoup/parser/Token$Tag;

    iget-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->k(C)V

    iget-object p0, p1, Lorg/jsoup/parser/r;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/jsoup/parser/ab;->m:Lorg/jsoup/parser/ab;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->n(Lorg/jsoup/parser/ab;)V

    goto :goto_0

    :cond_0
    const-string p0, "</"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    sget-object p0, Lorg/jsoup/parser/ab;->c:Lorg/jsoup/parser/ab;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    :goto_0
    return-void
.end method
