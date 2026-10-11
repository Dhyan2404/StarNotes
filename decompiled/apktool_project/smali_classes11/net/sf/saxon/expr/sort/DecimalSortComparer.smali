.class public Lnet/sf/saxon/expr/sort/DecimalSortComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/DecimalSortComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/DecimalSortComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/DecimalSortComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/DecimalSortComparer;->a:Lnet/sf/saxon/expr/sort/DecimalSortComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecimalSortComparerInstance()Lnet/sf/saxon/expr/sort/DecimalSortComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/DecimalSortComparer;->a:Lnet/sf/saxon/expr/sort/DecimalSortComparer;

    return-object v0
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/AtomicValue;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    const-string p0, "DecSC"

    return-object p0
.end method
