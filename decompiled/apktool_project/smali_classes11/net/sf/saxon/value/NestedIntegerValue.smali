.class public Lnet/sf/saxon/value/NestedIntegerValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/value/NestedIntegerValue;",
        ">;"
    }
.end annotation


# static fields
.field public static ONE:Lnet/sf/saxon/value/NestedIntegerValue;

.field public static TWO:Lnet/sf/saxon/value/NestedIntegerValue;


# instance fields
.field public e:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/NestedIntegerValue;

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/NestedIntegerValue;-><init>([I)V

    sput-object v0, Lnet/sf/saxon/value/NestedIntegerValue;->ONE:Lnet/sf/saxon/value/NestedIntegerValue;

    new-instance v0, Lnet/sf/saxon/value/NestedIntegerValue;

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/NestedIntegerValue;-><init>([I)V

    sput-object v0, Lnet/sf/saxon/value/NestedIntegerValue;->TWO:Lnet/sf/saxon/value/NestedIntegerValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/value/NestedIntegerValue;->parse(Ljava/lang/String;)Lnet/sf/saxon/value/NestedIntegerValue;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lnet/sf/saxon/value/NestedIntegerValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/NestedIntegerValue;-><init>([I)V

    return-object p0

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nested integer value has incorrect format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(I)Lnet/sf/saxon/value/NestedIntegerValue;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length p0, p0

    aput p1, v1, p0

    new-instance p0, Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/NestedIntegerValue;-><init>([I)V

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/NestedIntegerValue;->compareTo(Lnet/sf/saxon/value/NestedIntegerValue;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/value/NestedIntegerValue;)I
    .locals 4

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 3
    aget v1, v1, v0

    aget v2, v2, v0

    if-eq v1, v2, :cond_1

    if-ge v1, v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    array-length p0, v1

    iget-object p1, p1, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length p1, p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/NestedIntegerValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    check-cast p1, Lnet/sf/saxon/value/NestedIntegerValue;

    iget-object p1, p1, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDepth()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length p0, p0

    return p0
.end method

.method public getLeaf()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public getStem()Lnet/sf/saxon/value/NestedIntegerValue;
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/NestedIntegerValue;-><init>([I)V

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/NestedIntegerValue;->e:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method
