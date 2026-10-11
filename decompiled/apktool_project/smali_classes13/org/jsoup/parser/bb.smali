.class final enum Lorg/jsoup/parser/bb;
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
    .locals 0

    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/CharacterReader;->v(C)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->c(C)V

    invoke-virtual {p1}, Lorg/jsoup/parser/r;->y()V

    sget-object p0, Lorg/jsoup/parser/ab;->G:Lorg/jsoup/parser/ab;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->n(Lorg/jsoup/parser/ab;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/jsoup/parser/ab;->C:Lorg/jsoup/parser/ab;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/r;->f(Lorg/jsoup/parser/ab;)V

    :goto_0
    return-void
.end method
