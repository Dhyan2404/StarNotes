.class public Lorg/apache/commons/math3/dfp/DfpDec;
.super Lorg/apache/commons/math3/dfp/Dfp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->round(I)I

    return-void
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x3

    return p0
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 13
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-object v0
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 12
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x3

    .line 9
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const-string v2, "newInstance"

    .line 10
    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/dfp/DfpDec;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object p0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "nextAfter"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    invoke-virtual {p0, v3, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    rsub-int v0, v0, -0x7fff

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->power10(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    rsub-int v0, v0, -0x7fff

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->power10K(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/DfpDec;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v3, :cond_9

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-eq v1, v3, :cond_9

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public round(I)I
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v0, v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    :cond_0
    array-length v0, v0

    const/4 v4, 0x4

    mul-int/2addr v0, v4

    const/16 v5, 0x3e8

    move v6, v5

    :goto_0
    if-le v6, v1, :cond_1

    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpDec;->getDecimalDigits()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x4

    move v8, v2

    move v7, v3

    :goto_1
    rem-int/lit8 v9, v0, 0x4

    if-ge v7, v9, :cond_2

    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v0, v6

    if-gt v8, v2, :cond_3

    array-length v9, v0

    mul-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x3

    if-ne v1, v9, :cond_3

    invoke-super {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p0

    return p0

    :cond_3
    if-ne v8, v2, :cond_4

    add-int/lit8 v1, v6, -0x1

    aget v9, v0, v1

    div-int/lit16 v10, v9, 0x3e8

    rem-int/lit8 v10, v10, 0xa

    rem-int/2addr v9, v5

    aput v9, v0, v1

    or-int/2addr p1, v9

    goto :goto_2

    :cond_4
    mul-int/lit8 v0, v7, 0xa

    div-int/2addr v0, v8

    rem-int/lit8 v10, v0, 0xa

    div-int/lit8 v0, v8, 0xa

    rem-int v0, v7, v0

    or-int/2addr p1, v0

    :goto_2
    move v0, v3

    :goto_3
    if-ge v0, v6, :cond_5

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v5, v1, v0

    or-int/2addr p1, v5

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    div-int/2addr v7, v8

    mul-int v1, v7, v8

    aput v1, v0, v6

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpDec$a;->a:[I

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    if-nez v10, :cond_6

    if-eqz p1, :cond_9

    goto :goto_4

    :pswitch_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v0, v2, :cond_9

    if-nez v10, :cond_6

    if-eqz p1, :cond_9

    :cond_6
    :goto_4
    move v0, v2

    goto :goto_5

    :pswitch_1
    if-gt v10, v1, :cond_6

    if-ne v10, v1, :cond_7

    if-nez p1, :cond_6

    :cond_7
    if-ne v10, v1, :cond_9

    if-nez p1, :cond_9

    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_9

    goto :goto_4

    :pswitch_2
    if-gt v10, v1, :cond_6

    if-ne v10, v1, :cond_8

    if-nez p1, :cond_6

    :cond_8
    if-ne v10, v1, :cond_9

    if-nez p1, :cond_9

    and-int/lit8 v0, v7, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_4

    :pswitch_3
    if-le v10, v1, :cond_9

    goto :goto_4

    :pswitch_4
    if-lt v10, v1, :cond_9

    goto :goto_4

    :pswitch_5
    if-nez v10, :cond_6

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    :pswitch_6
    move v0, v3

    :goto_5
    if-eqz v0, :cond_b

    :goto_6
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    if-ge v6, v1, :cond_a

    aget v1, v0, v6

    add-int/2addr v1, v8

    div-int/lit16 v8, v1, 0x2710

    rem-int/lit16 v1, v1, 0x2710

    aput v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    sub-int/2addr v1, v2

    aput v8, v0, v1

    :cond_b
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v1, -0x7fff

    if-ge v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return p1

    :cond_c
    const v1, 0x8000

    if-le v0, v1, :cond_d

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v4

    :cond_d
    if-nez v10, :cond_f

    if-eqz p1, :cond_e

    goto :goto_7

    :cond_e
    return v3

    :cond_f
    :goto_7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
