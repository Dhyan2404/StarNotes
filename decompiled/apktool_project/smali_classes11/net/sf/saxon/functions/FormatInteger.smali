.class public Lnet/sf/saxon/functions/FormatInteger;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/StatefulSystemFunction;


# static fields
.field public static final i:Lnet/sf/saxon/regex/RegularExpression;

.field public static final j:Lnet/sf/saxon/regex/RegularExpression;

.field public static final k:Lnet/sf/saxon/regex/RegularExpression;

.field public static final preface:Ljava/lang/String; = "In the picture string for format-integer, "


# instance fields
.field public h:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/value/IntegerValue;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "((\\d+|\\w+)#+.*)|(#+[^\\d]+)"

    const-string v1, ""

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatInteger;->i:Lnet/sf/saxon/regex/RegularExpression;

    const-string v0, "([co](\\(.*\\))?)?[at]?"

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatInteger;->j:Lnet/sf/saxon/regex/RegularExpression;

    const-string v0, "^((\\p{Nd}|#|[^\\p{N}\\p{L}])+?)$"

    invoke-static {v0, v1}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/FormatInteger;->k:Lnet/sf/saxon/regex/RegularExpression;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/FormatInteger;->h:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p5}, Lnet/sf/saxon/functions/FormatInteger;->e(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/functions/FormatInteger;->f(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/expr/number/NumberFormatter;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;
    .locals 8

    :try_start_0
    invoke-virtual {p5}, Lnet/sf/saxon/value/NumericValue;->abs()Lnet/sf/saxon/value/NumericValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/lib/Numberer;->format(JLnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result p1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public static synthetic f(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;
    .locals 8

    :try_start_0
    invoke-virtual {p4}, Lnet/sf/saxon/value/NumericValue;->abs()Lnet/sf/saxon/value/NumericValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/lib/Numberer;->format(JLnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result p1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method

.method public static getPicSeparators(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/number/NumericGroupFormatter;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lnet/sf/saxon/z/IntHashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lnet/sf/saxon/functions/FormatInteger;->i:Lnet/sf/saxon/regex/RegularExpression;

    invoke-interface {v4, v0}, Lnet/sf/saxon/regex/RegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v4

    const-string v5, "FODF1310"

    if-nez v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const/4 v10, 0x1

    move v12, v10

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const-wide/16 v17, 0x0

    cmp-long v17, v6, v17

    const/4 v4, 0x4

    if-ltz v17, :cond_b

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v9

    if-eq v9, v10, :cond_1

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    if-eq v9, v4, :cond_1

    if-eq v9, v2, :cond_1

    packed-switch v9, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v21

    const-wide/16 v19, 0x1

    sub-long v21, v21, v19

    cmp-long v9, v6, v21

    if-eqz v9, :cond_8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_2

    add-int/lit8 v11, v11, 0x1

    if-eqz v17, :cond_1

    sub-long v8, v6, v19

    invoke-virtual {v0, v8, v9}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    if-eq v8, v10, :cond_0

    if-eq v8, v4, :cond_0

    if-eq v8, v2, :cond_0

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :cond_0
    :pswitch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In the picture string for format-integer, the picture cannot contain alphanumeric character(s) before character \'#\'"

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    :pswitch_1
    const/4 v9, -0x1

    goto :goto_5

    :cond_2
    invoke-virtual {v1, v11}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    move v15, v11

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v4

    mul-int/2addr v4, v15

    if-eq v11, v4, :cond_4

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v8, :cond_5

    const/4 v12, 0x0

    :cond_5
    :goto_3
    if-eqz v17, :cond_6

    move v14, v11

    goto :goto_1

    :cond_6
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In the picture string for format-integer, the picture cannot begin with a separator"

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In the picture string for format-integer, the picture contains consecutive separators"

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In the picture string for format-integer, the picture cannot end with a separator"

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/4 v9, -0x1

    if-ne v13, v9, :cond_9

    invoke-static {v8}, Lnet/sf/saxon/expr/number/Alphanumeric;->getDigitFamily(I)I

    move-result v13

    goto :goto_4

    :cond_9
    invoke-static {v8}, Lnet/sf/saxon/expr/number/Alphanumeric;->getDigitFamily(I)I

    move-result v4

    if-ne v13, v4, :cond_a

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In the picture string for format-integer, the picture mixes digits from different digit families"

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :goto_5
    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    move-wide/from16 v8, v16

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v12, :cond_c

    invoke-virtual {v1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v2

    const/4 v5, 0x1

    if-lt v2, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    int-to-long v7, v14

    sub-long/2addr v5, v7

    invoke-virtual {v1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v2

    int-to-long v7, v2

    sub-long/2addr v5, v7

    int-to-long v7, v15

    cmp-long v2, v5, v7

    if-lez v2, :cond_c

    const/4 v12, 0x0

    :cond_c
    invoke-static {v0, v1}, Lnet/sf/saxon/functions/FormatInteger;->c(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v1}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v2

    const-string v5, ""

    if-eqz v2, :cond_d

    new-instance v1, Lnet/sf/saxon/expr/number/RegularGroupFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5, v0}, Lnet/sf/saxon/expr/number/RegularGroupFormatter;-><init>(ILjava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    return-object v1

    :cond_d
    const/4 v2, 0x0

    if-eqz v12, :cond_f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lnet/sf/saxon/expr/number/RegularGroupFormatter;

    invoke-direct {v1, v2, v5, v0}, Lnet/sf/saxon/expr/number/RegularGroupFormatter;-><init>(ILjava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    return-object v1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    new-instance v2, Lnet/sf/saxon/expr/number/RegularGroupFormatter;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v15, v1, v0}, Lnet/sf/saxon/expr/number/RegularGroupFormatter;-><init>(ILjava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    return-object v2

    :cond_f
    new-instance v2, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;

    invoke-direct {v2, v1, v3, v0}, Lnet/sf/saxon/expr/number/IrregularGroupFormatter;-><init>(Lnet/sf/saxon/z/IntSet;Ljava/util/List;Lnet/sf/saxon/str/UnicodeString;)V

    return-object v2

    :cond_10
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In the picture string for format-integer, the picture is not valid (it uses \'#\' where disallowed)"

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/FormatInteger;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v0, p2, v0

    .line 3
    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    .line 4
    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/StringValue;

    array-length v2, p2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    aget-object p2, p2, v3

    .line 5
    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    .line 6
    :goto_0
    invoke-virtual {p0, v0, v1, p2, p1}, Lnet/sf/saxon/functions/FormatInteger;->d(Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lnet/sf/saxon/functions/SystemFunction;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FormatInteger;

    iget-object p0, p0, Lnet/sf/saxon/functions/FormatInteger;->h:Ljava/util/function/Function;

    iput-object p0, v0, Lnet/sf/saxon/functions/FormatInteger;->h:Ljava/util/function/Function;

    return-object v0
.end method

.method public final d(Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p4

    if-nez p1, :cond_0

    sget-object p0, Lnet/sf/saxon/value/StringValue;->EMPTY_STRING:Lnet/sf/saxon/value/StringValue;

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/FormatInteger;->h:Ljava/util/function/Function;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lnet/sf/saxon/Configuration;->getDefaultLanguage()Ljava/lang/String;

    move-result-object p3

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Lnet/sf/saxon/Configuration;->makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object p3

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lnet/sf/saxon/functions/FormatInteger;->g(Lnet/sf/saxon/lib/Numberer;Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object v0

    :cond_2
    :try_start_0
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public final g(Lnet/sf/saxon/lib/Numberer;Ljava/lang/String;)Ljava/util/function/Function;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/lib/Numberer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/value/IntegerValue;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string v0, "FODF1310"

    if-nez p0, :cond_c

    const/16 p0, 0x3b

    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    if-ltz p0, :cond_3

    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge p0, v5, :cond_0

    add-int/2addr p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    sget-object p2, Lnet/sf/saxon/functions/FormatInteger;->j:Lnet/sf/saxon/regex/RegularExpression;

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-interface {p2, v5}, Lnet/sf/saxon/regex/RegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, v4

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "In the picture string for format-integer, the modifier is invalid"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "In the picture string for format-integer, the primary format token cannot be empty"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    move-object p0, v3

    :goto_1
    const-string v4, "o"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "a"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x28

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x29

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-gez v6, :cond_4

    move-object p0, v3

    goto :goto_2

    :cond_4
    add-int/2addr v6, v2

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz v5, :cond_5

    const-string v5, "alphabetic"

    goto :goto_3

    :cond_5
    const-string v5, "traditional"

    :goto_3
    move-object v10, v5

    if-eqz v4, :cond_7

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "yes"

    goto :goto_4

    :cond_6
    move-object v11, p0

    goto :goto_5

    :cond_7
    :goto_4
    move-object v11, v3

    :goto_5
    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const-string v3, "Nd"

    invoke-static {v3}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/regex/charclass/Categories$Category;->test(I)Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    :cond_9
    if-eqz v1, :cond_b

    sget-object p2, Lnet/sf/saxon/functions/FormatInteger;->k:Lnet/sf/saxon/regex/RegularExpression;

    invoke-interface {p2, p0}, Lnet/sf/saxon/regex/RegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p0}, Lnet/sf/saxon/functions/FormatInteger;->getPicSeparators(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/expr/number/NumericGroupFormatter;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/expr/number/NumericGroupFormatter;->getAdjustedPicture()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    new-instance p0, Lcom/sunia/HTREnginev2/etg;

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/sunia/HTREnginev2/etg;-><init>(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "In the picture string for format-integer, the primary format token contains a decimal digit but does not meet the rules for a decimal digit pattern"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    new-instance p2, Lcom/sunia/HTREnginev2/ftg;

    invoke-direct {p2, p1, p0, v10, v11}, Lcom/sunia/HTREnginev2/ftg;-><init>(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_c
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "In the picture string for format-integer, the picture cannot be empty"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public varargs makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    aget-object v1, p3, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    array-length v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    aget-object v2, p3, v3

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    array-length v2, p3

    if-ne v2, v4, :cond_2

    aget-object v2, p3, v3

    check-cast v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/Configuration;->makeNumberer(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/lib/Numberer;

    move-result-object v1

    aget-object v0, p3, v0

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->getGroundedValue()Lnet/sf/saxon/value/StringValue;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/functions/FormatInteger;->g(Lnet/sf/saxon/lib/Numberer;Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/FormatInteger;->h:Ljava/util/function/Function;

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->makeOptimizedFunctionCall(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
