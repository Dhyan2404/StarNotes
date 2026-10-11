.class public Lnet/sf/saxon/expr/sort/DoubleSortComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/DoubleSortComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/DoubleSortComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/DoubleSortComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->a:Lnet/sf/saxon/expr/sort/DoubleSortComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/DoubleSortComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->a:Lnet/sf/saxon/expr/sort/DoubleSortComparer;

    return-object v0
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 3

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    return p0

    :cond_4
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1, p2}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I

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

    const-string p0, "DblSC"

    return-object p0
.end method
