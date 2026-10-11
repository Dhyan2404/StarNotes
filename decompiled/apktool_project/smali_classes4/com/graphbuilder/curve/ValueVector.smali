.class public Lcom/graphbuilder/curve/ValueVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected size:I

.field protected value:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 3
    iput-object v0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    .line 15
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    return-void
.end method

.method public constructor <init>([DI)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 7
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    .line 9
    iput p2, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size >= 0 && size <= value.length required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value array cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(D)V
    .locals 1

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/graphbuilder/curve/ValueVector;->insert(DI)V

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    array-length v1, v0

    if-ge v1, p1, :cond_2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-array p1, p1, [D

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    aget-wide v1, v1, v0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    :cond_2
    return-void
.end method

.method public get(I)D
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "required: (index >= 0 && index < size) but: (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(DI)V
    .locals 4

    if-ltz p3, :cond_1

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    if-gt p3, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphbuilder/curve/ValueVector;->ensureCapacity(I)V

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    :goto_0
    if-le v0, p3, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    aput-wide p1, v0, p3

    iget p1, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "required: (index >= 0 && index <= size) but: (index = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(I)V
    .locals 4

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    if-ge p1, v0, :cond_1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    add-int/lit8 v1, p1, -0x1

    aget-wide v2, v0, p1

    aput-wide v2, v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "required: (index >= 0 && index < size) but: (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(DI)V
    .locals 1

    if-ltz p3, :cond_0

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    if-ge p3, v0, :cond_0

    iget-object p0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    aput-wide p1, p0, p3

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "required: (index >= 0 && index < size) but: (index = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    return p0
.end method

.method public trimArray()V
    .locals 4

    iget v0, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    iget-object v1, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/graphbuilder/curve/ValueVector;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    aget-wide v2, v2, v1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/graphbuilder/curve/ValueVector;->value:[D

    :cond_1
    return-void
.end method
