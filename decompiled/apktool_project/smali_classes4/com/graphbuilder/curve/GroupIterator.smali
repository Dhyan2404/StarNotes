.class public Lcom/graphbuilder/curve/GroupIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected controlString:Ljava/lang/String;

.field protected count_j:I

.field protected group:[I

.field protected index_i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/graphbuilder/curve/GroupIterator;->controlString:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    .line 5
    iput v0, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1, p2}, Lcom/graphbuilder/curve/GroupIterator;->parseControlString(Ljava/lang/String;I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    .line 7
    iput-object p1, p0, Lcom/graphbuilder/curve/GroupIterator;->controlString:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "control string cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 11

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/graphbuilder/curve/GroupIterator;->controlString:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    .line 13
    iput v0, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    if-eqz p1, :cond_5

    .line 14
    array-length v1, p1

    if-eqz v1, :cond_4

    .line 15
    array-length v1, p1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    .line 17
    array-length v1, p1

    new-array v5, v1, [I

    move v6, v0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v1, :cond_1

    .line 18
    aget v9, p1, v6

    aput v9, v5, v6

    if-gez v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    neg-int v9, v9

    :cond_0
    int-to-double v9, v9

    .line 19
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v3

    double-to-int v9, v9

    add-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iput-object v5, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    .line 21
    new-instance v3, Ljava/lang/StringBuffer;

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v7, v4

    sub-int/2addr v1, v8

    add-int/2addr v7, v1

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 22
    aget v0, v5, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ":"

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    aget v1, v5, v8

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_2

    const-string v1, ","

    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    aget v1, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x1

    .line 29
    aget v1, p1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/graphbuilder/curve/GroupIterator;->controlString:Ljava/lang/String;

    return-void

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "group array must have even length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "group array length cannot be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "group array cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/graphbuilder/math/VarMap;III)Lcom/graphbuilder/math/Expression;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphbuilder/math/ExpressionTree;->parse(Ljava/lang/String;)Lcom/graphbuilder/math/Expression;

    move-result-object p0
    :try_end_0
    .catch Lcom/graphbuilder/math/ExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/graphbuilder/math/Expression;->getVariableNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    array-length p3, v0

    if-ne p3, v2, :cond_0

    const/4 p3, 0x0

    aget-object p3, v0, p3

    int-to-double v0, p2

    invoke-virtual {p1, p3, v0, v1}, Lcom/graphbuilder/math/VarMap;->setValue(Ljava/lang/String;D)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/graphbuilder/curve/ControlStringParseException;

    const-string p1, "too many variables"

    invoke-direct {p0, p1, p3, p4}, Lcom/graphbuilder/curve/ControlStringParseException;-><init>(Ljava/lang/String;II)V

    throw p0

    :cond_2
    new-instance p0, Lcom/graphbuilder/curve/ControlStringParseException;

    const-string p1, "control substring is empty"

    invoke-direct {p0, p1, p3, p4}, Lcom/graphbuilder/curve/ControlStringParseException;-><init>(Ljava/lang/String;II)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/graphbuilder/curve/ControlStringParseException;

    const-string p2, "error parsing expression"

    invoke-direct {p1, p2, p3, p4, p0}, Lcom/graphbuilder/curve/ControlStringParseException;-><init>(Ljava/lang/String;IILcom/graphbuilder/math/ExpressionParseException;)V

    throw p1
.end method

.method public static parseControlString(Ljava/lang/String;I)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0x29

    const/16 v8, 0x28

    const/16 v9, 0x2c

    if-ge v5, v2, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_0

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ne v10, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_c

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    new-instance v5, Lcom/graphbuilder/math/VarMap;

    invoke-direct {v5}, Lcom/graphbuilder/math/VarMap;-><init>()V

    new-instance v10, Lcom/graphbuilder/math/FuncMap;

    invoke-direct {v10}, Lcom/graphbuilder/math/FuncMap;-><init>()V

    invoke-virtual {v10}, Lcom/graphbuilder/math/FuncMap;->loadDefaultFunctions()V

    const/4 v11, -0x1

    move v12, v4

    move v13, v6

    move v14, v11

    move v6, v12

    :goto_2
    if-gt v4, v2, :cond_b

    if-ge v4, v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_3

    :cond_4
    const/16 v15, 0x20

    :goto_3
    if-eq v4, v2, :cond_9

    if-ne v15, v9, :cond_5

    if-nez v13, :cond_5

    goto :goto_5

    :cond_5
    if-ne v15, v8, :cond_7

    add-int/lit8 v13, v13, 0x1

    :cond_6
    :goto_4
    move v7, v6

    goto :goto_7

    :cond_7
    if-ne v15, v7, :cond_8

    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :cond_8
    const/16 v7, 0x3a

    if-ne v15, v7, :cond_6

    move v14, v4

    goto :goto_4

    :cond_9
    :goto_5
    if-ne v14, v11, :cond_a

    invoke-static {v0, v5, v1, v6, v4}, Lcom/graphbuilder/curve/GroupIterator;->a(Ljava/lang/String;Lcom/graphbuilder/math/VarMap;III)Lcom/graphbuilder/math/Expression;

    move-result-object v6

    invoke-virtual {v6, v5, v10}, Lcom/graphbuilder/math/Expression;->eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v3, v12

    add-int/lit8 v7, v12, 0x1

    aput v6, v3, v7

    add-int/lit8 v12, v12, 0x2

    goto :goto_6

    :cond_a
    invoke-static {v0, v5, v1, v6, v14}, Lcom/graphbuilder/curve/GroupIterator;->a(Ljava/lang/String;Lcom/graphbuilder/math/VarMap;III)Lcom/graphbuilder/math/Expression;

    move-result-object v6

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v6, v5, v10}, Lcom/graphbuilder/math/Expression;->eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v3, v12

    add-int/lit8 v14, v14, 0x1

    invoke-static {v0, v5, v1, v14, v4}, Lcom/graphbuilder/curve/GroupIterator;->a(Ljava/lang/String;Lcom/graphbuilder/math/VarMap;III)Lcom/graphbuilder/math/Expression;

    move-result-object v8

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v8, v5, v10}, Lcom/graphbuilder/math/Expression;->eval(Lcom/graphbuilder/math/VarMap;Lcom/graphbuilder/math/FuncMap;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v3, v7

    :goto_6
    add-int/lit8 v7, v4, 0x1

    move v14, v11

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move v6, v7

    const/16 v7, 0x29

    const/16 v8, 0x28

    const/16 v9, 0x2c

    goto :goto_2

    :cond_b
    return-object v3

    :cond_c
    new-instance v0, Lcom/graphbuilder/curve/ControlStringParseException;

    const-string v1, "round brackets do not balance"

    invoke-direct {v0, v1}, Lcom/graphbuilder/curve/ControlStringParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyGroupArray([I)V
    .locals 3

    if-eqz p1, :cond_2

    array-length v0, p1

    iget-object v1, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "specified array is too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "specified array cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public count_j()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    return p0
.end method

.method public getControlString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/GroupIterator;->controlString:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupLength()I
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length p0, p0

    return p0
.end method

.method public getGroupSize()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    sub-int/2addr v3, v2

    if-gez v3, :cond_0

    neg-int v3, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getGroupValue(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p0, v0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "required: (index >= 0 && index < group.length) but: (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", group.length = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    iget-object p0, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public index_i()I
    .locals 0

    iget p0, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    return p0
.end method

.method public isInRange(II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    if-lt v2, p1, :cond_1

    if-lt v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public next()I
    .locals 5

    iget-object v0, p0, Lcom/graphbuilder/curve/GroupIterator;->group:[I

    iget v1, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    aget v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    const/4 v3, 0x0

    if-gt v2, v0, :cond_1

    iget v4, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    add-int/2addr v2, v4

    if-lt v2, v0, :cond_0

    iput v3, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    sub-int/2addr v2, v4

    if-gt v2, v0, :cond_2

    iput v3, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    :goto_0
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    iput v0, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    return-void
.end method

.method public set(II)V
    .locals 2

    if-ltz p1, :cond_2

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-ltz p2, :cond_0

    iput p1, p0, Lcom/graphbuilder/curve/GroupIterator;->index_i:I

    iput p2, p0, Lcom/graphbuilder/curve/GroupIterator;->count_j:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count_j >= 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index_i must be an even number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index_i >= 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
