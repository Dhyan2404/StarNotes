.class public final Lcom/google/zxing/aztec/encoder/AztecCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeWords()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->d:I

    return p0
.end method

.method public getLayers()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->c:I

    return p0
.end method

.method public getMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->e:Lcom/google/zxing/common/BitMatrix;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->b:I

    return p0
.end method

.method public isCompact()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->a:Z

    return p0
.end method

.method public setCodeWords(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->d:I

    return-void
.end method

.method public setCompact(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->a:Z

    return-void
.end method

.method public setLayers(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->c:I

    return-void
.end method

.method public setMatrix(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->e:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->b:I

    return-void
.end method
