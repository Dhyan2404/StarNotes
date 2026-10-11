.class public Lorg/apache/xerces/impl/xpath/regex/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xpath/regex/c$a;
    }
.end annotation


# static fields
.field public static final A:I = 0xe

.field public static final B:I = 0xf

.field public static final C:I = 0x10

.field public static final D:I = 0x11

.field public static final E:I = 0x12

.field public static final F:I = 0x13

.field public static final G:I = 0x14

.field public static final H:I = 0x15

.field public static final I:I = 0x16

.field public static final J:I = 0x17

.field public static final K:I = 0x18

.field public static final L:I = 0x0

.field public static final M:I = 0x1

.field public static final N:I = 0x2

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static final s:I = 0x6

.field public static final t:I = 0x7

.field public static final u:I = 0x8

.field public static final v:I = 0x9

.field public static final w:I = 0xa

.field public static final x:I = 0xb

.field public static final y:I = 0xc

.field public static final z:I = 0xd


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/util/ResourceBundle;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->i:I

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->W(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->i:I

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/c;->W(Ljava/util/Locale;)V

    return-void
.end method

.method public static final a(Lorg/apache/xerces/impl/xpath/regex/RangeToken;I)V
    .locals 2

    invoke-static {p1}, Lcom/sunia/HTREnginev2/xnd;->f(I)[I

    move-result-object v0

    invoke-virtual {p0, p1, p1}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget v1, v0, p1

    invoke-virtual {p0, v1, v1}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final b(Lorg/apache/xerces/impl/xpath/regex/RangeToken;II)V
    .locals 4

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    move p2, p1

    move p1, v3

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_1
    if-le p1, p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/sunia/HTREnginev2/xnd;->f(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_2
    array-length v2, v0

    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    aget v2, v0, v1

    invoke-virtual {p0, v2, v2}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public static final g(I)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x30

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x66

    if-le p0, v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_2

    sub-int/2addr p0, v1

    return p0

    :cond_2
    const/16 v1, 0x41

    if-ge p0, v1, :cond_3

    return v0

    :cond_3
    const/16 v2, 0x46

    if-gt p0, v2, :cond_5

    :cond_4
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_5
    const/16 v1, 0x61

    if-ge p0, v1, :cond_4

    return v0
.end method


# virtual methods
.method public A()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_wordend:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public B()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v0, 0x69

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lorg/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0
.end method

.method public C()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_wordbeginning:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public D(I)Lorg/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_2

    const/16 v0, 0x70

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p0

    invoke-static {v0, p1, p0}, Lorg/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "parser.atom.3"

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_2
    iget p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr p1, v1

    const-string v0, "parser.atom.2"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public E()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_stringend:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public F(Lorg/apache/xerces/impl/xpath/regex/RangeToken;I)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->d()I

    move-result p0

    return p0
.end method

.method public G()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public H()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v1, v2, :cond_d

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-string v4, "parser.factor.1"

    const/4 v5, 0x1

    if-gt v1, v0, :cond_6

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    const/16 v6, 0x30

    sub-int/2addr v0, v6

    iget v7, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    if-le v7, v0, :cond_5

    :goto_0
    iget v7, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v8, v7, 0x1

    iget v9, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-lt v8, v9, :cond_0

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v6, v7, :cond_1

    if-gt v7, v1, :cond_1

    mul-int/lit8 v8, v0, 0xa

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v7, v8

    iget v8, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    if-ge v7, v8, :cond_2

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    move v0, v7

    goto :goto_0

    :cond_1
    :goto_1
    move v7, v0

    :cond_2
    iput-boolean v5, p0, Lorg/apache/xerces/impl/xpath/regex/c;->k:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    new-instance v6, Lorg/apache/xerces/impl/xpath/regex/c$a;

    iget v8, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-direct {v6, v0, v8}, Lorg/apache/xerces/impl/xpath/regex/c$a;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    move-object v0, v3

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_5
    const-string v0, "parser.parse.2"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_6
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->m()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget v1, v0, Lorg/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v6, 0x8

    if-eq v1, v6, :cond_8

    packed-switch v1, :pswitch_data_0

    const-string v0, "parser.factor.5"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-ne v1, v2, :cond_c

    :pswitch_0
    const/4 v7, -0x1

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iget v6, v1, Lorg/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_a

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v3

    if-ne v3, v8, :cond_9

    invoke-virtual {v1, v5}, Lorg/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    goto :goto_3

    :cond_9
    const-string v0, "parser.factor.6"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v6

    if-ne v6, v2, :cond_b

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {v7, v0, v1, v3}, Lorg/apache/xerces/impl/xpath/regex/Token;->createCondition(ILorg/apache/xerces/impl/xpath/regex/Token;Lorg/apache/xerces/impl/xpath/regex/Token;Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    move-result-object p0

    return-object p0

    :cond_b
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v5

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_c
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v5

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_d
    const-string v1, "parser.factor.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public I()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public J()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    const/16 v0, 0x18

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createLook(ILorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public K()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    const/16 v0, 0x14

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createLook(ILorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public L()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    const/16 v0, 0x16

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createLook(ILorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public M()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->e(I)I

    move-result v3

    if-nez v3, :cond_9

    :goto_1
    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    const-string v5, "parser.factor.2"

    if-ge v3, v4, :cond_8

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-lt v3, v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->e(I)I

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v3, v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v5, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_3
    or-int/2addr v0, v3

    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    goto :goto_2

    :cond_4
    :goto_4
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_6

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lorg/apache/xerces/impl/xpath/regex/Token;II)Lorg/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    goto :goto_5

    :cond_5
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_6
    const/16 v3, 0x29

    if-ne v1, v3, :cond_7

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    invoke-static {p0, v2, v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lorg/apache/xerces/impl/xpath/regex/Token;II)Lorg/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v0

    :goto_5
    return-object v0

    :cond_7
    const-string v0, "parser.factor.3"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_8
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v5, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_9
    or-int/2addr v2, v3

    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    goto/16 :goto_0
.end method

.method public N()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    const/16 v0, 0x15

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createLook(ILorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public O()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    const/16 v0, 0x17

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createLook(ILorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public P()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->i:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createParen(Lorg/apache/xerces/impl/xpath/regex/Token;I)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public Q()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createParen(Lorg/apache/xerces/impl/xpath/regex/Token;I)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.factor.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public R(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {p1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createConcat(Lorg/apache/xerces/impl/xpath/regex/Token;Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createClosure(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object p0

    goto :goto_0
.end method

.method public S(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createUnion()Lorg/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    :goto_0
    return-object v0
.end method

.method public T(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {p1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createClosure(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object p0

    return-object p0
.end method

.method public final U()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->g:I

    return p0
.end method

.method public final V(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->h:I

    return-void
.end method

.method public W(Ljava/util/Locale;)V
    .locals 2

    const-string v0, "org.apache.xerces.impl.xpath.regex.message"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->e:Ljava/util/ResourceBundle;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Installation Problem???  Couldn\'t load messages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x3f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v2, 0x41

    if-eq v0, v2, :cond_19

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_19

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_18

    const/16 v1, 0x72

    if-eq v0, v1, :cond_17

    const/16 v1, 0x78

    const v2, 0x10ffff

    const-string v3, "parser.descape.1"

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_19

    const/16 v1, 0x65

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_0

    move v1, v0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_5

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_4

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_2

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    if-gt v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descappe.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_1
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_2
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_3
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_4
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_5
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_6
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v0

    if-ltz v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_9

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_9

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_8

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_7

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_8
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_9
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_a
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_2
    const/16 v1, 0x9

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0xc

    goto/16 :goto_2

    :cond_c
    const/16 v1, 0x1b

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v0

    if-gez v0, :cond_10

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_f

    if-gt v1, v2, :cond_e

    goto :goto_2

    :cond_e
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_f
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.3"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_10
    mul-int/lit8 v4, v1, 0x10

    if-gt v1, v4, :cond_11

    add-int v1, v4, v0

    goto :goto_0

    :cond_11
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.descape.2"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_12
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_13
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-nez v1, :cond_14

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/c;->g(I)I

    move-result v1

    if-ltz v1, :cond_14

    :goto_1
    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    goto :goto_2

    :cond_14
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_15
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_16
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_17
    const/16 v1, 0xd

    :cond_18
    :goto_2
    return v1

    :cond_19
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.descape.5"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_1a
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.next.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/ParseException;

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->e:Ljava/util/ResourceBundle;

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lorg/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public f(I)Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 6

    const/16 v0, 0x44

    const-string v1, "Nd"

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-eq p1, v0, :cond_a

    const/16 v0, 0x53

    const-string v4, "IsSpace"

    if-eq p1, v0, :cond_8

    const/16 v0, 0x57

    const-string v5, "IsWord"

    if-eq p1, v0, :cond_6

    const/16 v0, 0x64

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_2

    const/16 v0, 0x77

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_0
    invoke-static {v5, v2}, Lorg/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p0

    goto :goto_3

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lorg/apache/xerces/impl/xpath/regex/Token;

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Internal Error: shorthands: \\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_1
    invoke-static {v4, v2}, Lorg/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p0

    goto :goto_3

    :cond_3
    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lorg/apache/xerces/impl/xpath/regex/Token;

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_2
    invoke-static {v1, v2}, Lorg/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p0

    goto :goto_3

    :cond_5
    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lorg/apache/xerces/impl/xpath/regex/Token;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lorg/apache/xerces/impl/xpath/regex/Token;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lorg/apache/xerces/impl/xpath/regex/Token;

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_2

    :cond_b
    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lorg/apache/xerces/impl/xpath/regex/Token;

    :goto_3
    return-object p0
.end method

.method public final h(I)Z
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->d:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()V
    .locals 12

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    iput v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->g:I

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->h:I

    const/16 v3, 0x3a

    const-string v4, "parser.next.1"

    const/16 v5, 0xa

    const/16 v6, 0x2d

    const/16 v7, 0x5c

    const/16 v8, 0x200

    const/16 v9, 0x5b

    const/4 v10, 0x0

    if-ne v1, v2, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v9, :cond_3

    if-eq v0, v7, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v2

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p0, v8}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_4

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    const/16 v5, 0x14

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->f(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->g(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->a(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    :cond_5
    move v5, v10

    goto :goto_1

    :cond_6
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_5

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    const/16 v5, 0x18

    :goto_1
    iput v5, p0, Lorg/apache/xerces/impl/xpath/regex/c;->g:I

    return-void

    :cond_7
    const/16 v1, 0x24

    if-eq v0, v1, :cond_20

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1e

    const/16 v11, 0x5e

    if-eq v0, v11, :cond_1c

    const/16 v8, 0x7c

    const/4 v11, 0x2

    if-eq v0, v8, :cond_1b

    if-eq v0, v9, :cond_1a

    if-eq v0, v7, :cond_18

    const/4 v5, 0x3

    packed-switch v0, :pswitch_data_0

    :goto_2
    move v5, v10

    goto/16 :goto_6

    :pswitch_0
    const/4 v5, 0x4

    goto/16 :goto_6

    :pswitch_1
    const/4 v5, 0x7

    goto/16 :goto_6

    :pswitch_2
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-lt v0, v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_9

    :goto_3
    const/4 v5, 0x6

    goto/16 :goto_6

    :cond_9
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    const-string v4, "parser.next.2"

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_16

    const/16 v7, 0x23

    if-eq v0, v7, :cond_13

    if-eq v0, v3, :cond_12

    if-eq v0, v9, :cond_11

    packed-switch v0, :pswitch_data_1

    if-eq v0, v6, :cond_d

    const/16 v1, 0x61

    if-gt v1, v0, :cond_a

    const/16 v1, 0x7a

    if-le v0, v1, :cond_d

    :cond_a
    const/16 v1, 0x41

    if-gt v1, v0, :cond_b

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_b

    goto :goto_4

    :cond_b
    const/16 v1, 0x28

    if-ne v0, v1, :cond_c

    const/16 v5, 0x17

    goto/16 :goto_6

    :cond_c
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v11

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_d
    :goto_4
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    const/16 v5, 0x16

    goto/16 :goto_6

    :pswitch_3
    const/16 v5, 0x12

    goto/16 :goto_6

    :pswitch_4
    const/16 v5, 0xe

    goto/16 :goto_6

    :pswitch_5
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_e

    const/16 v5, 0x10

    goto/16 :goto_6

    :cond_e
    if-ne v0, v1, :cond_f

    const/16 v5, 0x11

    goto/16 :goto_6

    :cond_f
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v5

    const-string v1, "parser.next.3"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_10
    sub-int/2addr v0, v5

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_11
    const/16 v5, 0x13

    goto/16 :goto_6

    :cond_12
    const/16 v5, 0xd

    goto/16 :goto_6

    :cond_13
    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    const/16 v4, 0x29

    if-lt v1, v3, :cond_14

    goto :goto_5

    :cond_14
    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_13

    :goto_5
    if-ne v0, v4, :cond_15

    const/16 v5, 0x15

    goto :goto_6

    :cond_15
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v2

    const-string v1, "parser.next.4"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_16
    const/16 v5, 0xf

    goto :goto_6

    :cond_17
    sub-int/2addr v0, v2

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_18
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    goto :goto_6

    :cond_19
    sub-int/2addr v0, v2

    invoke-virtual {p0, v4, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_1a
    const/16 v5, 0x9

    goto :goto_6

    :cond_1b
    move v5, v11

    goto :goto_6

    :cond_1c
    invoke-virtual {p0, v8}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_2

    :cond_1d
    const/16 v5, 0xb

    goto :goto_6

    :cond_1e
    const/4 v5, 0x5

    goto :goto_6

    :cond_1f
    const/16 v5, 0x8

    goto :goto_6

    :cond_20
    invoke-virtual {p0, v8}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_2

    :cond_21
    const/16 v5, 0xc

    :goto_6
    :pswitch_6
    iput v5, p0, Lorg/apache/xerces/impl/xpath/regex/c;->g:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized j(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->d:I

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/xpath/regex/c;->V(I)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->i:I

    iput-boolean p2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->k:Z

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->n()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p1

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/xpath/regex/c$a;

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    iget v2, v0, Lorg/apache/xerces/impl/xpath/regex/c$a;->a:I

    if-le v1, v2, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "parser.parse.2"

    iget p2, v0, Lorg/apache/xerces/impl/xpath/regex/c$a;->b:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_1
    const-string p1, "parser.parse.1"

    iget p2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p1

    throw p1

    :cond_5
    const-string p1, "parser.parse.1"

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    const-string v1, "parser.atom.4"

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const/4 v3, 0x6

    if-eq v0, v3, :cond_e

    const/16 v3, 0xd

    if-eq v0, v3, :cond_d

    const/16 v3, 0x12

    if-eq v0, v3, :cond_c

    const/16 v3, 0x13

    if-eq v0, v3, :cond_b

    const/16 v3, 0x16

    if-eq v0, v3, :cond_a

    const/16 v3, 0x17

    if-eq v0, v3, :cond_9

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v1, 0x43

    if-eq v0, v1, :cond_8

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x49

    if-eq v0, v1, :cond_6

    const/16 v1, 0x50

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_7

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_4

    const/16 v1, 0x57

    if-eq v0, v1, :cond_7

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    :goto_0
    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lorg/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->z()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->y()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->q()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->v()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_1
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->d()I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lorg/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->B()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_4
    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->D(I)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "parser.atom.5"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->u()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_7
    :pswitch_5
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->f(I)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->t()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/xpath/regex/c;->l(Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object v0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_dot:Lorg/apache/xerces/impl/xpath/regex/Token;

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->H()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->M()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->o()Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->J()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->Q()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->P()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_f
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_11

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_11

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_11

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lorg/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->f(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v3

    if-nez v3, :cond_10

    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    invoke-static {v3}, Lorg/apache/xerces/impl/xpath/regex/REUtil;->g(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [C

    int-to-char v1, v1

    const/4 v3, 0x0

    aput-char v1, v0, v3

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    int-to-char v1, v1

    aput-char v1, v0, v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lorg/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lorg/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/apache/xerces/impl/xpath/regex/Token;->createParen(Lorg/apache/xerces/impl/xpath/regex/Token;I)Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    :goto_2
    return-object v0

    :cond_11
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public l(Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->V(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v2

    const/16 v3, 0x5e

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget v2, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    if-ne v2, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createNRange()Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createRange()Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v5

    const v2, 0x10ffff

    invoke-virtual {v5, v4, v2}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createRange()Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createRange()Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    move v6, v4

    :goto_1
    move v7, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v8

    const-string v9, "parser.cc.2"

    if-ne v8, v1, :cond_2

    goto/16 :goto_6

    :cond_2
    const/16 v10, 0x5d

    if-nez v8, :cond_3

    iget v11, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    if-ne v11, v10, :cond_3

    if-nez v7, :cond_3

    goto/16 :goto_6

    :cond_3
    iget v11, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v12, 0x18

    const/16 v13, 0xa

    if-ne v8, v13, :cond_8

    const/16 v7, 0x43

    if-eq v11, v7, :cond_7

    const/16 v7, 0x44

    if-eq v11, v7, :cond_6

    const/16 v7, 0x49

    if-eq v11, v7, :cond_7

    const/16 v7, 0x50

    if-eq v11, v7, :cond_4

    const/16 v7, 0x53

    if-eq v11, v7, :cond_6

    const/16 v7, 0x57

    if-eq v11, v7, :cond_6

    const/16 v7, 0x69

    if-eq v11, v7, :cond_7

    const/16 v7, 0x70

    if-eq v11, v7, :cond_4

    const/16 v7, 0x73

    if-eq v11, v7, :cond_6

    const/16 v7, 0x77

    if-eq v11, v7, :cond_6

    const/16 v7, 0x63

    if-eq v11, v7, :cond_7

    const/16 v7, 0x64

    if-eq v11, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->d()I

    move-result v11

    goto/16 :goto_8

    :cond_4
    iget v7, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v11}, Lorg/apache/xerces/impl/xpath/regex/c;->D(I)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v2, v14}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_3

    :cond_5
    const-string v1, "parser.atom.5"

    invoke-virtual {v0, v1, v7}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-virtual {v0, v11}, Lorg/apache/xerces/impl/xpath/regex/c;->f(I)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    :goto_3
    move v3, v1

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v0, v2, v11}, Lorg/apache/xerces/impl/xpath/regex/c;->F(Lorg/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v11

    if-gez v11, :cond_13

    goto :goto_3

    :cond_8
    const/16 v14, 0x14

    if-ne v8, v14, :cond_d

    iget-object v7, v0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    const/16 v14, 0x3a

    iget v15, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const-string v14, "parser.cc.1"

    if-ltz v7, :cond_c

    iget-object v15, v0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    iget v13, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v3, :cond_9

    iget v13, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v13, v1

    iput v13, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    move v13, v4

    goto :goto_4

    :cond_9
    move v13, v1

    :goto_4
    iget-object v15, v0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    iget v3, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v15, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x200

    invoke-virtual {v0, v15}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v15

    invoke-static {v3, v13, v15}, Lorg/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    add-int/lit8 v3, v7, 0x1

    iget v13, v0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v3, v13, :cond_a

    iget-object v13, v0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_a

    add-int/lit8 v7, v7, 0x2

    iput v7, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v14, v7}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_b
    const-string v1, "parser.cc.3"

    iget v2, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    iget v1, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v14, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_d
    if-ne v8, v12, :cond_13

    if-nez v7, :cond_13

    if-eqz v6, :cond_f

    if-eqz p1, :cond_e

    invoke-static {v2}, Lorg/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move v6, v4

    goto :goto_5

    :cond_e
    invoke-virtual {v5, v2}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    move v6, v4

    move-object v2, v5

    :cond_f
    :goto_5
    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/xpath/regex/c;->l(Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v3

    if-nez v3, :cond_12

    iget v3, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    if-ne v3, v10, :cond_12

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v3

    if-eq v3, v1, :cond_11

    if-nez p1, :cond_10

    if-eqz v6, :cond_10

    invoke-virtual {v5, v2}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_7

    :cond_10
    move-object v5, v2

    :goto_7
    invoke-virtual {v5}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {v0, v4}, Lorg/apache/xerces/impl/xpath/regex/c;->V(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v5

    :cond_11
    iget v1, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v9, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_12
    const-string v1, "parser.cc.5"

    iget v2, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_13
    :goto_8
    move v3, v4

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    if-nez v3, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v3

    const v7, 0xffff

    const/4 v13, 0x2

    if-nez v3, :cond_1e

    iget v3, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v14, 0x2d

    if-eq v3, v14, :cond_14

    goto :goto_d

    :cond_14
    if-eq v8, v12, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v3

    if-eq v3, v1, :cond_1c

    if-nez v3, :cond_17

    iget v8, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    if-ne v8, v10, :cond_17

    invoke-virtual {v0, v13}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v3

    if-eqz v3, :cond_16

    if-le v11, v7, :cond_15

    goto :goto_a

    :cond_15
    invoke-static {v2, v11}, Lorg/apache/xerces/impl/xpath/regex/c;->a(Lorg/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto :goto_b

    :cond_16
    :goto_a
    invoke-virtual {v2, v11, v11}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_b
    invoke-virtual {v2, v14, v14}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_f

    :cond_17
    iget v8, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v9, 0xa

    if-ne v3, v9, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->d()I

    move-result v8

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    if-gt v11, v8, :cond_1b

    invoke-virtual {v0, v13}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-le v11, v7, :cond_19

    if-le v8, v7, :cond_19

    goto :goto_c

    :cond_19
    invoke-static {v2, v11, v8}, Lorg/apache/xerces/impl/xpath/regex/c;->b(Lorg/apache/xerces/impl/xpath/regex/RangeToken;II)V

    goto :goto_f

    :cond_1a
    :goto_c
    invoke-virtual {v2, v11, v8}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_f

    :cond_1b
    iget v2, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v2, v1

    const-string v1, "parser.ope.3"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_1c
    iget v1, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v9, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_1d
    iget v2, v0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    sub-int/2addr v2, v1

    const-string v1, "parser.cc.8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_1e
    :goto_d
    invoke-virtual {v0, v13}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v3

    if-eqz v3, :cond_20

    if-le v11, v7, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-static {v2, v11}, Lorg/apache/xerces/impl/xpath/regex/c;->a(Lorg/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto :goto_f

    :cond_20
    :goto_e
    invoke-virtual {v2, v11, v11}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :cond_21
    :goto_f
    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->h(I)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v3

    if-nez v3, :cond_22

    iget v3, v0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v7, 0x2c

    if-ne v3, v7, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    :cond_22
    move v7, v4

    const/16 v3, 0x5e

    goto/16 :goto_2
.end method

.method public m()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->O()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->L()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->N()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->K()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->I()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->G()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x62

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->s()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->r()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->E()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->x()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->w()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->A()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->C()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->k()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->S(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->R(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->T(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0

    :cond_a
    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1a

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_19

    const/16 v4, 0x39

    if-gt v1, v4, :cond_19

    add-int/lit8 v5, v1, -0x30

    :goto_1
    iget v6, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    const-string v7, "parser.quantifier.5"

    if-ge v3, v6, :cond_e

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_d

    if-le v1, v4, :cond_b

    goto :goto_2

    :cond_b
    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v1

    sub-int/2addr v5, v2

    if-ltz v5, :cond_c

    move v3, v6

    goto :goto_1

    :cond_c
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v7, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_d
    :goto_2
    move v3, v6

    :cond_e
    const/16 v6, 0x2c

    if-ne v1, v6, :cond_16

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v3, v1, :cond_15

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_14

    if-gt v1, v4, :cond_14

    add-int/lit8 v3, v1, -0x30

    :goto_3
    iget v8, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v6, v8, :cond_12

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_11

    if-le v1, v4, :cond_f

    goto :goto_4

    :cond_f
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    if-ltz v3, :cond_10

    move v6, v8

    goto :goto_3

    :cond_10
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v7, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_11
    :goto_4
    move v6, v8

    :cond_12
    if-gt v5, v3, :cond_13

    goto :goto_5

    :cond_13
    const-string v0, "parser.quantifier.4"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_14
    const/4 v3, -0x1

    :goto_5
    move v2, v3

    move v3, v6

    goto :goto_6

    :cond_15
    const-string v0, "parser.quantifier.3"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_16
    move v2, v5

    :goto_6
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_18

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/xpath/regex/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_17
    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createClosure(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    :goto_7
    iput v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v0, v5}, Lorg/apache/xerces/impl/xpath/regex/Token;->setMin(I)V

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xpath/regex/Token;->setMax(I)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    goto :goto_8

    :cond_18
    const-string v0, "parser.quantifier.2"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_19
    const-string v0, "parser.quantifier.1"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_1a
    :goto_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public n()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->p()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    if-nez v1, :cond_1

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createUnion()Lorg/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->p()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method public o()Lorg/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->l(Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v1

    :cond_0
    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v4, 0x26

    const/16 v5, 0x2d

    const/4 v6, 0x4

    if-nez v2, :cond_1

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_2

    :cond_1
    if-ne v2, v6, :cond_7

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_6

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->l(Z)Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v7

    if-ne v2, v6, :cond_3

    invoke-virtual {v1, v7}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_4

    invoke-virtual {v1, v7}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_4
    if-ne v3, v4, :cond_5

    invoke-virtual {v1, v7}, Lorg/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ASSERT"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.ope.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0

    :cond_7
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.ope.2"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public p()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->m()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->U()I

    move-result v5

    if-eq v5, v1, :cond_3

    if-eq v5, v2, :cond_3

    if-ne v5, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createConcat()Lorg/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    move-object v0, v4

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->m()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/xpath/regex/Token;->addChild(Lorg/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    :goto_2
    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0
.end method

.method public q()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    const/16 v1, 0x30

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    if-le v2, v0, :cond_3

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v1, v2, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v5, v2, -0x30

    add-int/2addr v3, v5

    iget v5, p0, Lorg/apache/xerces/impl/xpath/regex/c;->j:I

    if-ge v3, v5, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iput v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->f:I

    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createBackReference(I)Lorg/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v1

    iput-boolean v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->k:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->l:Ljava/util/Vector;

    new-instance v3, Lorg/apache/xerces/impl/xpath/regex/c$a;

    iget v4, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v3, v0, v4}, Lorg/apache/xerces/impl/xpath/regex/c$a;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    return-object v1

    :cond_3
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x2

    const-string v1, "parser.parse.2"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public r()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_stringbeginning:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public s()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_not_wordedge:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public t()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string v0, "parser.process.1"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public u()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string v0, "parser.process.1"

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public v()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->getCombiningCharacterSequence()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0
.end method

.method public w()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_stringend2:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public x()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sget-object p0, Lorg/apache/xerces/impl/xpath/regex/Token;->token_wordedge:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public y()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/c;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xffe0

    and-int/2addr v1, v0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    sub-int/2addr v0, v2

    invoke-static {v0}, Lorg/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lorg/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/c;->a:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "parser.atom.1"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/xpath/regex/c;->e(Ljava/lang/String;I)Lorg/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object p0

    throw p0
.end method

.method public z()Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xpath/regex/c;->i()V

    invoke-static {}, Lorg/apache/xerces/impl/xpath/regex/Token;->getGraphemePattern()Lorg/apache/xerces/impl/xpath/regex/Token;

    move-result-object p0

    return-object p0
.end method
