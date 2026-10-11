.class public final Lorg/jsoup/parser/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final r:C = '\ufffd'

.field public static final s:[C

.field public static final t:I = 0x80

.field public static final u:[I


# instance fields
.field public final a:Lorg/jsoup/parser/CharacterReader;

.field public final b:Lorg/jsoup/parser/ParseErrorList;

.field public c:Lorg/jsoup/parser/ab;

.field public d:Lorg/jsoup/parser/Token;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/StringBuilder;

.field public h:Ljava/lang/StringBuilder;

.field public i:Lorg/jsoup/parser/Token$Tag;

.field public j:Lorg/jsoup/parser/Token$StartTag;

.field public k:Lorg/jsoup/parser/Token$EndTag;

.field public l:Lorg/jsoup/parser/Token$b;

.field public m:Lorg/jsoup/parser/Token$d;

.field public n:Lorg/jsoup/parser/Token$c;

.field public o:Ljava/lang/String;

.field public final p:[I

.field public final q:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/parser/r;->s:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/jsoup/parser/r;->u:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/parser/ab;->a:Lorg/jsoup/parser/ab;

    iput-object v0, p0, Lorg/jsoup/parser/r;->c:Lorg/jsoup/parser/ab;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/r;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/r;->g:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/r;->h:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/r;->j:Lorg/jsoup/parser/Token$StartTag;

    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/r;->k:Lorg/jsoup/parser/Token$EndTag;

    new-instance v0, Lorg/jsoup/parser/Token$b;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/r;->l:Lorg/jsoup/parser/Token$b;

    new-instance v0, Lorg/jsoup/parser/Token$d;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$d;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/r;->m:Lorg/jsoup/parser/Token$d;

    new-instance v0, Lorg/jsoup/parser/Token$c;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/r;->p:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/r;->q:[I

    iput-object p1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    iput-object p2, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/r;->o:Ljava/lang/String;

    return-object p0
.end method

.method public B()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(Z)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/r;->j:Lorg/jsoup/parser/Token$StartTag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->p()Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/r;->k:Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->p()Lorg/jsoup/parser/Token$Tag;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    return-object p1
.end method

.method public b()Lorg/jsoup/parser/Token;
    .locals 5

    :goto_0
    iget-boolean v0, p0, Lorg/jsoup/parser/r;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/r;->c:Lorg/jsoup/parser/ab;

    iget-object v1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/parser/ab;->a(Lorg/jsoup/parser/r;Lorg/jsoup/parser/CharacterReader;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/r;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iput-object v2, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    iget-object p0, p0, Lorg/jsoup/parser/r;->l:Lorg/jsoup/parser/Token$b;

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Token$b;->e(Ljava/lang/String;)Lorg/jsoup/parser/Token$b;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/r;->l:Lorg/jsoup/parser/Token$b;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$b;->e(Ljava/lang/String;)Lorg/jsoup/parser/Token$b;

    move-result-object v0

    iput-object v2, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    return-object v0

    :cond_2
    iput-boolean v3, p0, Lorg/jsoup/parser/r;->e:Z

    iget-object p0, p0, Lorg/jsoup/parser/r;->d:Lorg/jsoup/parser/Token;

    return-object p0
.end method

.method public c(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    iget-object p1, p0, Lorg/jsoup/parser/r;->l:Lorg/jsoup/parser/Token$b;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->m(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/r;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/r;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/r;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/r;->l:Lorg/jsoup/parser/Token$b;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->q(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public e(Lorg/jsoup/parser/Token;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jsoup/parser/r;->e:Z

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    iput-object p1, p0, Lorg/jsoup/parser/r;->d:Lorg/jsoup/parser/Token;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/r;->e:Z

    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/jsoup/parser/Token$StartTag;

    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/parser/r;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_2

    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    iget-object v0, p1, Lorg/jsoup/parser/Token$Tag;->j:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_1

    const-string v0, "Attributes incorrectly present on end tag"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/r;->l(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    const-string v0, "br"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/jsoup/parser/r;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/jsoup/parser/r;->f:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jsoup/parser/r;->e:Z

    const-string p1, "Ignore end tag (br)"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->l(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/r;->d:Lorg/jsoup/parser/Token;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->m(Lorg/jsoup/parser/Token;)V

    iget-object p1, p0, Lorg/jsoup/parser/r;->d:Lorg/jsoup/parser/Token;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->q(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public f(Lorg/jsoup/parser/ab;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/r;->c:Lorg/jsoup/parser/ab;

    return-void
.end method

.method public g([C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    return-void
.end method

.method public h([I)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/r;->d(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/Character;Z)[I
    .locals 8

    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    sget-object v0, Lorg/jsoup/parser/r;->s:[C

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/CharacterReader;->y([C)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p0, Lorg/jsoup/parser/r;->p:[I

    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->s()V

    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/CharacterReader;->t(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v3, ";"

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    iget-object p2, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->u(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    const-string p1, "numeric reference with no numerals"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->p(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->G()V

    return-object v1

    :cond_5
    iget-object v1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->I()V

    iget-object v1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/CharacterReader;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/r;->p(Ljava/lang/String;)V

    :cond_6
    if-eqz p2, :cond_7

    const/16 p2, 0x10

    goto :goto_2

    :cond_7
    const/16 p2, 0xa

    :goto_2
    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move p2, v1

    :goto_3
    if-eq p2, v1, :cond_b

    const v0, 0xd800

    if-lt p2, v0, :cond_8

    const v0, 0xdfff

    if-le p2, v0, :cond_b

    :cond_8
    const v0, 0x10ffff

    if-le p2, v0, :cond_9

    goto :goto_4

    :cond_9
    const/16 v0, 0x80

    if-lt p2, v0, :cond_a

    sget-object v1, Lorg/jsoup/parser/r;->u:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_a

    const-string v0, "character is not a valid unicode code point"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/r;->p(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x80

    aget p2, v1, p2

    :cond_a
    aput p2, p1, v4

    return-object p1

    :cond_b
    :goto_4
    const-string p2, "character outside of valid range"

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/r;->p(Ljava/lang/String;)V

    const p0, 0xfffd

    aput p0, p1, v4

    return-object p1

    :cond_c
    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/CharacterReader;->v(C)Z

    move-result v5

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->isBaseNamedEntity(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_e

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->isUserNamedEntity(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->isNamedEntity(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    move v6, v4

    goto :goto_6

    :cond_e
    :goto_5
    move v6, v7

    :goto_6
    if-nez v6, :cond_10

    iget-object p1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->G()V

    if-eqz v5, :cond_f

    const-string p1, "invalid named reference"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/r;->p(Ljava/lang/String;)V

    :cond_f
    return-object v1

    :cond_10
    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->B()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->z()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/CharacterReader;->x([C)Z

    move-result p2

    if-eqz p2, :cond_11

    goto/16 :goto_1

    :cond_11
    iget-object p2, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->I()V

    iget-object p2, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/CharacterReader;->t(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_12

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/r;->p(Ljava/lang/String;)V

    :cond_12
    iget-object p2, p0, Lorg/jsoup/parser/r;->q:[I

    invoke-static {v0, p2}, Lorg/jsoup/nodes/Entities;->codepointsForName(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v7, :cond_13

    iget-object p0, p0, Lorg/jsoup/parser/r;->q:[I

    aget p0, p0, v4

    aput p0, p1, v4

    return-object p1

    :cond_13
    const/4 p1, 0x2

    if-ne p2, p1, :cond_14

    iget-object p0, p0, Lorg/jsoup/parser/r;->q:[I

    return-object p0

    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/parser/r;->q:[I

    return-object p0

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public j(Z)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->v(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->f()C

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/jsoup/parser/r;->i(Ljava/lang/Character;Z)[I

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Lorg/jsoup/parser/ab;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/r;->c:Lorg/jsoup/parser/ab;

    return-object p0
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object p0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p0

    invoke-direct {v1, p0, p1}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public m(Lorg/jsoup/parser/Token;)V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->byteStartPos()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Token;->setByteStartPos(I)V

    return-void
.end method

.method public n(Lorg/jsoup/parser/ab;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    iput-object p1, p0, Lorg/jsoup/parser/r;->c:Lorg/jsoup/parser/ab;

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()V

    iget-object v0, p0, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/r;->e(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object p0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p0

    const-string v2, "Invalid character reference: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public q(Lorg/jsoup/parser/Token;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->byteEndPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Token;->setByteEndPos(I)V

    iget-object p0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->nextPos()V

    return-void
.end method

.method public r(Lorg/jsoup/parser/ab;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    iget-object p0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, p0}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public s()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$c;->a()Lorg/jsoup/parser/Token;

    return-void
.end method

.method public t(Lorg/jsoup/parser/ab;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/r;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object p0, p0, Lorg/jsoup/parser/r;->a:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p0

    const-string v2, "Unexpectedly reached end of file (EOF) in input state [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/r;->e(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$c;->a()Lorg/jsoup/parser/Token;

    iget-object p0, p0, Lorg/jsoup/parser/r;->n:Lorg/jsoup/parser/Token$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$c;->f:Z

    return-void
.end method

.method public w()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/r;->m:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$d;->a()Lorg/jsoup/parser/Token;

    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/r;->m:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/r;->e(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method public y()V
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/r;->h:Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/jsoup/parser/Token;->b(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/r;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/r;->i:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/jsoup/parser/r;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
