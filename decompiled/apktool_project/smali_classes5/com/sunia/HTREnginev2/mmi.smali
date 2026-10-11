.class public final Lcom/sunia/HTREnginev2/mmi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:I = 0x10


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/mmi;->b:I

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/mmi;->d()V

    :cond_0
    iget v0, p0, Lcom/sunia/HTREnginev2/mmi;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sunia/HTREnginev2/mmi;->e:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->b:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    aput p1, v1, v0

    iget p1, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    return-void
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    array-length p0, p0

    return p0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/mmi;->b:I

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    new-array v1, v1, [I

    array-length v2, v0

    iget v3, p0, Lcom/sunia/HTREnginev2/mmi;->a:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lcom/sunia/HTREnginev2/mmi;->a:I

    iget v0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->b:I

    iput-object v1, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public e()Z
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()I
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mmi;->d:[I

    iget v2, p0, Lcom/sunia/HTREnginev2/mmi;->a:I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/sunia/HTREnginev2/mmi;->e:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/sunia/HTREnginev2/mmi;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    return v1

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/mmi;->c:I

    return p0
.end method
