.class public final Lcom/sunia/HTREnginev2/y1;
.super Lcom/sunia/HTREnginev2/c2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/c2;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/StringBuilder;I)V
    .locals 0

    const/16 p0, 0x2710

    if-ge p2, p0, :cond_0

    const-string p0, "(3202)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p0, "(3203)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public e(I)I
    .locals 0

    const/16 p0, 0x2710

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, p0

    return p1
.end method
