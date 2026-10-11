.class public abstract Lcom/sunia/HTREnginev2/f2;
.super Lcom/sunia/HTREnginev2/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/e2;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/lang/StringBuilder;I)V
.end method

.method public abstract e(I)I
.end method

.method public final f(Ljava/lang/StringBuilder;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/sunia/HTREnginev2/uyg;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/f2;->d(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/f2;->e(I)I

    move-result p0

    const p2, 0x186a0

    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge p3, v0, :cond_1

    div-int v0, p0, p2

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    div-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
