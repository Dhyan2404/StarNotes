.class final enum Lorg/jsoup/parser/ae;
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

    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->v(C)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->y()V

    sget-object p0, Lorg/jsoup/parser/ab;->l:Lorg/jsoup/parser/ab;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->n(Lorg/jsoup/parser/ab;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->B()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->A()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "</"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->q(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->a(Z)Lorg/jsoup/parser/Token$Tag;

    move-result-object p0

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object p0

    iput-object p0, p1, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->o()V

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->H()V

    sget-object p0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    goto :goto_0

    :cond_1
    const-string p0, "<"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    sget-object p0, Lorg/jsoup/parser/ab;->c:Lorg/jsoup/parser/ab;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    :goto_1
    return-void
.end method
