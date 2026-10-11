.class public final Lcom/sunia/HTREnginev2/uve;
.super Lcom/sunia/HTREnginev2/vve;
.source "SourceFile"


# static fields
.field public static final d:I = 0xa


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/vve;-><init>(I)V

    if-ltz p2, :cond_0

    const/16 p1, 0xa

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, p1, :cond_0

    iput p2, p0, Lcom/sunia/HTREnginev2/uve;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/uve;->c:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/uve;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/uve;->c:I

    return p0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/uve;->b:I

    mul-int/lit8 v0, v0, 0xa

    iget p0, p0, Lcom/sunia/HTREnginev2/uve;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/uve;->b:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/sunia/HTREnginev2/uve;->c:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public f()Z
    .locals 1

    iget p0, p0, Lcom/sunia/HTREnginev2/uve;->b:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .locals 1

    iget p0, p0, Lcom/sunia/HTREnginev2/uve;->c:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
