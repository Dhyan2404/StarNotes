.class public Lnet/sf/saxon/expr/sort/NumericComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/NumericComparer;


# instance fields
.field protected converter:Lnet/sf/saxon/type/StringToDouble;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/NumericComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/NumericComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/NumericComparer;->a:Lnet/sf/saxon/expr/sort/NumericComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/NumericComparer;->converter:Lnet/sf/saxon/type/StringToDouble;

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/NumericComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/NumericComparer;->a:Lnet/sf/saxon/expr/sort/NumericComparer;

    return-object v0
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 5

    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v3

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :catch_0
    move-wide v3, v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/NumericComparer;->converter:Lnet/sf/saxon/type/StringToDouble;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    instance-of p1, p2, Lnet/sf/saxon/value/NumericValue;

    if-eqz p1, :cond_2

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/NumericComparer;->converter:Lnet/sf/saxon/type/StringToDouble;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const/4 p1, 0x0

    const/4 p2, -0x1

    if-eqz p0, :cond_5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_4

    return p1

    :cond_4
    return p2

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    return v0

    :cond_6
    cmpg-double p0, v3, v1

    if-gez p0, :cond_7

    return p2

    :cond_7
    cmpl-double p0, v3, v1

    if-lez p0, :cond_8

    return v0

    :cond_8
    return p1
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/NumericComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCollator()Lnet/sf/saxon/lib/StringCollator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 0

    return-object p0
.end method

.method public save()Ljava/lang/String;
    .locals 0

    const-string p0, "NC"

    return-object p0
.end method
