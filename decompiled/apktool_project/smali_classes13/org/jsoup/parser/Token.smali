.class public abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/Token$TokenType;,
        Lorg/jsoup/parser/Token$e;,
        Lorg/jsoup/parser/Token$a;,
        Lorg/jsoup/parser/Token$b;,
        Lorg/jsoup/parser/Token$c;,
        Lorg/jsoup/parser/Token$EndTag;,
        Lorg/jsoup/parser/Token$StartTag;,
        Lorg/jsoup/parser/Token$Tag;,
        Lorg/jsoup/parser/Token$d;
    }
.end annotation


# instance fields
.field public a:Lorg/jsoup/parser/Token$TokenType;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/jsoup/parser/c0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/jsoup/parser/Token;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()Lorg/jsoup/parser/Token;
.end method

.method public final asCharacter()Lorg/jsoup/parser/Token$b;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$b;

    return-object p0
.end method

.method public final asComment()Lorg/jsoup/parser/Token$c;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$c;

    return-object p0
.end method

.method public final asDoctype()Lorg/jsoup/parser/Token$d;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$d;

    return-object p0
.end method

.method public final asEndTag()Lorg/jsoup/parser/Token$EndTag;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$EndTag;

    return-object p0
.end method

.method public final asStartTag()Lorg/jsoup/parser/Token$StartTag;
    .locals 0

    check-cast p0, Lorg/jsoup/parser/Token$StartTag;

    return-object p0
.end method

.method public byteEndPos()I
    .locals 0

    iget p0, p0, Lorg/jsoup/parser/Token;->c:I

    return p0
.end method

.method public byteStartPos()I
    .locals 0

    iget p0, p0, Lorg/jsoup/parser/Token;->b:I

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isCData()Z
    .locals 0

    instance-of p0, p0, Lorg/jsoup/parser/Token$a;

    return p0
.end method

.method public final isCharacter()Z
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isComment()Z
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDoctype()Z
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEOF()Z
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEndTag()Z
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStartTag()Z
    .locals 1

    iget-object p0, p0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setByteEndPos(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/parser/Token;->c:I

    return-void
.end method

.method public setByteStartPos(I)V
    .locals 0

    iput p1, p0, Lorg/jsoup/parser/Token;->b:I

    return-void
.end method
