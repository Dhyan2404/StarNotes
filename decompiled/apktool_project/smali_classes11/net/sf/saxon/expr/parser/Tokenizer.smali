.class public final Lnet/sf/saxon/expr/parser/Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BARE_NAME_STATE:I = 0x1

.field public static final DEFAULT_STATE:I = 0x0

.field public static final NUL:C = '\u0000'

.field public static final OPERATOR_STATE:I = 0x3

.field public static final SEQUENCE_TYPE_STATE:I = 0x2


# instance fields
.field public a:I

.field public allowSaxonExtensions:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public currentToken:I

.field public currentTokenStartOffset:I

.field public currentTokenValue:Ljava/lang/String;

.field public d:I

.field public disallowUnionKeyword:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public input:Ljava/lang/String;

.field public inputOffset:I

.field public isXQuery:Z

.field public j:Ljava/lang/String;

.field public languageLevel:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->a:I

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/4 v2, 0x1

    iput v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    iput v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    const-string v1, ""

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->j:Ljava/lang/String;

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->isXQuery:Z

    const/16 v1, 0x14

    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    const/16 p0, 0x96

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Ljava/lang/String;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x1f

    const/16 v4, 0x1d

    const/16 v5, 0x1c

    const/16 v6, 0x1b

    const/16 v7, 0x1a

    const/16 v8, 0x19

    const/16 v9, 0x18

    const/16 v10, 0x17

    const/16 v11, 0x14

    const/16 v12, 0x13

    const/16 v13, 0x12

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x1

    const/16 v17, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move/from16 v1, v17

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "intersect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "where"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "union"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "after"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v5

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "then"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v6

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "into"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v7

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "idiv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v1, v8

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "else"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v9

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "case"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    move v1, v10

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "mod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "div"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "and"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    move v1, v11

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "to"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    move v1, v12

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "or"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    move v1, v13

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "ne"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "lt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "le"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "is"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "gt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "ge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "eq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    move v1, v14

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "by"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    move v1, v15

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "as"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "andAlso"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1b
    const-string v2, "return"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v2, "orElse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1d
    const-string v2, "modify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1e
    const-string v2, "except"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1f
    const-string v2, "before"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_20
    const-string v2, "satisfies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_0

    :cond_20
    move/from16 v1, v16

    goto :goto_1

    :sswitch_21
    const-string v2, "otherwise"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    return v17

    :pswitch_0
    const/16 v0, 0xd4

    return v0

    :pswitch_1
    return v10

    :pswitch_2
    return v5

    :pswitch_3
    return v16

    :pswitch_4
    const/16 v0, 0x76

    return v0

    :pswitch_5
    const/16 v0, 0x79

    return v0

    :pswitch_6
    return v7

    :pswitch_7
    const/16 v0, 0x78

    return v0

    :pswitch_8
    const/16 v0, 0x38

    return v0

    :pswitch_9
    return v6

    :pswitch_a
    const/16 v0, 0x43

    return v0

    :pswitch_b
    return v12

    :pswitch_c
    return v13

    :pswitch_d
    return v14

    :pswitch_e
    return v4

    :pswitch_f
    return v15

    :pswitch_10
    const/16 v0, 0x33

    return v0

    :pswitch_11
    const/16 v0, 0x35

    return v0

    :pswitch_12
    const/16 v0, 0x37

    return v0

    :pswitch_13
    return v11

    :pswitch_14
    return v3

    :pswitch_15
    const/16 v0, 0x34

    return v0

    :pswitch_16
    const/16 v0, 0x36

    return v0

    :pswitch_17
    const/16 v0, 0x32

    return v0

    :pswitch_18
    const/16 v0, 0x52

    return v0

    :pswitch_19
    const/16 v0, 0x47

    return v0

    :pswitch_1a
    iget-boolean v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    if-eqz v0, :cond_22

    const/16 v17, 0x50

    :cond_22
    return v17

    :pswitch_1b
    return v8

    :pswitch_1c
    iget-boolean v0, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    if-eqz v0, :cond_23

    const/16 v17, 0x51

    :cond_23
    return v17

    :pswitch_1d
    const/16 v0, 0x44

    return v0

    :pswitch_1e
    return v9

    :pswitch_1f
    const/16 v0, 0x77

    return v0

    :pswitch_20
    const/16 v0, 0x22

    return v0

    :pswitch_21
    const/16 v0, 0x4f

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73ebd84c -> :sswitch_21
        -0x56ebebbf -> :sswitch_20
        -0x5305c081 -> :sswitch_1f
        -0x4cdcfae7 -> :sswitch_1e
        -0x3fb48746 -> :sswitch_1d
        -0x3c2e9a44 -> :sswitch_1c
        -0x37b1c2d0 -> :sswitch_1b
        -0x336e19c2 -> :sswitch_1a
        0xc32 -> :sswitch_19
        0xc57 -> :sswitch_18
        0xcac -> :sswitch_17
        0xcde -> :sswitch_16
        0xced -> :sswitch_15
        0xd25 -> :sswitch_14
        0xd2a -> :sswitch_13
        0xd79 -> :sswitch_12
        0xd88 -> :sswitch_11
        0xdb7 -> :sswitch_10
        0xde3 -> :sswitch_f
        0xe7b -> :sswitch_e
        0x179d7 -> :sswitch_d
        0x18491 -> :sswitch_c
        0x1a702 -> :sswitch_b
        0x2e7b30 -> :sswitch_a
        0x2f8d39 -> :sswitch_9
        0x313f88 -> :sswitch_8
        0x316660 -> :sswitch_7
        0x364e1d -> :sswitch_6
        0x37b0c6 -> :sswitch_5
        0x58705dc -> :sswitch_4
        0x6a456cf -> :sswitch_3
        0x6bdbce7 -> :sswitch_2
        0x1dfb651f -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "document-node"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "empty-sequence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "function"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "union"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "tuple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "array"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "attribute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "node"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "enum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "if"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "typeswitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "processing-instruction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_12
    const-string v0, "record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_13
    const-string v0, "atomic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_14
    const-string v0, "schema-element"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_15
    const-string v0, "element"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_16
    const-string v0, "schema-attribute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_17
    const-string v0, "namespace-node"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_18
    const-string v0, "otherwise"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v2, 0x0

    :goto_0
    const/16 p1, 0x45

    const/16 v0, 0x23

    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x25

    return p0

    :pswitch_1
    const/16 p0, 0x41

    return p0

    :pswitch_2
    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    if-ne p0, v1, :cond_19

    goto :goto_1

    :cond_19
    const/16 v0, 0x42

    :goto_1
    return v0

    :pswitch_3
    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->allowSaxonExtensions:Z

    if-eqz p0, :cond_1a

    goto :goto_2

    :cond_1a
    move p1, v0

    :goto_2
    :pswitch_4
    return p1

    :pswitch_5
    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->languageLevel:I

    if-ne p0, v1, :cond_1b

    move p1, v0

    :cond_1b
    return p1

    :pswitch_6
    const/16 p0, 0x4f

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73ebd84c -> :sswitch_18
        -0x72df64cc -> :sswitch_17
        -0x6cd81290 -> :sswitch_16
        -0x631ce104 -> :sswitch_15
        -0x5da1f930 -> :sswitch_14
        -0x53e329d5 -> :sswitch_13
        -0x37b993af -> :sswitch_12
        -0x350448cc -> :sswitch_11
        -0x27b7d72c -> :sswitch_10
        -0x1e0b8d12 -> :sswitch_f
        0xd1d -> :sswitch_e
        0x1a55c -> :sswitch_d
        0x2f9501 -> :sswitch_c
        0x317b13 -> :sswitch_b
        0x33ae02 -> :sswitch_a
        0x36452d -> :sswitch_9
        0x368f3a -> :sswitch_8
        0xc7aa9c -> :sswitch_7
        0x58c7259 -> :sswitch_6
        0x69987c8 -> :sswitch_5
        0x6a456cf -> :sswitch_4
        0x38a5ee5f -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x56d21c41 -> :sswitch_1
        0x5bbe7774 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final d(I)J
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    if-nez v0, :cond_0

    int-to-long p0, p1

    return-wide p0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    sub-int/2addr p1, v1

    int-to-long p0, p1

    or-long/2addr p0, v2

    return-wide p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    int-to-long p0, p1

    return-wide p0
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return p0
.end method

.method public g(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    const-string v1, "..."

    if-ne p1, v0, :cond_2

    iget p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-le p1, v0, :cond_0

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    :cond_0
    iget p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v0, 0x22

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/lit8 v1, p0, -0x1e

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, p1, 0x1e

    iget v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 4

    .line 1
    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->d(I)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getColumnNumber(I)I
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/Tokenizer;->d(I)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    return p0
.end method

.method public getLineNumber(I)I
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/Tokenizer;->d(I)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->a:I

    return p0
.end method

.method public incrementLineNumber(I)V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public lookAhead()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    :goto_0
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    iput v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_0
    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_52

    const/16 v2, 0xa

    if-eq v1, v2, :cond_51

    const/16 v4, 0xd

    if-eq v1, v4, :cond_52

    const/16 v5, 0x51

    const/16 v6, 0x46

    const/16 v7, 0x7f

    const/16 v8, 0x7b

    const/16 v9, 0xd5

    const/16 v10, 0x2d

    const/16 v12, 0x2e

    const/16 v13, 0x5f

    const/4 v15, 0x2

    const/16 v14, 0x3a

    const/4 v11, 0x1

    if-eq v1, v5, :cond_37

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_36

    const/16 v5, 0x5d

    if-eq v1, v5, :cond_35

    const/16 v5, 0xb6

    if-eq v1, v5, :cond_37

    if-eq v1, v13, :cond_41

    const/16 v5, 0x60

    if-eq v1, v5, :cond_2f

    const/16 v13, 0x3d

    packed-switch v1, :pswitch_data_0

    const/16 v5, 0x29

    const/16 v2, 0x3e

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    :goto_1
    const/16 v2, 0x80

    goto/16 :goto_15

    :pswitch_0
    const/16 v1, 0xd7

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_1
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_1

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x1e

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_1
    iput v11, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_2
    const/16 v1, 0x3b

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_3
    const/4 v1, 0x3

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_4
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_2

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x30

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_2
    iput v9, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_5
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v3, :cond_3

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_3

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_3
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v3, :cond_4

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x27

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_4
    const/16 v1, 0xb

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_6
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v3, :cond_5

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_5

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x4d

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_5
    const/4 v1, 0x6

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_7
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_6

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_6

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0xe

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_6
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_7

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_7

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x26

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_7
    const/16 v1, 0xc

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_8
    const/16 v1, 0x95

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iput v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->a:I

    return-void

    :pswitch_9
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_a

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_8

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_8
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_9

    iput v14, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    return-void

    :cond_9
    const/16 v1, 0x4c

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Unexpected colon at start of token"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_b

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_b

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x8

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_b
    iput v15, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_b
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v4, :cond_c

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_c

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0xce

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_c
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v4, :cond_d

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_d

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const-string v1, "."

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v1, 0x3c

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_d
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-eq v2, v4, :cond_19

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_19

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x39

    if-le v2, v4, :cond_e

    goto/16 :goto_7

    :cond_e
    const-string v2, "goto case \'0\';"

    invoke-static {v2}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :pswitch_c
    move v2, v3

    move v4, v11

    move v5, v4

    move v6, v5

    :goto_2
    const/16 v8, 0x2b

    if-eq v1, v8, :cond_15

    const/16 v8, 0x45

    if-eq v1, v8, :cond_13

    const/16 v8, 0x65

    if-eq v1, v8, :cond_13

    if-eq v1, v10, :cond_15

    if-eq v1, v12, :cond_11

    packed-switch v1, :pswitch_data_3

    const/16 v6, 0x61

    if-gt v6, v1, :cond_f

    const/16 v6, 0x7a

    if-le v1, v6, :cond_10

    :cond_f
    if-gt v1, v7, :cond_10

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    sub-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_4

    :cond_10
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Separator needed after numeric literal"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    :pswitch_d
    move v2, v3

    goto :goto_5

    :cond_11
    if-eqz v4, :cond_12

    move v2, v3

    move v4, v2

    goto :goto_5

    :cond_12
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    sub-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_4

    :cond_13
    if-eqz v5, :cond_14

    move v5, v3

    move v2, v11

    goto :goto_5

    :cond_14
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    sub-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_4

    :cond_15
    if-eqz v2, :cond_16

    goto :goto_3

    :cond_16
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    sub-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    :goto_4
    move v6, v3

    :goto_5
    if-eqz v6, :cond_18

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v8, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-lt v1, v8, :cond_17

    goto :goto_6

    :cond_17
    iget-object v8, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    iput v9, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_18
    :goto_6
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v1, 0xd1

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_19
    :goto_7
    const/16 v1, 0xcd

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_e
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v3, :cond_1a

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1a

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x53

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_1a
    const/16 v1, 0x10

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_f
    const/4 v1, 0x7

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_10
    const/16 v1, 0xf

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_11
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_1c

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_1c

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/lit8 v2, v1, 0x1

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v3, :cond_1c

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    add-int/2addr v1, v11

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v7, :cond_1b

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isNCNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_1c
    const/16 v1, 0xcf

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_12
    const/16 v1, 0xcc

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_13
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_22

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_22

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    move v3, v11

    :goto_8
    if-lez v3, :cond_20

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    sub-int/2addr v6, v11

    if-ge v4, v6, :cond_20

    iget-object v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->e()V

    goto :goto_9

    :cond_1d
    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1e

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1e

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v4, v11

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_9

    :cond_1e
    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x28

    if-ne v4, v6, :cond_1f

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1f

    add-int/lit8 v3, v3, 0x1

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v4, v11

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    :cond_1f
    :goto_9
    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v4, v11

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_8

    :cond_20
    if-gtz v3, :cond_21

    const/16 v2, 0xda

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    sub-int/2addr v3, v15

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    return-void

    :cond_21
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Unclosed XQuery pragma"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_28

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_28

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    move v1, v11

    :goto_a
    if-lez v1, :cond_26

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    sub-int/2addr v3, v11

    if-ge v2, v3, :cond_26

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->e()V

    goto :goto_b

    :cond_23
    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_24

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_24

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v2, v11

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_b

    :cond_24
    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_25

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_25

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v2, v11

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    :cond_25
    :goto_b
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v2, v11

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_a

    :cond_26
    if-gtz v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    goto :goto_c

    :cond_27
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Unclosed XPath comment"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v1, 0x5

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    :goto_c
    return-void

    :pswitch_14
    const/16 v1, 0x6a

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_15
    const/16 v1, 0x15

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_16
    const/16 v1, 0x2c

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :pswitch_17
    const-string v2, ""

    iput-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    :goto_d
    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    if-ltz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    add-int/2addr v5, v11

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v4, :cond_29

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    add-int/2addr v2, v11

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_d

    :cond_29
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2b

    :goto_e
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_2b

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2a

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    add-int/2addr v1, v3

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->incrementLineNumber(I)V

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0xa

    goto :goto_e

    :cond_2b
    const/16 v1, 0xca

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_2c
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Unmatched quote in expression"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_2e

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_2d

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x16

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_2d
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_2e

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v1, 0x31

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_2e
    const/16 v1, 0x28

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_2f
    iget-boolean v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->isXQuery:Z

    if-eqz v1, :cond_34

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    sub-int/2addr v2, v11

    if-ge v1, v2, :cond_34

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_34

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_34

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v15

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    :goto_f
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v1, v2, :cond_33

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_30

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_30
    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_31

    add-int/lit8 v2, v1, 0x1

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v6, :cond_31

    iget-object v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_31

    const/16 v2, 0x4e

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    add-int/2addr v1, v15

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->incrementLineNumber(I)V

    return-void

    :cond_31
    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x5d

    if-ne v2, v6, :cond_32

    add-int/lit8 v2, v1, 0x2

    iget v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v6, :cond_32

    iget-object v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_32

    iget-object v6, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_32

    const/16 v2, 0xde

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/parser/Tokenizer;->incrementLineNumber(I)V

    return-void

    :cond_32
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_33
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Unclosed string template in expression"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Invalid character \'`\' (backtick) in expression"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    const/16 v1, 0xcb

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_36
    const/4 v1, 0x4

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_37
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v4, :cond_3e

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_3e

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    const/16 v4, 0x7d

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    if-lt v1, v2, :cond_3d

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    add-int/2addr v1, v11

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    :goto_11
    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v4, v5, :cond_3a

    iget-object v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-gt v4, v5, :cond_39

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_39

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_39

    if-eq v4, v12, :cond_39

    if-ne v4, v10, :cond_38

    goto :goto_12

    :cond_38
    const/16 v5, 0x2a

    if-ne v4, v5, :cond_3a

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    if-ne v1, v4, :cond_3a

    add-int/2addr v4, v11

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    move v3, v11

    goto :goto_13

    :cond_39
    :goto_12
    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v4, v11

    iput v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto :goto_11

    :cond_3a
    :goto_13
    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Q{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    if-eqz v3, :cond_3b

    const/16 v14, 0xd0

    goto :goto_14

    :cond_3b
    const/16 v14, 0xc9

    :goto_14
    iput v14, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_3c
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "EQName must not contain opening brace"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Missing closing brace in EQName"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    const-string v2, "goto default;"

    invoke-static {v2}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_15
    if-ge v1, v2, :cond_40

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_16

    :cond_3f
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' (x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") in expression"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    :goto_16
    const-string v1, "goto case \'_\';"

    invoke-static {v1}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_41
    move v1, v3

    :goto_17
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v2, v4, :cond_50

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_4c

    if-eq v2, v12, :cond_4c

    if-eq v2, v14, :cond_44

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_43

    const/16 v4, 0x80

    if-ge v2, v4, :cond_42

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_42

    move v1, v11

    :cond_42
    :goto_18
    const/16 v5, 0x5f

    goto/16 :goto_1a

    :cond_43
    const/16 v4, 0x80

    goto :goto_18

    :cond_44
    const/16 v4, 0x80

    if-nez v3, :cond_4b

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    if-eq v2, v9, :cond_4a

    if-ne v2, v6, :cond_45

    goto :goto_19

    :cond_45
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/lit8 v3, v2, 0x1

    iget v5, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v3, v5, :cond_48

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_46

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v1, 0x24

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v15

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    return-void

    :cond_46
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_47

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v1, 0xd0

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v1, v15

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    return-void

    :cond_47
    const/16 v5, 0x5f

    if-eq v2, v5, :cond_49

    if-gt v2, v7, :cond_49

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v1, 0xc9

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_48
    const/16 v5, 0x5f

    :cond_49
    move v3, v11

    goto :goto_1a

    :cond_4a
    :goto_19
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v1, 0xc9

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_4b
    const/16 v5, 0x5f

    move v1, v11

    goto :goto_1a

    :cond_4c
    const/16 v4, 0x80

    const/16 v5, 0x5f

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    const/16 v8, 0x96

    if-le v2, v8, :cond_4e

    if-eq v2, v9, :cond_4e

    if-eq v2, v6, :cond_4e

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v8, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v13, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v2, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_4e

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    const/16 v13, 0xc9

    if-ne v2, v13, :cond_4d

    iget-object v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/Tokenizer;->b(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_4e

    :cond_4d
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_4e
    const-string v2, "goto case \'_\';"

    invoke-static {v2}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :goto_1a
    if-eqz v1, :cond_4f

    goto :goto_1b

    :cond_4f
    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/2addr v2, v11

    iput v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    goto/16 :goto_17

    :cond_50
    :goto_1b
    iget-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v2, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iget v3, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const/16 v1, 0xc9

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    return-void

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->e()V

    const-string v1, "goto case \' \';"

    invoke-static {v1}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_52
    :pswitch_19
    iget v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput v1, v0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_17
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public next()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->j:Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iput-object v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    iput-object v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    :cond_0
    iget v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iput v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenStartOffset:I

    iget v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    iput v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    const/16 v2, 0xc

    const/16 v3, 0xd9

    const/16 v4, 0xc9

    const/4 v5, -0x1

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_2

    const/16 v2, 0xcf

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x11

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->b(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->isXQuery:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v3, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    :cond_4
    :goto_0
    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-eq v0, v3, :cond_22

    const/16 v1, 0xd7

    if-ne v0, v1, :cond_5

    goto/16 :goto_7

    :cond_5
    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    if-ne v1, v4, :cond_22

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    return-void

    :cond_6
    const/16 v3, 0x15

    if-ne v0, v3, :cond_7

    return-void

    :cond_7
    iget v6, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1f

    const/16 v0, 0x20

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eq v6, v3, :cond_18

    const/16 v3, 0x2c

    if-eq v6, v3, :cond_17

    const/16 v3, 0x3b

    if-eq v6, v3, :cond_16

    const/16 v1, 0x6a

    if-eq v6, v1, :cond_15

    if-eq v6, v4, :cond_a

    const/16 v0, 0x29

    if-eq v6, v0, :cond_9

    const/16 v0, 0x2a

    if-eq v6, v0, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    const/16 v0, 0xd0

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    const/16 v0, 0x24

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto/16 :goto_7

    :cond_a
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v2, v5

    goto :goto_2

    :sswitch_0
    const-string v2, "namespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    move v2, v8

    goto :goto_2

    :sswitch_1
    const-string v2, "attribute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    move v2, v10

    goto :goto_2

    :sswitch_2
    const-string v6, "processing-instruction"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :sswitch_3
    const-string v2, "element"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    move v2, v9

    :cond_e
    :goto_2
    packed-switch v2, :pswitch_data_0

    move v1, v5

    goto :goto_3

    :pswitch_0
    const/16 v1, 0x40

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x3e

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x3f

    goto :goto_3

    :pswitch_3
    const/16 v1, 0x3d

    :goto_3
    if-eq v1, v5, :cond_10

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iget-object v6, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iget v7, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    iget v8, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    if-ne v8, v3, :cond_f

    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    iput-object v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    return-void

    :cond_f
    iput v4, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    iput-object v6, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    iput v7, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput v4, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    iput-object v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/expr/parser/Token;->doubleKeywords:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_11

    goto/16 :goto_7

    :cond_11
    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const/16 v2, 0x72

    if-ne v1, v2, :cond_14

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    if-ne v1, v4, :cond_13

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const-string v2, "of"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    if-ne v0, v4, :cond_12

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    goto :goto_4

    :cond_12
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "After \'replace value of\', expected \'node\'"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', expected \'of\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    return-void

    :cond_15
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    const-string v1, "declare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x7b

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto/16 :goto_7

    :cond_16
    if-eq v1, v10, :cond_22

    const/16 v0, 0x3c

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    goto/16 :goto_7

    :cond_17
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    const/16 v0, 0x2b

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto/16 :goto_7

    :cond_18
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_5

    :sswitch_4
    const-string v2, "every"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_5

    :cond_19
    move v5, v7

    goto :goto_5

    :sswitch_5
    const-string v2, "count"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_5

    :cond_1a
    const/4 v5, 0x4

    goto :goto_5

    :sswitch_6
    const-string v2, "some"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_5

    :cond_1b
    move v5, v8

    goto :goto_5

    :sswitch_7
    const-string v2, "copy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_5

    :cond_1c
    move v5, v10

    goto :goto_5

    :sswitch_8
    const-string v3, "let"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_5

    :cond_1d
    move v5, v2

    goto :goto_5

    :sswitch_9
    const-string v2, "for"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_5

    :cond_1e
    move v5, v9

    :goto_5
    packed-switch v5, :pswitch_data_1

    goto :goto_7

    :pswitch_4
    const/16 v0, 0x21

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_7

    :pswitch_5
    const/16 v0, 0xdc

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_7

    :pswitch_6
    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_7

    :pswitch_7
    const/16 v0, 0xdb

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_7

    :pswitch_8
    const/16 v0, 0xd8

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_7

    :pswitch_9
    const/16 v0, 0xd3

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_7

    :cond_1f
    iget-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/parser/Tokenizer;->b(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_21

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_6

    :cond_20
    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_7

    :cond_21
    :goto_6
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    :cond_22
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631ce104 -> :sswitch_3
        -0x27b7d72c -> :sswitch_2
        0xc7aa9c -> :sswitch_1
        0x4aa3555b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x18cc9 -> :sswitch_9
        0x1a21b -> :sswitch_8
        0x2eaf75 -> :sswitch_7
        0x35f4f4 -> :sswitch_6
        0x5a7510f -> :sswitch_5
        0x5c6731b -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public nextChar()C
    .locals 3

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->e()V

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setState(I)V
    .locals 1

    iput p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->a:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    const-string v0, ""

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->j:Ljava/lang/String;

    iput p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 p1, 0xcc

    iput p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->i:I

    const-string v0, ")"

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->j:Ljava/lang/String;

    iput p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    :cond_1
    :goto_0
    return-void
.end method

.method public tokenize(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->c:Ljava/lang/String;

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->d:I

    iput p2, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    goto :goto_0

    :cond_0
    iput p3, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->e:I

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->lookAhead()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/Tokenizer;->next()V

    return-void
.end method

.method public treatCurrentAsOperator()V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentTokenValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/Tokenizer;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->currentToken:I

    :cond_2
    :goto_0
    return-void
.end method

.method public unreadChar()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->input:Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->inputOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->g:I

    iget v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->f:I

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/Tokenizer;->h:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
