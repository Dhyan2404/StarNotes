.class public final Lcom/sunia/HTREnginev2/hpf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public c:Lcom/google/zxing/Dimension;

.field public d:Lcom/google/zxing/Dimension;

.field public final e:Ljava/lang/StringBuilder;

.field public f:I

.field public g:I

.field public h:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

.field public i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->e:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/hpf;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hpf;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hpf;->e:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public c()C
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->a:Ljava/lang/String;

    iget p0, p0, Lcom/sunia/HTREnginev2/hpf;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public d()C
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->a:Ljava/lang/String;

    iget p0, p0, Lcom/sunia/HTREnginev2/hpf;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hpf;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/hpf;->g:I

    return p0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/hpf;->i()I

    move-result v0

    iget p0, p0, Lcom/sunia/HTREnginev2/hpf;->f:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public h()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hpf;->h:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-object p0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lcom/sunia/HTREnginev2/hpf;->i:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/hpf;->f:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/hpf;->i()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public k()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/hpf;->g:I

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->h:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public m(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hpf;->c:Lcom/google/zxing/Dimension;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hpf;->d:Lcom/google/zxing/Dimension;

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/hpf;->i:I

    return-void
.end method

.method public o(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hpf;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/hpf;->g:I

    return-void
.end method

.method public q()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/hpf;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/hpf;->r(I)V

    return-void
.end method

.method public r(I)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->h:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/hpf;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hpf;->c:Lcom/google/zxing/Dimension;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/hpf;->d:Lcom/google/zxing/Dimension;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hpf;->h:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    :cond_1
    return-void
.end method

.method public s(C)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hpf;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hpf;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
