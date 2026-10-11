.class public Lnet/sf/saxon/ma/json/JsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/json/JsonParser$b;,
        Lnet/sf/saxon/ma/json/JsonParser$JsonToken;
    }
.end annotation


# static fields
.field public static final ALLOW_ANY_TOP_LEVEL:I = 0x2

.field public static final DEBUG:I = 0x10

.field public static final DUPLICATES_FIRST:I = 0x80

.field public static final DUPLICATES_LAST:I = 0x40

.field public static final DUPLICATES_REJECTED:I = 0x100

.field public static final DUPLICATES_RETAINED:I = 0x20

.field public static final DUPLICATES_SPECIFIED:I = 0x1e0

.field public static final ESCAPE:I = 0x1

.field public static final LIBERAL:I = 0x4

.field public static final NESTING_LIMIT:I = 0x2710

.field public static final VALIDATE:I = 0x8

.field public static final c:Ljava/lang/String; = "FOJS0001"

.field public static final d:Ljava/lang/String; = "FOJS0003"

.field public static final e:Ljava/lang/String; = "FOJS0004"

.field public static final f:Ljava/lang/String; = "FOJS0005"

.field public static final g:Ljava/lang/String; = "FOJS0001"


# instance fields
.field public a:Lnet/sf/saxon/om/Function;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonParser;->a:Lnet/sf/saxon/om/Function;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid JSON input on line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/ma/json/JsonParser;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getFlags(Ljava/util/Map;ZZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;ZZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "debug"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/BooleanValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "escape"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/BooleanValue;

    const-string v3, "FOJS0005"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x1

    const-string v2, "fallback"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot specify a fallback function when escape=true"

    invoke-direct {p0, p1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const-string v2, "liberal"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/BooleanValue;

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v4

    :cond_3
    if-eqz p1, :cond_5

    const-string p1, "validate"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p2, :cond_4

    const-string p2, "Requiring validation on non-schema-aware processor"

    const-string v2, "FOJS0004"

    invoke-static {p2, v2}, Lnet/sf/saxon/ma/json/JsonParser;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_5
    move p1, v1

    :cond_6
    :goto_2
    const-string p2, "duplicates"

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const-string v2, "retain"

    const/4 v5, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_3
    move v1, v5

    goto :goto_4

    :sswitch_0
    const-string p2, "use-last"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    move v1, v4

    goto :goto_4

    :sswitch_2
    const-string p2, "reject"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_3
    const-string p2, "use-first"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    packed-switch v1, :pswitch_data_0

    const-string p2, "Invalid value for \'duplicates\' option"

    invoke-static {p2, v3}, Lnet/sf/saxon/ma/json/JsonParser;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_5

    :pswitch_1
    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :pswitch_2
    or-int/lit16 v0, v0, 0x100

    goto :goto_5

    :pswitch_3
    or-int/lit16 v0, v0, 0x80

    :goto_5
    if-eqz p1, :cond_b

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "The options validate:true and duplicates:retain cannot be used together"

    invoke-static {p0, v3}, Lnet/sf/saxon/ma/json/JsonParser;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6123d516 -> :sswitch_3
        -0x37b68c61 -> :sswitch_2
        -0x37b20efb -> :sswitch_1
        -0x13a3b4e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static showToken(Lnet/sf/saxon/ma/json/JsonParser$JsonToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/sf/saxon/ma/json/JsonParser$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "<eof>"

    return-object p0

    :pswitch_1
    const-string p0, ","

    return-object p0

    :pswitch_2
    const-string p0, ":"

    return-object p0

    :pswitch_3
    const-string p0, "}"

    return-object p0

    :pswitch_4
    const-string p0, "]"

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "string (\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const-string p0, "null"

    return-object p0

    :pswitch_7
    const-string p0, "false"

    return-object p0

    :pswitch_8
    const-string p0, "true"

    return-object p0

    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "number ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const-string p0, "["

    return-object p0

    :pswitch_b
    const-string p0, "{"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static unescape(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 p3, 0x5c

    invoke-virtual {p0, p3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_10

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p3, :cond_f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    if-eq v0, v4, :cond_e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_d

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_c

    if-eq v0, p3, :cond_b

    const/16 v4, 0x62

    if-eq v0, v4, :cond_a

    const/16 v4, 0x66

    if-eq v0, v4, :cond_9

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_8

    const/16 v4, 0x72

    if-eq v0, v4, :cond_7

    const/16 v4, 0x74

    if-eq v0, v4, :cond_6

    const/16 v4, 0x75

    if-eq v0, v4, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x100

    if-ge p0, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ""

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown escape sequence \\"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v4, v3, 0x5

    :try_start_0
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x4

    goto :goto_4

    :catch_0
    if-eqz p1, :cond_5

    const-string v0, "\\u"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Invalid JSON escape: \\u must be followed by four hex characters"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_6
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v3

    goto :goto_4

    :cond_e
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid JSON escape: String "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ends in backslash"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/2addr v0, v1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FOJS0001"

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/ma/json/JsonHandler;->startArray()V

    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/ma/json/JsonHandler;->endArray()V

    return-void

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/ma/json/JsonParser;->e(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "Arrays are too deeply nested"

    iget v3, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v2, v0, v3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->COMMA:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v2, v3, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const-string v2, "Trailing comma after entry in array"

    iget v3, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v2, v0, v3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    sget-object v3, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RSQB:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v2, v3, :cond_4

    :goto_3
    invoke-virtual {p1}, Lnet/sf/saxon/ma/json/JsonHandler;->endArray()V

    return-void

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected token ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lnet/sf/saxon/ma/json/JsonParser;->showToken(Lnet/sf/saxon/ma/json/JsonParser$JsonToken;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") after entry in array"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v2, v0, v3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final e(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->d:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    const/16 v3, 0x2710

    const-string v4, "FOJS0001"

    if-le v0, v3, :cond_2

    const-string v0, "Objects are too deeply nested"

    iget v3, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v0, v4, v3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->d:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    sget-object v3, Lnet/sf/saxon/ma/json/JsonParser$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected symbol: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget p1, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {p0, v4, p1}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_0
    iget-object p0, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget p2, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {p0, p3, v4, p2}, Lnet/sf/saxon/ma/json/JsonParser;->unescape(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/ma/json/JsonHandler;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lnet/sf/saxon/ma/json/JsonHandler;->writeNull()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v1}, Lnet/sf/saxon/ma/json/JsonHandler;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v2}, Lnet/sf/saxon/ma/json/JsonHandler;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p2, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-virtual {p0, v0, p3, p2, p4}, Lnet/sf/saxon/ma/json/JsonParser;->f(Ljava/lang/String;IILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/ma/json/JsonHandler;->writeNumeric(Ljava/lang/String;Lnet/sf/saxon/value/AtomicValue;)V

    goto :goto_1

    :pswitch_5
    iget v0, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/ma/json/JsonParser;->d(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V

    iget p1, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    goto :goto_1

    :pswitch_6
    iget v0, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/ma/json/JsonParser;->g(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V

    iget p1, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lnet/sf/saxon/ma/json/JsonParser;->b:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/String;IILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "."

    const-string v1, "0"

    and-int/lit8 p2, p2, 0x4

    const/4 v2, 0x1

    const-string v3, "FOJS0001"

    if-nez p2, :cond_5

    :try_start_0
    const-string p2, "+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Leading + sign not allowed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3, p3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0e"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0E"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redundant leading zeroes not allowed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, p3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".e"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".E"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "Empty fractional part not allowed"

    invoke-static {v1, v3, p3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Empty integer part not allowed"

    invoke-static {p2, v3, p3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_1
    iget-object p2, p0, Lnet/sf/saxon/ma/json/JsonParser;->a:Lnet/sf/saxon/om/Function;

    if-eqz p2, :cond_6

    new-array p2, v2, [Lnet/sf/saxon/om/Sequence;

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v0, p2, p1

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonParser;->a:Lnet/sf/saxon/om/Function;

    invoke-static {p0, p4, p2}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    return-object p0

    :cond_6
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object p2

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid numeric literal: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3, p3}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-object p0
.end method

.method public final g(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/ma/json/JsonHandler;->startMap()V

    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v1

    :cond_1
    :goto_1
    sget-object v2, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-eq v1, v2, :cond_b

    sget-object v2, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->STRING_LITERAL:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v3, "FOJS0001"

    if-eq v1, v2, :cond_3

    sget-object v2, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->UNQUOTED_STRING:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property name must be a string literal (found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lnet/sf/saxon/ma/json/JsonParser;->showToken(Lnet/sf/saxon/ma/json/JsonParser$JsonToken;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v1, v3, v2}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    iget-object v1, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v1, p3, v3, v2}, Lnet/sf/saxon/ma/json/JsonParser;->unescape(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/ma/json/JsonHandler;->reEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->COLON:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    const-string v6, "\""

    if-eq v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing colon after \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v4, v3, v5}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/ma/json/JsonHandler;->setKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    and-int/lit16 v4, p3, 0x100

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate key value \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOJS0003"

    iget v6, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v4, v5, v6}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    if-eqz v2, :cond_7

    and-int/lit8 v2, p3, 0x60

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    :try_start_0
    new-instance v2, Lnet/sf/saxon/ma/json/JsonHandler;

    invoke-direct {v2}, Lnet/sf/saxon/ma/json/JsonHandler;-><init>()V

    invoke-virtual {v2, p4}, Lnet/sf/saxon/ma/json/JsonHandler;->setContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0, v2, p2, p3, p4}, Lnet/sf/saxon/ma/json/JsonParser;->e(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/ma/json/JsonParser;->e(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v2, "Objects are too deeply nested"

    iget v4, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v2, v3, v4}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_3
    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->COMMA:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v2, v4, :cond_9

    invoke-virtual {p2}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v2, "Trailing comma after entry in object"

    iget v4, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v2, v3, v4}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->RCURLY:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-ne v2, v4, :cond_a

    goto :goto_4

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected token after value of \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" property"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p2, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {v1, v3, v4}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    goto/16 :goto_1

    :cond_b
    :goto_4
    invoke-virtual {p1}, Lnet/sf/saxon/ma/json/JsonHandler;->endMap()V

    return-void
.end method

.method public parse(Ljava/lang/String;ILnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "FOJS0001"

    if-eqz v0, :cond_0

    const-string v0, "An empty string is not valid JSON"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Lnet/sf/saxon/ma/json/JsonParser$b;

    invoke-direct {v0, p1}, Lnet/sf/saxon/ma/json/JsonParser$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    :try_start_0
    invoke-virtual {p0, p3, v0, p2, p4}, Lnet/sf/saxon/ma/json/JsonParser;->e(Lnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/ma/json/JsonParser$b;ILnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iget p1, v0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {p0, v1, p1}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/ma/json/JsonParser$b;->a()Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/ma/json/JsonParser$JsonToken;->EOF:Lnet/sf/saxon/ma/json/JsonParser$JsonToken;

    if-eq p0, p1, :cond_1

    const-string p0, "Unexpected token beyond end of JSON input"

    iget p1, v0, Lnet/sf/saxon/ma/json/JsonParser$b;->c:I

    invoke-static {p0, v1, p1}, Lnet/sf/saxon/ma/json/JsonParser;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setNumberParser(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "number-parser"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/Sequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    const-string v1, "FOJS0005"

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/om/Function;

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonParser;->a:Lnet/sf/saxon/om/Function;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p1, v0, v2}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonParser;->a:Lnet/sf/saxon/om/Function;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/type/SpecificFunctionType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Number-parser function does not match the required type"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Number-parser function must have arity=1"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Value of option \'number-parser\' is not a function"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
