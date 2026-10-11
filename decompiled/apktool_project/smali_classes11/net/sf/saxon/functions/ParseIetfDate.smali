.class public Lnet/sf/saxon/functions/ParseIetfDate;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# static fields
.field public static final k:Ljava/lang/String; = ""


# instance fields
.field public final h:[Ljava/lang/String;

.field public final i:[Ljava/lang/String;

.field public final j:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const-string v0, "Mon"

    const-string v1, "Tue"

    const-string v2, "Wed"

    const-string v3, "Thu"

    const-string v4, "Fri"

    const-string v5, "Sat"

    const-string v6, "Sun"

    const-string v7, "Monday"

    const-string v8, "Tuesday"

    const-string v9, "Wednesday"

    const-string v10, "Thursday"

    const-string v11, "Friday"

    const-string v12, "Saturday"

    const-string v13, "Sunday"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/ParseIetfDate;->h:[Ljava/lang/String;

    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    const-string v11, "Nov"

    const-string v12, "Dec"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/ParseIetfDate;->i:[Ljava/lang/String;

    const-string v1, "UT"

    const-string v2, "UTC"

    const-string v3, "GMT"

    const-string v4, "EST"

    const-string v5, "EDT"

    const-string v6, "CST"

    const-string v7, "CDT"

    const-string v8, "MST"

    const-string v9, "MDT"

    const-string v10, "PST"

    const-string v11, "PDT"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/ParseIetfDate;->j:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IETF date value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0010"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValidTime(IIIII)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x17

    if-gt p0, v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    const v0, 0xf4240

    if-lt p3, v0, :cond_1

    :cond_0
    const/16 v0, 0x18

    if-ne p0, v0, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    :cond_1
    const/16 p0, -0x348

    if-lt p4, p0, :cond_2

    const/16 p0, 0x348

    if-gt p4, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, 0x76c

    goto :goto_0

    :cond_1
    const-string p0, "Year number must be two or four digits"

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/String;)B
    .locals 0

    const-string p0, "Jan"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "Feb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string p0, "Mar"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string p0, "Apr"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string p0, "May"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-string p0, "Jun"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-string p0, "Jul"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-string p0, "Aug"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-string p0, "Sep"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const-string p0, "Oct"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0xa

    return p0

    :cond_9
    const-string p0, "Nov"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0xb

    return p0

    :cond_a
    const-string p0, "Dec"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xc

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    if-nez p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->parse(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 3

    const-string p0, "UT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "UTC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr p0, v0

    const-string v0, "GMT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr p0, v0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "EST"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/16 v1, -0x12c

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const-string p0, "EDT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, -0xf0

    return p0

    :cond_2
    const-string p0, "CST"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/16 v2, -0x168

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const-string p0, "CDT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const-string p0, "MST"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/16 v1, -0x1a4

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const-string p0, "MDT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    const-string p0, "PST"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, -0x1e0

    return p0

    :cond_7
    const-string p0, "PDT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/functions/ParseIetfDate;->h:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/functions/ParseIetfDate;->i:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/functions/ParseIetfDate;->j:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final h(Ljava/util/List;ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    add-int/lit8 p2, p2, 0x1

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v2, "-"

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    move p0, v1

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move v1, p0

    :goto_1
    if-nez v1, :cond_3

    const-string p0, "Date separator missing"

    invoke-static {p0, p3}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p2
.end method

.method public final i(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input is empty"

    invoke-static {v0, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_1

    const-string p1, ""

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    const-string p1, " "

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, p1

    :goto_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move p1, v2

    goto :goto_0

    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, p1

    :goto_4
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move p1, v1

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/DateTimeValue;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[A-Za-z]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, " "

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Space missing after day name"

    invoke-static {v2, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/2addr v3, v6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->f(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "[0-9]+"

    if-eqz v7, :cond_8

    invoke-virtual {p0, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->c(Ljava/lang/String;)B

    move-result v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, p2, v3, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->h(Ljava/util/List;ILjava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "Day number expected after month name"

    invoke-static {v9, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v4, :cond_4

    const-string v4, "Day number exceeds two digits"

    invoke-static {v4, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    add-int/2addr v3, v6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Space missing after day number"

    invoke-static {v7, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/2addr v3, v6

    invoke-virtual {p0, p2, v3, v0, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->parseTime(Ljava/util/List;ILjava/util/List;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Space missing after time string"

    invoke-static {v5, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/2addr v3, v6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/functions/ParseIetfDate;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_3

    :cond_7
    const-string p0, "Year number expected after time"

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v2, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_9

    const-string v4, "First number in string expected to be day in two digits"

    invoke-static {v4, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v4, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, p2, v3, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->h(Ljava/util/List;ILjava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/ParseIetfDate;->f(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "Abbreviated month name expected after day number"

    invoke-static {v7, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/ParseIetfDate;->c(Ljava/lang/String;)B

    move-result v3

    add-int/2addr v2, v6

    invoke-virtual {p0, p2, v2, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->h(Ljava/util/List;ILjava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0, p1, v7}, Lnet/sf/saxon/functions/ParseIetfDate;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_b
    const-string v7, "Year number expected after month name"

    invoke-static {v7, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v1

    :goto_2
    add-int/2addr v2, v6

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "Space missing after year number"

    invoke-static {v5, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    add-int/2addr v2, v6

    invoke-virtual {p0, p2, v2, v0, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->parseTime(Ljava/util/List;ILjava/util/List;Ljava/lang/String;)I

    move-result p0

    move v2, v3

    move v3, p0

    move p0, v7

    goto :goto_3

    :cond_d
    const-string p0, "String expected to begin with month name or day name (or day number)"

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    move v2, p0

    move v4, v2

    :goto_3
    invoke-static {p0, v2, v4}, Lnet/sf/saxon/value/GDateValue;->isValidDate(III)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "Date is not valid"

    invoke-static {v5, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/2addr v3, v6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "Extra content found in string after date"

    invoke-static {p2, p1}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance p1, Lnet/sf/saxon/value/DateValue;

    invoke-direct {p1, p0, v2, v4}, Lnet/sf/saxon/value/DateValue;-><init>(IBB)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->getHour()B

    move-result p2

    const/16 v0, 0x18

    if-ne p2, v0, :cond_10

    invoke-virtual {p1}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result p2

    invoke-virtual {p1}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result p1

    invoke-static {p2, v0, p1}, Lnet/sf/saxon/value/DateValue;->tomorrow(IBB)Lnet/sf/saxon/value/DateValue;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/value/TimeValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v5

    const-string v6, ""

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    move-object p0, p2

    :cond_10
    invoke-static {p1, p0}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/value/DateValue;Lnet/sf/saxon/value/TimeValue;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public parseTime(Ljava/util/List;ILjava/util/List;Ljava/lang/String;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/TimeValue;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Hour number expected"

    invoke-static {v4, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    const-string v4, "Hour number exceeds two digits"

    invoke-static {v4, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, p2, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, ":"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Separator \':\' missing after hour"

    invoke-static {v3, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    add-int/2addr v4, v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "Minutes expected after hour"

    invoke-static {v10, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eq v10, v6, :cond_4

    const-string v10, "Minutes must be exactly two digits"

    invoke-static {v10, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/2addr v4, v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_5

    add-int/lit8 v11, v4, -0x1

    move v15, v9

    move v6, v13

    move v14, v6

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "Seconds expected after \':\' separator after minutes"

    invoke-static {v11, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-eq v11, v6, :cond_7

    const-string v11, "Seconds number must have exactly two digits (before decimal point)"

    invoke-static {v11, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-byte v10, v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/2addr v4, v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    add-int/lit8 v14, v4, -0x1

    move v15, v9

    move v6, v10

    move-object v10, v11

    move v11, v14

    move v14, v13

    goto/16 :goto_1

    :cond_8
    const-string v14, "."

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "Fractional part of seconds expected after decimal point"

    invoke-static {v14, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x6

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v11, v15, :cond_a

    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v9

    if-ge v4, v14, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_b
    move v14, v11

    move v15, v13

    move/from16 v11, p2

    move/from16 v21, v10

    move-object v10, v6

    move/from16 v6, v21

    goto :goto_1

    :cond_c
    move v6, v10

    move-object v10, v11

    move v14, v13

    move v15, v14

    move/from16 v11, p2

    goto :goto_1

    :cond_d
    move/from16 v11, p2

    move v6, v13

    move v14, v6

    move v15, v14

    :goto_1
    if-nez v15, :cond_24

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, " "

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    add-int/lit8 v11, v4, -0x2

    const/4 v15, 0x1

    :cond_e
    move/from16 v21, v11

    move v11, v4

    move/from16 v4, v21

    if-nez v15, :cond_23

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 p2, v4

    const-string v4, "[A-Za-z]+"

    invoke-virtual {v9, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    move/from16 v17, v15

    const-string v15, "Timezone name not recognised"

    if-eqz v9, :cond_10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/ParseIetfDate;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v15, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/ParseIetfDate;->d(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v8

    move v0, v11

    const/4 v9, 0x1

    goto/16 :goto_b

    :cond_10
    const-string v9, "+"

    move/from16 v18, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 v19, v6

    const-string v6, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v3, v9

    if-eqz v3, :cond_22

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v8

    const-string v8, "Parsing timezone offset, number expected after \'"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    move/from16 v20, v8

    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v10, 0x4

    if-le v8, v10, :cond_12

    const-string v7, "Timezone offset does not have the correct number of digits"

    invoke-static {v7, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v10, 0x3

    if-lt v8, v10, :cond_13

    add-int/lit8 v7, v8, -0x2

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v8, v10

    goto :goto_4

    :cond_13
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_14

    const-string v7, "Parsing timezone offset, minutes must be two digits"

    invoke-static {v7, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_3

    :cond_14
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    const/4 v7, 0x0

    :goto_4
    const/16 v10, 0x3b

    if-le v7, v10, :cond_16

    const-string v10, "Timezone offset minutes out of range"

    invoke-static {v10, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v8, v7

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    neg-int v8, v8

    :cond_17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    add-int/lit8 v3, v11, -0x1

    :goto_5
    const/16 v17, 0x1

    goto :goto_6

    :cond_18
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    add-int/lit8 v3, v11, -0x2

    goto :goto_5

    :cond_19
    move/from16 v3, p2

    :goto_6
    if-nez v17, :cond_20

    const-string v5, "("

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v11, v5

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v0, "Timezone name expected after \'(\'"

    invoke-static {v0, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/functions/ParseIetfDate;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v15, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1d
    :goto_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1e
    const-string v0, ")"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "Expected \')\' after timezone name"

    invoke-static {v0, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    move v9, v5

    goto :goto_8

    :cond_20
    if-nez v17, :cond_21

    const-string v0, "Unexpected content after timezone offset"

    invoke-static {v0, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    move v11, v3

    move/from16 v9, v17

    :goto_8
    move v12, v8

    move v0, v11

    goto :goto_b

    :cond_22
    move/from16 v20, v8

    const-string v0, "Unexpected content in time (after minutes)"

    invoke-static {v0, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_23
    move/from16 v18, v3

    move/from16 p2, v4

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v17, v15

    :goto_9
    move/from16 v0, p2

    move/from16 v9, v17

    goto :goto_a

    :cond_24
    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v8

    move v0, v11

    move v9, v15

    :goto_a
    const/4 v12, 0x0

    :goto_b
    if-eqz v9, :cond_26

    move/from16 v3, v18

    move/from16 v10, v19

    move/from16 v1, v20

    invoke-static {v1, v3, v10, v14, v12}, Lnet/sf/saxon/functions/ParseIetfDate;->isValidTime(IIIII)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "Time/timezone is not valid"

    invoke-static {v4, v2}, Lnet/sf/saxon/functions/ParseIetfDate;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    new-instance v2, Lnet/sf/saxon/value/TimeValue;

    mul-int/lit16 v11, v14, 0x3e8

    const-string v13, ""

    move-object v7, v2

    move v8, v1

    move v9, v3

    invoke-direct/range {v7 .. v13}, Lnet/sf/saxon/value/TimeValue;-><init>(BBBIILjava/lang/String;)V

    move-object/from16 v1, p3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have finished"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
