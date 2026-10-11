.class public Lnet/sf/saxon/expr/sort/EqualityComparer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicComparer;


# static fields
.field public static THE_INSTANCE:Lnet/sf/saxon/expr/sort/EqualityComparer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/EqualityComparer;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/EqualityComparer;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/EqualityComparer;->THE_INSTANCE:Lnet/sf/saxon/expr/sort/EqualityComparer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/EqualityComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/EqualityComparer;->THE_INSTANCE:Lnet/sf/saxon/expr/sort/EqualityComparer;

    return-object v0
.end method


# virtual methods
.method public compareAtomicValues(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)I
    .locals 0

    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Values are not comparable"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string p0, "EQC"

    return-object p0
.end method
