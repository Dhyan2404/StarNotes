.class public Lnet/sf/saxon/value/Whitespace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/value/Whitespace$Tokenizer;,
        Lnet/sf/saxon/value/Whitespace$b;,
        Lnet/sf/saxon/value/Whitespace$TokenCategory;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x2

.field public static final COLLAPSE:I = 0x2

.field public static final IGNORABLE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final PRESERVE:I = 0x0

.field public static final REPLACE:I = 0x1

.field public static final TRIM:I = 0x3

.field public static final UNSPECIFIED:I = 0x3

.field public static final XSLT:I = 0x4

.field public static final a:Lnet/sf/saxon/regex/ARegularExpression;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "[ \\n\\r\\t]+"

    invoke-static {v0}, Lnet/sf/saxon/str/StringTool;->fromLatin1(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/Whitespace;->a:Lnet/sf/saxon/regex/ARegularExpression;

    const-string v1, "[ \\n\\r\\t]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/Whitespace;->b:Ljava/util/regex/Pattern;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/Whitespace;->c:Ljava/util/regex/Pattern;

    const/16 v0, 0x21

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/value/Whitespace;->d:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/value/Whitespace;->g(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    return-void
.end method

.method public static applyWhitespaceNormalization(ILnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown whitespace facet value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1
.end method

.method public static synthetic b(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/value/Whitespace;->e(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/value/Whitespace;->f(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    return-void
.end method

.method public static collapse(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/value/a;

    invoke-direct {v2, v0, p0}, Lnet/sf/saxon/value/a;-><init>(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    invoke-static {v1, v2}, Lnet/sf/saxon/value/Whitespace;->i(Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/value/Whitespace$b;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static collapse(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    .line 1
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/value/d;

    invoke-direct {v2, v0, p0}, Lnet/sf/saxon/value/d;-><init>(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;)V

    invoke-static {v1, v2}, Lnet/sf/saxon/value/Whitespace;->i(Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/value/Whitespace$b;)V

    .line 3
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8
    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->containsWhitespace(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    sget-object v0, Lnet/sf/saxon/value/Whitespace;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static collapseWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->containsWhitespace(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trimmedEnd(Lnet/sf/saxon/str/UnicodeString;)J

    move-result-wide v0

    .line 3
    new-instance v2, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move v6, v3

    :goto_0
    cmp-long v7, v4, v0

    if-gez v7, :cond_3

    .line 4
    invoke-virtual {p0, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    const/16 v8, 0x9

    const/16 v9, 0x20

    if-eq v7, v8, :cond_1

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    const/16 v8, 0xd

    if-eq v7, v8, :cond_1

    if-eq v7, v9, :cond_1

    .line 5
    invoke-virtual {v2, v7}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    .line 6
    invoke-virtual {v2, v9}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    move v6, v3

    :cond_2
    :goto_1
    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v2}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static containsWhitespace(Lnet/sf/saxon/z/IntIterator;)Z
    .locals 2

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    sget-object v1, Lnet/sf/saxon/value/Whitespace;->d:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/value/Whitespace;->h(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/value/Whitespace$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    int-to-long v0, p2

    int-to-long p2, p3

    invoke-virtual {p1, v0, v1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_0
    return-void
.end method

.method public static synthetic f(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/Whitespace$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/value/Whitespace$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    int-to-long v0, p2

    int-to-long p2, p3

    invoke-virtual {p1, v0, v1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic h(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;IILnet/sf/saxon/value/Whitespace$TokenCategory;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/Whitespace$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    return-void
.end method

.method public static i(Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/value/Whitespace$b;)V
    .locals 4

    sget-object v0, Lnet/sf/saxon/value/Whitespace$TokenCategory;->INITIAL_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lnet/sf/saxon/value/Whitespace$TokenCategory;->CONTENT:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    if-ne v0, v3, :cond_2

    invoke-interface {p1, v2, v1, v0}, Lnet/sf/saxon/value/Whitespace$b;->a(IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    sget-object v0, Lnet/sf/saxon/value/Whitespace$TokenCategory;->SEPARATOR_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    move v2, v1

    goto :goto_1

    :cond_0
    sget-object v3, Lnet/sf/saxon/value/Whitespace$TokenCategory;->CONTENT:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    if-eq v0, v3, :cond_2

    if-lez v1, :cond_1

    invoke-interface {p1, v2, v1, v0}, Lnet/sf/saxon/value/Whitespace$b;->a(IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    :cond_1
    move v2, v1

    move-object v0, v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-le v1, v2, :cond_5

    sget-object p0, Lnet/sf/saxon/value/Whitespace$TokenCategory;->SEPARATOR_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    if-ne v0, p0, :cond_4

    sget-object p0, Lnet/sf/saxon/value/Whitespace$TokenCategory;->FINAL_WHITESPACE:Lnet/sf/saxon/value/Whitespace$TokenCategory;

    invoke-interface {p1, v2, v1, p0}, Lnet/sf/saxon/value/Whitespace$b;->a(IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v2, v1, v0}, Lnet/sf/saxon/value/Whitespace$b;->a(IILnet/sf/saxon/value/Whitespace$TokenCategory;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/str/WhitespaceString;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static isWhite(I)Z
    .locals 1

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/Whitespace;->d:[Z

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static normalize(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/value/c;

    invoke-direct {v2, v0, p0}, Lnet/sf/saxon/value/c;-><init>(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    invoke-static {v1, v2}, Lnet/sf/saxon/value/Whitespace;->i(Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/value/Whitespace$b;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    .line 1
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/value/b;

    invoke-direct {v2, v0, p0}, Lnet/sf/saxon/value/b;-><init>(Lnet/sf/saxon/str/UnicodeBuilder;Lnet/sf/saxon/str/UnicodeString;)V

    invoke-static {v1, v2}, Lnet/sf/saxon/value/Whitespace;->i(Lnet/sf/saxon/z/IntIterator;Lnet/sf/saxon/value/Whitespace$b;)V

    .line 3
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static removeAllWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sf/saxon/value/Whitespace;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeLeadingWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trimmedStart(Lnet/sf/saxon/str/UnicodeString;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    if-ne v1, v2, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v1, :cond_5

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_6

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 6

    .line 1
    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trimmedStart(Lnet/sf/saxon/str/UnicodeString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trimmedEnd(Lnet/sf/saxon/str/UnicodeString;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static trimmedEnd(Lnet/sf/saxon/str/UnicodeString;)J
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    :cond_0
    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v4

    if-nez v4, :cond_0

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    return-wide v4
.end method

.method public static trimmedStart(Lnet/sf/saxon/str/UnicodeString;)J
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v5

    invoke-static {v5}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v5

    if-nez v5, :cond_0

    return-wide v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method
