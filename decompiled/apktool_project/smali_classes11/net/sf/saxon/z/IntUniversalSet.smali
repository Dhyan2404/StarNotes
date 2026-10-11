.class public Lnet/sf/saxon/z/IntUniversalSet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# static fields
.field public static final a:Lnet/sf/saxon/z/IntUniversalSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntUniversalSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntUniversalSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/z/IntUniversalSet;->a:Lnet/sf/saxon/z/IntUniversalSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/z/IntUniversalSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/z/IntUniversalSet;->a:Lnet/sf/saxon/z/IntUniversalSet;

    return-object v0
.end method


# virtual methods
.method public add(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "IntUniversalSet is immutable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IntUniversalSet is immutable"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public containsAll(Lnet/sf/saxon/z/IntSet;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    return-object p0
.end method

.method public except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/z/IntUniversalSet;

    if-eqz p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/z/IntEmptySet;->getInstance()Lnet/sf/saxon/z/IntEmptySet;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/z/IntComplementSet;

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/z/IntComplementSet;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object p0
.end method

.method public intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot enumerate an infinite set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 1

    new-instance p0, Lnet/sf/saxon/z/IntComplementSet;

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    invoke-direct {p0, v0}, Lnet/sf/saxon/z/IntComplementSet;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object p0
.end method

.method public remove(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "IntUniversalSet is immutable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 0

    return-object p0
.end method
