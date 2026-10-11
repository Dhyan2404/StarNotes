.class public Lnet/sf/saxon/z/IntToIntArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntToIntMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/z/IntToIntArrayMap$a;
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->d:I

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->d:I

    if-lez p1, :cond_0

    .line 9
    new-array v0, p1, [I

    iput-object v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    .line 10
    new-array p1, p1, [I

    iput-object p1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lnet/sf/saxon/z/IntToIntArrayMap;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/z/IntToIntArrayMap;)[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    return-void
.end method

.method public contains(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public get(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->d:I

    return p0
.end method

.method public getDefaultValue()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->d:I

    return p0
.end method

.method public keyIterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntToIntArrayMap$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntToIntArrayMap$a;-><init>(Lnet/sf/saxon/z/IntToIntArrayMap;)V

    return-object v0
.end method

.method public put(II)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    aput p2, p0, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    array-length v3, v1

    if-lt v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [I

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    iget v1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    iget v1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    aput p1, v0, v1

    iget-object p1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    aput p2, p1, v1

    return-void
.end method

.method public remove(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->a:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->b:[I

    iget p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->d:I

    aput p0, p1, v1

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setDefaultValue(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->d:I

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntToIntArrayMap;->c:I

    return p0
.end method
