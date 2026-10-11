.class public final Lcom/sunia/HTREnginev2/uqi;
.super Lcom/sunia/HTREnginev2/phn;
.source "SourceFile"


# instance fields
.field public final d:Lcom/sunia/HTREnginev2/tqi;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ohn;IILcom/sunia/HTREnginev2/tqi;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/phn;-><init>(Lcom/sunia/HTREnginev2/ohn;II)V

    iput-object p4, p0, Lcom/sunia/HTREnginev2/uqi;->d:Lcom/sunia/HTREnginev2/tqi;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uqi;->d:Lcom/sunia/HTREnginev2/tqi;

    iget p0, p0, Lcom/sunia/HTREnginev2/tqi;->j:I

    return p0
.end method

.method public b()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uqi;->d:Lcom/sunia/HTREnginev2/tqi;

    iget p0, p0, Lcom/sunia/HTREnginev2/tqi;->i:I

    return p0
.end method

.method public f()Ljava/awt/image/BufferedImage;
    .locals 5

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->e()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uqi;->d:Lcom/sunia/HTREnginev2/tqi;

    iget-object v1, v0, Lcom/sunia/HTREnginev2/tqi;->k:[B

    array-length v2, v1

    iget v3, v0, Lcom/sunia/HTREnginev2/tqi;->i:I

    iget v0, v0, Lcom/sunia/HTREnginev2/tqi;->j:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v0}, Lcom/sunia/HTREnginev2/phn;->h([BIIII)Ljava/awt/image/BufferedImage;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/phn;->d(F)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->c()V

    return-object v0
.end method
