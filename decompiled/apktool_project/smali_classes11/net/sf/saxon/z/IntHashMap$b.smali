.class public Lnet/sf/saxon/z/IntHashMap$b;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/z/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/sf/saxon/z/IntSet;"
    }
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/z/IntHashMap<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/z/IntHashMap$b;->a:Lnet/sf/saxon/z/IntHashMap;

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Immutable set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Immutable set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap$b;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {v0}, Lnet/sf/saxon/z/IntHashMap;->b(Lnet/sf/saxon/z/IntHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap$b;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->e(Lnet/sf/saxon/z/IntHashMap;I)I

    move-result p0

    aget-object p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Lnet/sf/saxon/z/IntSet;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap$b;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result p0

    return p0
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap$b;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap$b;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap$b;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap$b;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {p0}, Lnet/sf/saxon/z/IntHashMap;->d(Lnet/sf/saxon/z/IntHashMap;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntHashMap$a;

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap$b;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntHashMap$a;-><init>(Lnet/sf/saxon/z/IntHashMap;)V

    return-object v0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap$b;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Immutable set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap$b;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {p0}, Lnet/sf/saxon/z/IntHashMap;->d(Lnet/sf/saxon/z/IntHashMap;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap$b;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/z/IntHashSet;->stringify(Lnet/sf/saxon/z/IntIterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap$b;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method
