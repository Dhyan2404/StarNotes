.class public final Lcom/sunia/HTREnginev2/hyl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    iput v0, p0, Lcom/sunia/HTREnginev2/hyl;->c:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/hyl;->b()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    iget v1, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    array-length v1, v0

    iget v2, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    if-ne v1, v2, :cond_0

    shl-int/lit8 v1, v2, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public d()[I
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    new-array v1, v0, [I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/hyl;->c:I

    iget p0, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    return p0
.end method

.method public g()I
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/hyl;->c:I

    iget v1, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/hyl;->c:I

    aget p0, v1, v0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No element"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/hyl;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sunia/HTREnginev2/hyl;->b:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/hyl;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
