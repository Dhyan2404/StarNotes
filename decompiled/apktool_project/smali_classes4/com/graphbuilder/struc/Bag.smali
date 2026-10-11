.class public Lcom/graphbuilder/struc/Bag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected data:[Ljava/lang/Object;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 11
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 12
    iput-object p1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    .line 13
    iput p2, p0, Lcom/graphbuilder/struc/Bag;->size:I

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "required: (size >= 0 && size <= data.length) but: (size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", data.length = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data array cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IZ)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p2, :cond_8

    iget v1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-lt p2, v1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p3, :cond_4

    if-nez p1, :cond_2

    :goto_0
    iget p1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge p2, p1, :cond_8

    iget-object p1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object p1, p1, p2

    if-nez p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p3, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge p2, p3, :cond_8

    iget-object p3, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object p3, p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_6

    :goto_2
    if-ltz p2, :cond_8

    iget-object p1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object p1, p1, p2

    if-nez p1, :cond_5

    return p2

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-ltz p2, :cond_8

    iget-object p3, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object p3, p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    return p2

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    return v0
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    invoke-virtual {p0, p1, v0}, Lcom/graphbuilder/struc/Bag;->insert(Ljava/lang/Object;I)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/graphbuilder/struc/Bag;->a(Ljava/lang/Object;IZ)I

    move-result p0

    if-ltz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object v1, v1, v0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "required: (index >= 0 && index < size) but: (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCapacity()I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/graphbuilder/struc/Bag;->a(Ljava/lang/Object;IZ)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphbuilder/struc/Bag;->a(Ljava/lang/Object;IZ)I

    move-result p0

    return p0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 3

    if-ltz p2, :cond_1

    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-gt p2, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphbuilder/struc/Bag;->ensureCapacity(I)V

    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    :goto_0
    if-le v0, p2, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aput-object p1, v0, p2

    iget p1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "required: (index >= 0 && index <= size) but: (index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", size = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/graphbuilder/struc/Bag;->a(Ljava/lang/Object;IZ)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphbuilder/struc/Bag;->a(Ljava/lang/Object;IZ)I

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/graphbuilder/struc/Bag;->a(Ljava/lang/Object;IZ)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/graphbuilder/struc/Bag;->remove(I)Ljava/lang/Object;

    :cond_0
    return p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_1

    .line 3
    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 5
    iget v1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge p1, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, p1

    aput-object v3, v1, v2

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    const/4 p0, 0x0

    aput-object p0, p1, v1

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "required: (index >= 0 && index < size) but: (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object v0, p0, p2

    aput-object p1, p0, p2

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "required: (index >= 0 && index < size) but: (index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", size = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSize(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "required: (size >= 0 && size <= data.length) but: (size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/graphbuilder/struc/Bag;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    return p0
.end method

.method public trimArray()V
    .locals 3

    iget v0, p0, Lcom/graphbuilder/struc/Bag;->size:I

    iget-object v1, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/graphbuilder/struc/Bag;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/graphbuilder/struc/Bag;->data:[Ljava/lang/Object;

    :cond_1
    return-void
.end method
