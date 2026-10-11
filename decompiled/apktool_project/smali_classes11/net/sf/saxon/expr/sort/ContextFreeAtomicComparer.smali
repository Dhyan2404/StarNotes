.class public Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# static fields
.field public static final a:Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;->a:Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;->a:Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;

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
    check-cast p1, Lnet/sf/saxon/value/ContextFreeAtomicValue;

    invoke-interface {p1}, Lnet/sf/saxon/value/ContextFreeAtomicValue;->getXPathComparable()Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object p0

    check-cast p2, Lnet/sf/saxon/value/ContextFreeAtomicValue;

    invoke-interface {p2}, Lnet/sf/saxon/value/ContextFreeAtomicValue;->getXPathComparable()Lnet/sf/saxon/expr/sort/XPathComparable;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

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

    const-string p0, "CAVC"

    return-object p0
.end method
