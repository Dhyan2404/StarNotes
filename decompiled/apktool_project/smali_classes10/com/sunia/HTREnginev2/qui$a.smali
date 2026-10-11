.class public final Lcom/sunia/HTREnginev2/qui$a;
.super Lcom/sunia/HTREnginev2/qui;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/qui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1400

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/qui;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/qui;->h:Z

    const/16 v1, 0x101

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/qui;->h:Z

    return v1

    :cond_1
    iget v3, p0, Lcom/sunia/HTREnginev2/qui;->i:I

    iget v4, p0, Lcom/sunia/HTREnginev2/qui;->j:I

    shl-int/2addr v0, v4

    or-int/2addr v0, v3

    iput v0, p0, Lcom/sunia/HTREnginev2/qui;->i:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/sunia/HTREnginev2/qui;->j:I

    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->c:I

    if-ge v4, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-gez p1, :cond_2

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/qui;->h:Z

    return v1

    :cond_2
    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->i:I

    iget v1, p0, Lcom/sunia/HTREnginev2/qui;->j:I

    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sunia/HTREnginev2/qui;->i:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/sunia/HTREnginev2/qui;->j:I

    :cond_3
    iget p1, p0, Lcom/sunia/HTREnginev2/qui;->i:I

    iget v0, p0, Lcom/sunia/HTREnginev2/qui;->f:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/sunia/HTREnginev2/qui;->c:I

    shr-int/2addr p1, v1

    iput p1, p0, Lcom/sunia/HTREnginev2/qui;->i:I

    iget p1, p0, Lcom/sunia/HTREnginev2/qui;->j:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sunia/HTREnginev2/qui;->j:I

    return v0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/qui;->f:I

    return p0
.end method
