.class public Lnet/sf/saxon/expr/number/NumberFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lnet/sf/saxon/z/IntPredicateProxy;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/str/UnicodeString;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/str/UnicodeString;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "N"

    invoke-static {v0}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v0

    const-string v1, "L"

    invoke-static {v1}, Lnet/sf/saxon/regex/charclass/Categories;->getCategory(Ljava/lang/String;)Lnet/sf/saxon/regex/charclass/Categories$Category;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/z/IntUnionPredicate;->makeUnion(Lnet/sf/saxon/z/IntPredicateProxy;Lnet/sf/saxon/z/IntPredicateProxy;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/number/NumberFormatter;->d:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLetterOrDigit(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_4
    sget-object v0, Lnet/sf/saxon/expr/number/NumberFormatter;->d:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v0, p0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/expr/number/Alphanumeric;->getDigitValue(I)I

    move-result p2

    if-ltz p2, :cond_5

    sub-int/2addr p0, p2

    const/16 p2, 0x30

    if-ne p0, p2, :cond_1

    return-object p1

    :cond_1
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    add-int v3, p0, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, p2, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    add-int/lit8 v2, v2, -0x30

    aget v2, v0, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1
.end method

.method public format(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/lib/Numberer;)Lnet/sf/saxon/str/UnicodeString;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/lib/Numberer;",
            ")",
            "Lnet/sf/saxon/str/UnicodeString;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget-boolean v4, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->c:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_0
    move v4, v5

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    if-lez v5, :cond_2

    if-nez v4, :cond_1

    iget-boolean v6, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->c:Z

    if-eqz v6, :cond_1

    const-string v6, "."

    invoke-virtual {v3, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v7, p1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Ljava/lang/Long;

    if-eqz v8, :cond_3

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v12, Lnet/sf/saxon/expr/number/RegularGroupFormatter;

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v5

    invoke-direct {v12, v1, v2, v5}, Lnet/sf/saxon/expr/number/RegularGroupFormatter;-><init>(ILjava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    iget-object v5, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lnet/sf/saxon/str/UnicodeString;

    move-object/from16 v8, p6

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-interface/range {v8 .. v14}, Lnet/sf/saxon/lib/Numberer;->format(JLnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    instance-of v8, v5, Ljava/math/BigInteger;

    if-eqz v8, :cond_4

    new-instance v8, Lnet/sf/saxon/expr/number/RegularGroupFormatter;

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v9

    invoke-direct {v8, v1, v2, v9}, Lnet/sf/saxon/expr/number/RegularGroupFormatter;-><init>(ILjava/lang/String;Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lnet/sf/saxon/expr/number/RegularGroupFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, v5, v8}, Lnet/sf/saxon/expr/number/NumberFormatter;->a(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v6

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_7

    iget-object v0, v0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v3, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_7
    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->c:Z

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :cond_1
    :goto_0
    if-ge v4, v0, :cond_8

    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v8

    move v9, v4

    :goto_1
    invoke-static {v8}, Lnet/sf/saxon/expr/number/NumberFormatter;->isLetterOrDigit(I)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v0, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v10, v9

    invoke-virtual {p1, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v8

    goto :goto_1

    :cond_3
    :goto_2
    if-le v9, v4, :cond_4

    int-to-long v10, v9

    invoke-virtual {p1, v6, v7, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    iget-object v6, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    const-string v5, "."

    invoke-static {v5}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->c:Z

    move v5, v3

    :cond_4
    if-ne v9, v0, :cond_5

    goto :goto_5

    :cond_5
    int-to-long v6, v9

    invoke-virtual {p1, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    move v8, v9

    :goto_3
    invoke-static {v4}, Lnet/sf/saxon/expr/number/NumberFormatter;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v0, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    int-to-long v4, v8

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    move v5, v3

    goto :goto_3

    :cond_7
    :goto_4
    move v4, v8

    if-le v4, v9, :cond_1

    int-to-long v8, v4

    invoke-virtual {p1, v6, v7, v8, v9}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    iget-object v7, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    :goto_5
    iget-object p1, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    iget-object p0, p0, Lnet/sf/saxon/expr/number/NumberFormatter;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method
