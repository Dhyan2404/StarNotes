.class public Lnet/sf/saxon/expr/sort/CollationMatchKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/expr/sort/CollationMatchKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/text/CollationKey;


# direct methods
.method public constructor <init>(Ljava/text/CollationKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/CollationMatchKey;->e:Ljava/text/CollationKey;

    return-void
.end method


# virtual methods
.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/Base64BinaryValue;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollationMatchKey;->e:Ljava/text/CollationKey;

    invoke-virtual {p0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/Base64BinaryValue;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/CollationMatchKey;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/CollationMatchKey;->compareTo(Lnet/sf/saxon/expr/sort/CollationMatchKey;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/CollationMatchKey;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollationMatchKey;->e:Ljava/text/CollationKey;

    iget-object p1, p1, Lnet/sf/saxon/expr/sort/CollationMatchKey;->e:Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/sort/CollationMatchKey;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollationMatchKey;->e:Ljava/text/CollationKey;

    check-cast p1, Lnet/sf/saxon/expr/sort/CollationMatchKey;

    iget-object p1, p1, Lnet/sf/saxon/expr/sort/CollationMatchKey;->e:Ljava/text/CollationKey;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/CollationMatchKey;->e:Ljava/text/CollationKey;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
