.class public final Lcom/sunia/HTREnginev2/dbo;
.super Lcom/sunia/HTREnginev2/vv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/vv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public b(Lcom/sunia/HTREnginev2/hpf;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->d()C

    move-result v1

    iget v2, p1, Lcom/sunia/HTREnginev2/hpf;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/sunia/HTREnginev2/hpf;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/dbo;->d(CLjava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/sunia/HTREnginev2/vv;->g(Lcom/sunia/HTREnginev2/hpf;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->e()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/sunia/HTREnginev2/hpf;->f:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/dbo;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->l(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/dbo;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/sunia/HTREnginev2/hpf;->p(I)V

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/dbo;->f(Lcom/sunia/HTREnginev2/hpf;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public d(CLjava/lang/StringBuilder;)I
    .locals 2

    const/16 p0, 0xd

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p0, 0x2a

    if-ne p1, p0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x3e

    if-ne p1, p0, :cond_2

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p0, 0x20

    if-ne p1, p0, :cond_3

    const/4 p0, 0x3

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 p0, 0x30

    if-lt p1, p0, :cond_4

    const/16 v1, 0x39

    if-gt p1, v1, :cond_4

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x4

    int-to-char p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 p0, 0x41

    if-lt p1, p0, :cond_5

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_5

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0xe

    int-to-char p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->c(C)V

    :goto_0
    return v0
.end method

.method public f(Lcom/sunia/HTREnginev2/hpf;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->q()V

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->h()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->a()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    iget v0, p1, Lcom/sunia/HTREnginev2/hpf;->f:I

    sub-int/2addr v0, p2

    iput v0, p1, Lcom/sunia/HTREnginev2/hpf;->f:I

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->g()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    if-gt p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->g()I

    move-result p2

    if-eq p2, p0, :cond_1

    :cond_0
    const/16 p0, 0xfe

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/hpf;->s(C)V

    :cond_1
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/hpf;->f()I

    move-result p0

    if-gez p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/hpf;->p(I)V

    :cond_2
    return-void
.end method
