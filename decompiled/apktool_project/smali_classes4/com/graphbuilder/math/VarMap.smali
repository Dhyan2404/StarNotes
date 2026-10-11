.class public Lcom/graphbuilder/math/VarMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:[Ljava/lang/String;

.field public c:[D

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/graphbuilder/math/VarMap;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    new-array v0, v0, [D

    .line 4
    iput-object v0, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/graphbuilder/math/VarMap;->d:I

    .line 6
    iput-boolean p1, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)D
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/graphbuilder/math/VarMap;->d:I

    if-ge v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    aget-wide p0, p0, v0

    return-wide p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "variable value has not been set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValues()[D
    .locals 5

    iget v0, p0, Lcom/graphbuilder/math/VarMap;->d:I

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    aget-wide v3, v3, v2

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/graphbuilder/math/VarMap;->d:I

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isCaseSensitive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    return p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/graphbuilder/math/VarMap;->d:I

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lcom/graphbuilder/math/VarMap;->d:I

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    add-int/lit8 v1, v0, -0x1

    aget-object v2, p1, v0

    aput-object v2, p1, v1

    iget-object p1, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    aget-wide v2, p1, v0

    aput-wide v2, p1, v1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/graphbuilder/math/VarMap;->d:I

    iget-object v0, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object p0, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    const-wide/16 v0, 0x0

    aput-wide v0, p0, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setValue(Ljava/lang/String;D)V
    .locals 5

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/graphbuilder/math/VarMap;->d:I

    if-ge v1, v2, :cond_3

    iget-boolean v2, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/graphbuilder/math/VarMap;->a:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    aput-wide p2, p0, v1

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ne v2, v1, :cond_5

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    new-array v2, v2, [D

    :goto_1
    iget v3, p0, Lcom/graphbuilder/math/VarMap;->d:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    iget-object v3, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    iput-object v2, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    :cond_5
    iget-object v0, p0, Lcom/graphbuilder/math/VarMap;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/graphbuilder/math/VarMap;->d:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/graphbuilder/math/VarMap;->c:[D

    aput-wide p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphbuilder/math/VarMap;->d:I

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "varName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
