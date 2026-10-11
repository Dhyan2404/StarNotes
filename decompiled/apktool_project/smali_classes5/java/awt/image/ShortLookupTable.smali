.class public Ljava/awt/image/ShortLookupTable;
.super Ljava/awt/image/LookupTable;
.source "SourceFile"


# instance fields
.field data:[[S


# direct methods
.method public constructor <init>(I[S)V
    .locals 1

    .line 7
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Ljava/awt/image/LookupTable;-><init>(II)V

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Ljava/awt/image/LookupTable;->numComponents:I

    .line 9
    array-length v0, p2

    iput v0, p0, Ljava/awt/image/LookupTable;->numEntries:I

    new-array p1, p1, [[S

    .line 10
    iput-object p1, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    const/4 p0, 0x0

    aput-object p2, p1, p0

    return-void
.end method

.method public constructor <init>(I[[S)V
    .locals 2

    .line 1
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Ljava/awt/image/LookupTable;-><init>(II)V

    .line 2
    array-length p1, p2

    iput p1, p0, Ljava/awt/image/LookupTable;->numComponents:I

    const/4 v0, 0x0

    .line 3
    aget-object v1, p2, v0

    array-length v1, v1

    iput v1, p0, Ljava/awt/image/LookupTable;->numEntries:I

    .line 4
    new-array p1, p1, [[S

    iput-object p1, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    .line 5
    :goto_0
    iget p1, p0, Ljava/awt/image/LookupTable;->numComponents:I

    if-ge v0, p1, :cond_0

    .line 6
    iget-object p1, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    aget-object v1, p2, v0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getTable()[[S
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    return-object p0
.end method

.method public lookupPixel([I[I)[I
    .locals 7

    if-nez p2, :cond_0

    .line 1
    array-length p2, p1

    new-array p2, p2, [I

    .line 2
    :cond_0
    iget v0, p0, Ljava/awt/image/LookupTable;->numComponents:I

    const-string v1, "]-offset is less than zero"

    const-string v2, "src["

    const v3, 0xffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    move v0, v4

    .line 3
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_4

    .line 4
    aget v5, p1, v0

    and-int/2addr v5, v3

    iget v6, p0, Ljava/awt/image/LookupTable;->offset:I

    sub-int/2addr v5, v6

    if-ltz v5, :cond_1

    .line 5
    iget-object v6, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    aget-object v6, v6, v4

    aget-short v5, v6, v5

    aput v5, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_4

    .line 8
    aget v0, p1, v4

    and-int/2addr v0, v3

    iget v5, p0, Ljava/awt/image/LookupTable;->offset:I

    sub-int/2addr v0, v5

    if-ltz v0, :cond_3

    .line 9
    iget-object v5, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    aget-object v5, v5, v4

    aget-short v0, v5, v0

    aput v0, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object p2
.end method

.method public lookupPixel([S[S)[S
    .locals 7

    if-nez p2, :cond_0

    .line 11
    array-length p2, p1

    new-array p2, p2, [S

    .line 12
    :cond_0
    iget v0, p0, Ljava/awt/image/LookupTable;->numComponents:I

    const-string v1, "]-offset is less than zero"

    const-string v2, "src["

    const v3, 0xffff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    move v0, v4

    .line 13
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_4

    .line 14
    aget-short v5, p1, v0

    and-int/2addr v5, v3

    iget v6, p0, Ljava/awt/image/LookupTable;->offset:I

    sub-int/2addr v5, v6

    if-ltz v5, :cond_1

    .line 15
    iget-object v6, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    aget-object v6, v6, v4

    aget-short v5, v6, v5

    aput-short v5, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_4

    .line 18
    aget-short v0, p1, v4

    and-int/2addr v0, v3

    iget v5, p0, Ljava/awt/image/LookupTable;->offset:I

    sub-int/2addr v0, v5

    if-ltz v0, :cond_3

    .line 19
    iget-object v5, p0, Ljava/awt/image/ShortLookupTable;->data:[[S

    aget-object v5, v5, v4

    aget-short v0, v5, v0

    aput-short v0, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object p2
.end method
