.class public Lcom/sunia/HTREnginev2/ptd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/ptd;->a:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ptd;->b:[B

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/ptd;->c:I

    iget p0, p0, Lcom/sunia/HTREnginev2/ptd;->d:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(II)V
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/ptd;->d:I

    sub-int/2addr v0, p1

    add-int/2addr p2, v0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/ptd;->b:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/ptd;->d:I

    iget v2, p0, Lcom/sunia/HTREnginev2/ptd;->a:I

    add-int v3, v0, v2

    rem-int/2addr v3, v2

    aget-byte v3, p1, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/sunia/HTREnginev2/ptd;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()I
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ptd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ptd;->b:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/ptd;->c:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sunia/HTREnginev2/ptd;->a:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/sunia/HTREnginev2/ptd;->c:I

    and-int/lit16 p0, v0, 0xff

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ptd;->b:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/ptd;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lcom/sunia/HTREnginev2/ptd;->a:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/sunia/HTREnginev2/ptd;->d:I

    return-void
.end method
