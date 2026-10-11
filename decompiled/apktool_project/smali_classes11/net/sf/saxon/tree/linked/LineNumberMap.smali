.class public Lnet/sf/saxon/tree/linked/LineNumberMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v1, v0, [I

    iput-object v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getColumnNumber(I)I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    array-length v0, v0

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/LineNumberMap;->a()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I

    array-length v1, v0

    if-lt p1, v1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLineNumber(I)I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    array-length v0, v0

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/LineNumberMap;->a()V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    aget p0, p0, p1

    return p0
.end method

.method public setLineAndColumn(III)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    array-length v1, v0

    iget v2, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    add-int/lit8 v3, v2, 0x1

    if-gt v1, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->a:[I

    iget v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    aput p1, v0, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->b:[I

    aput p2, p1, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->c:[I

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/linked/LineNumberMap;->d:I

    return-void
.end method
