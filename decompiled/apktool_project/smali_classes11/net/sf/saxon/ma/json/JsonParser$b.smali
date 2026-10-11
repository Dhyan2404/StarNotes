.class public Lnet/sf/saxon/ma/json/JsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/json/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

.field public e:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v1, 0xfeff

    if-ne p1, v1, :cond_0

    iget p1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/ma/json/JsonParser$b;->b()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->d:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object v0
.end method

.method public final b()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->EOF:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    iget v3, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v6, 0xd

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_5

    move v1, v5

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    iget v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    if-lez v2, :cond_3

    iget-object v6, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_4

    :cond_3
    iget v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    add-int/2addr v2, v5

    iput v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    :cond_4
    const-string v2, "goto case \' \';"

    invoke-static {v2}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_5
    iget v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    add-int/2addr v2, v5

    iput v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    iget-object v3, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_6

    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->EOF:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_6
    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const-string v3, "FOJS0001"

    if-eq v1, v2, :cond_15

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_14

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_13

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_12

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_11

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isNCNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    iget v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isNCNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    add-int/2addr v1, v5

    iput v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    move v0, v2

    goto :goto_3

    :sswitch_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_1
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    move v0, v5

    goto :goto_3

    :sswitch_2
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    packed-switch v0, :pswitch_data_2

    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->UNQUOTED_STRING:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->FALSE:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->TRUE:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->NULL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_b
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    sub-int/2addr v1, v5

    iput v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, ""

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected character"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (\\u"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") at position "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v0, v3, p0}, Lnet/sf/saxon/ma/json/JsonParser;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->EOF:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->COLON:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->COMMA:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :pswitch_5
    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_10

    :cond_d
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_e

    const/16 v1, 0x39

    if-le v0, v1, :cond_f

    :cond_e
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_f

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_f

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_f

    const/16 v1, 0x65

    if-eq v0, v1, :cond_f

    const/16 v1, 0x45

    if-ne v0, v1, :cond_10

    :cond_f
    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    add-int/2addr v0, v5

    iput v0, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_d

    :cond_10
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->NUMERIC_LITERAL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_11
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_12
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->LCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_13
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_14
    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->LSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_15
    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_16
    move v1, v0

    :goto_5
    iget v6, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    iget-object v7, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_17

    const-string v6, "Unclosed quotes in string literal"

    iget v7, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v6, v3, v7}, Lnet/sf/saxon/ma/json/JsonParser;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_17
    iget-object v6, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    iget v7, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v4, :cond_18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unescaped control character (x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v7, v3, v8}, Lnet/sf/saxon/ma/json/JsonParser;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_18
    if-eqz v1, :cond_19

    const/16 v7, 0x75

    if-ne v6, v7, :cond_19

    :try_start_0
    iget-object v7, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->a:Ljava/lang/String;

    iget v8, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->b:I

    add-int/lit8 v9, v8, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v7, "\\u must be followed by four hex characters"

    iget v8, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v7, v3, v8}, Lnet/sf/saxon/ma/json/JsonParser;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_19
    :goto_6
    if-ne v6, v2, :cond_1a

    if-nez v1, :cond_1a

    sget-object p0, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->STRING_LITERAL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    return-object p0

    :cond_1a
    iget-object v7, p0, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_16

    if-nez v1, :cond_16

    move v1, v5

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x33c587 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
