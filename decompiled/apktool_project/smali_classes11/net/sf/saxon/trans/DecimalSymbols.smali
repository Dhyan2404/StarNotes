.class public Lnet/sf/saxon/trans/DecimalSymbols;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DECIMAL_SEPARATOR:I = 0x0

.field public static final DIGIT:I = 0x2

.field public static final EXPONENT_SEPARATOR:I = 0x7

.field public static final GROUPING_SEPARATOR:I = 0x1

.field public static final INFINITY:I = 0x9

.field public static final MINUS_SIGN:I = 0x3

.field public static final NAN:I = 0xa

.field public static final PATTERN_SEPARATOR:I = 0x8

.field public static final PERCENT:I = 0x4

.field public static final PER_MILLE:I = 0x5

.field public static final ZERO_DIGIT:I = 0x6

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static m:[I

.field public static final propertyNames:[Ljava/lang/String;


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:[I

.field public final e:[I

.field public final f:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "XTSE1300"

    const-string v1, "XTSE1290"

    const-string v2, "XTSE0020"

    const-string v3, "XTSE1295"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->k:[Ljava/lang/String;

    const-string v0, "XQST0098"

    const-string v1, "XQST0114"

    const-string v2, "XQST0097"

    filled-new-array {v2, v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->l:[Ljava/lang/String;

    const-string v1, "decimal-separator"

    const-string v2, "grouping-separator"

    const-string v3, "digit"

    const-string v4, "minus-sign"

    const-string v5, "percent"

    const-string v6, "per-mille"

    const-string v7, "zero-digit"

    const-string v8, "exponent-separator"

    const-string v9, "pattern-separator"

    const-string v10, "infinity"

    const-string v11, "NaN"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->m:[I

    return-void

    :array_0
    .array-data 4
        0x30
        0x660
        0x6f0
        0x966
        0x9e6
        0xa66
        0xae6
        0xb66
        0xbe6
        0xc66
        0xce6
        0xd66
        0xe50
        0xed0
        0xf20
        0x1040
        0x17e0
        0x1810
        0x1946
        0x19d0
        0xff10
        0x104a0
        0x1d7ce
        0x1d7d8
        0x1d7e2
        0x1d7ec
        0x1d7f6
    .end array-data
.end method

.method public constructor <init>(Lnet/sf/saxon/s9api/HostLanguage;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->k:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    sget-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lnet/sf/saxon/trans/DecimalSymbols;->e:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    const/4 v0, 0x0

    const/16 v4, 0x2e

    aput v4, v1, v0

    const/4 v0, 0x1

    const/16 v4, 0x2c

    aput v4, v1, v0

    const/16 v0, 0x23

    aput v0, v1, v2

    const/4 v0, 0x3

    const/16 v2, 0x2d

    aput v2, v1, v0

    const/4 v0, 0x4

    const/16 v2, 0x25

    aput v2, v1, v0

    const/4 v0, 0x5

    const/16 v2, 0x2030

    aput v2, v1, v0

    const/4 v0, 0x6

    const/16 v2, 0x30

    aput v2, v1, v0

    const/4 v0, 0x7

    const/16 v2, 0x65

    aput v2, v1, v0

    const/16 v0, 0x8

    const/16 v2, 0x3b

    aput v2, v1, v0

    const-string v0, "Infinity"

    iput-object v0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->b:Ljava/lang/String;

    const-string v0, "NaN"

    iput-object v0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->c:Ljava/lang/String;

    const/high16 v0, -0x80000000

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/DecimalSymbols;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    return-void
.end method

.method public static isValidZeroDigit(I)Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->m:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent properties in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p3, "unnamed decimal format. "

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decimal format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "The same character is used as the "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and as the "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    const/4 p1, 0x2

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    return p0

    :cond_0
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be a single character"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p2
.end method

.method public checkConsistency(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const-string v1, "unnamed decimal format. "

    const-string v2, ". "

    const-string v3, "decimal format "

    const/16 v4, 0xa

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    new-instance v4, Lnet/sf/saxon/trans/XPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistency in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "There are two inconsistent values for decimal-format property "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at the same import precedence"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    const/4 p1, 0x3

    aget-object p0, p0, p1

    invoke-virtual {v4, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v4, p0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDecimalSeparator()I

    move-result v4

    const-string v5, "decimal-separator"

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "grouping-separator"

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4, p1}, Lnet/sf/saxon/trans/DecimalSymbols;->a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v4

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPercent()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "percent"

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPercent()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4, p1}, Lnet/sf/saxon/trans/DecimalSymbols;->a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPercent()I

    move-result v4

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPerMille()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "per-mille"

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPerMille()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4, p1}, Lnet/sf/saxon/trans/DecimalSymbols;->a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPerMille()I

    move-result v4

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDigit()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "digit"

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDigit()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4, p1}, Lnet/sf/saxon/trans/DecimalSymbols;->a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDigit()I

    move-result v4

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPatternSeparator()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "pattern-separator"

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPatternSeparator()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4, p1}, Lnet/sf/saxon/trans/DecimalSymbols;->a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPatternSeparator()I

    move-result v4

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getExponentSeparator()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "exponent-separator"

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getExponentSeparator()I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4, p1}, Lnet/sf/saxon/trans/DecimalSymbols;->a(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getExponentSeparator()I

    move-result v4

    invoke-virtual {v0, v4, v5}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getZeroDigit()I

    move-result v4

    move v5, v4

    :goto_2
    add-int/lit8 v6, v4, 0xa

    if-ge v5, v6, :cond_b

    invoke-virtual {v0, v5}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v6, Lnet/sf/saxon/trans/XPathException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inconsistent properties in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "The same character is used as digit "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int p1, v5, v4

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in the chosen digit family, and as the "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    const/4 p1, 0x2

    aget-object p0, p0, p1

    invoke-virtual {v6, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/trans/DecimalSymbols;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/trans/DecimalSymbols;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDecimalSeparator()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getDecimalSeparator()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDigit()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getDigit()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getMinusSign()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getMinusSign()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPercent()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getPercent()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPerMille()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getPerMille()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getZeroDigit()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getZeroDigit()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getPatternSeparator()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getPatternSeparator()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getNaN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public export(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4

    new-instance v0, Lnet/sf/saxon/trans/DecimalSymbols;

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalSymbols;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    const-string v1, "decimalFormat"

    invoke-virtual {p2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "name"

    invoke-virtual {p2, v1, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    array-length v2, v1

    if-ge p1, v2, :cond_2

    aget v1, v1, p1

    iget-object v2, v0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_1

    sget-object v2, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "Infinity"

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "infinity"

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getNaN()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NaN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getDecimalSeparator()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getDigit()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getExponentSeparator()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x7

    aget p0, p0, v0

    return p0
.end method

.method public getGroupingSeparator()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getMinusSign()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    return p0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPatternSeparator()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/16 v0, 0x8

    aget p0, p0, v0

    return p0
.end method

.method public getPerMille()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x5

    aget p0, p0, v0

    return p0
.end method

.method public getPercent()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x4

    aget p0, p0, v0

    return p0
.end method

.method public getZeroDigit()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    const/4 v0, 0x6

    aget p0, p0, v0

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDecimalSeparator()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getGroupingSeparator()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/DecimalSymbols;->getDigit()I

    move-result p0

    mul-int/lit8 p0, p0, 0x29

    add-int/2addr v0, p0

    return v0
.end method

.method public setDecimalSeparator(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setDigit(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setGroupingSeparator(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V
    .locals 0

    sget-object p2, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p1, p2, :cond_0

    sget-object p1, Lnet/sf/saxon/trans/DecimalSymbols;->l:[Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/sf/saxon/trans/DecimalSymbols;->k:[Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setIntProperty(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    aput p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMinusSign(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setPatternSeparator(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setPerMille(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setPercent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method

.method public setProperty(ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt p1, v1, :cond_3

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/trans/DecimalSymbols;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->e:[I

    aget v1, v0, p1

    if-le p3, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    aput p2, v1, p1

    aput p3, v0, p1

    iget-object p3, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    aput-boolean v3, p3, p1

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/trans/DecimalSymbols;->d:[I

    aget p3, p3, p1

    if-eq p2, p3, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    aput-boolean v2, p3, p1

    :cond_1
    :goto_0
    const/4 p3, 0x6

    if-ne p1, p3, :cond_7

    invoke-static {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->isValidZeroDigit(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->a:[Ljava/lang/String;

    aget-object p0, p0, v2

    const-string p2, "The value of the zero-digit attribute must be a Unicode digit with value zero"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->e:[I

    aget v1, v0, p1

    if-le p3, v1, :cond_4

    iput-object p2, p0, Lnet/sf/saxon/trans/DecimalSymbols;->b:Ljava/lang/String;

    aput p3, v0, p1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    aput-boolean v3, p0, p1

    goto :goto_1

    :cond_4
    if-ne p3, v1, :cond_7

    iget-object p3, p0, Lnet/sf/saxon/trans/DecimalSymbols;->b:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    aput-boolean v2, p0, p1

    goto :goto_1

    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->e:[I

    aget v1, v0, p1

    if-le p3, v1, :cond_6

    iput-object p2, p0, Lnet/sf/saxon/trans/DecimalSymbols;->c:Ljava/lang/String;

    aput p3, v0, p1

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    aput-boolean v3, p0, p1

    goto :goto_1

    :cond_6
    if-ne p3, v1, :cond_7

    iget-object p3, p0, Lnet/sf/saxon/trans/DecimalSymbols;->c:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p0, p0, Lnet/sf/saxon/trans/DecimalSymbols;->f:[Z

    aput-boolean v3, p0, p1

    :cond_7
    :goto_1
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setZeroDigit(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setProperty(ILjava/lang/String;I)V

    return-void
.end method
