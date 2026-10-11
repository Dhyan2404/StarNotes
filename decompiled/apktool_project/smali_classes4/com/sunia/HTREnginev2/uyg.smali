.class public final Lcom/sunia/HTREnginev2/uyg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/BitArray;

.field public final b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    return-void
.end method

.method public static g(Lcom/google/zxing/common/BitArray;II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/sunia/HTREnginev2/uyg;->c(ILjava/lang/String;)Lcom/sunia/HTREnginev2/tve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tve;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/HTREnginev2/hag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tve;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/tve;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/vve;->a()I

    move-result v3

    if-eq p2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/vve;->a()I

    move-result p2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Lcom/sunia/HTREnginev2/sve;
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object p0

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object p0

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result p0

    const/16 v1, 0x20

    if-lt p0, v1, :cond_2

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_2

    new-instance v1, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    add-int/lit8 p0, p0, 0x21

    int-to-char p0, p0

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object v1

    :cond_2
    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoding invalid alphanumeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p0, 0x2f

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x2e

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x2d

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x2c

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x2a

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(ILjava/lang/String;)Lcom/sunia/HTREnginev2/tve;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p2, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->i(I)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/uyg;->o()Lcom/sunia/HTREnginev2/tve;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/tve;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/sunia/HTREnginev2/tve;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/tve;->c()I

    move-result p1

    invoke-direct {p2, v0, p0, p1}, Lcom/sunia/HTREnginev2/tve;-><init>(ILjava/lang/String;I)V

    return-object p2

    :cond_1
    new-instance p1, Lcom/sunia/HTREnginev2/tve;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result p2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/sunia/HTREnginev2/tve;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public final d(I)Lcom/sunia/HTREnginev2/sve;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object p0

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object p0

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x5a

    if-lt v1, v2, :cond_2

    if-ge v1, v3, :cond_2

    new-instance p0, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object p0

    :cond_2
    if-lt v1, v3, :cond_3

    const/16 v2, 0x74

    if-ge v1, v2, :cond_3

    new-instance p0, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object p0

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/16 p0, 0x20

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x5f

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x3f

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x3e

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x3d

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x3c

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x3b

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x3a

    goto :goto_0

    :pswitch_8
    const/16 p0, 0x2f

    goto :goto_0

    :pswitch_9
    const/16 p0, 0x2e

    goto :goto_0

    :pswitch_a
    const/16 p0, 0x2d

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x2c

    goto :goto_0

    :pswitch_c
    const/16 p0, 0x2b

    goto :goto_0

    :pswitch_d
    const/16 p0, 0x2a

    goto :goto_0

    :pswitch_e
    const/16 p0, 0x29

    goto :goto_0

    :pswitch_f
    const/16 p0, 0x28

    goto :goto_0

    :pswitch_10
    const/16 p0, 0x27

    goto :goto_0

    :pswitch_11
    const/16 p0, 0x26

    goto :goto_0

    :pswitch_12
    const/16 p0, 0x25

    goto :goto_0

    :pswitch_13
    const/16 p0, 0x22

    goto :goto_0

    :pswitch_14
    const/16 p0, 0x21

    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/sve;

    add-int/2addr p1, v0

    invoke-direct {v1, p1, p0}, Lcom/sunia/HTREnginev2/sve;-><init>(IC)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)Lcom/sunia/HTREnginev2/uve;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/uve;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p0

    invoke-direct {p1, p0, v0, v0}, Lcom/sunia/HTREnginev2/uve;-><init>(III)V

    return-object p1

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/uve;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, p0, p1, v0}, Lcom/sunia/HTREnginev2/uve;-><init>(III)V

    return-object v1

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result p0

    add-int/lit8 p0, p0, -0x8

    div-int/lit8 p1, p0, 0xb

    rem-int/lit8 p0, p0, 0xb

    new-instance v1, Lcom/sunia/HTREnginev2/uve;

    invoke-direct {v1, v0, p1, p0}, Lcom/sunia/HTREnginev2/uve;-><init>(III)V

    return-object v1
.end method

.method public f(II)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/uyg;->g(Lcom/google/zxing/common/BitArray;II)I

    move-result p0

    return p0
.end method

.method public final h(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final i(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    add-int v1, v0, p1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_1
    iget-object v3, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final j(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int v1, v0, p1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final k(I)Z
    .locals 5

    add-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v1, v0, :cond_1

    if-ge v1, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result p0

    if-lt p0, v4, :cond_3

    const/16 p1, 0x3f

    if-ge p0, p1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final l(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v0, :cond_1

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    const/16 v1, 0x74

    if-ge v0, v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_4

    return v2

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/uyg;->f(II)I

    move-result p0

    const/16 p1, 0xe8

    if-lt p0, p1, :cond_5

    const/16 p1, 0xfd

    if-ge p0, p1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public final m(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x4

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result p0

    if-gt p1, p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    move v0, p1

    :goto_0
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final n()Lcom/sunia/HTREnginev2/ws;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->b(I)Lcom/sunia/HTREnginev2/sve;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/vve;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->i(I)V

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sve;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/tve;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/tve;-><init>(ILjava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/ws;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sunia/HTREnginev2/ws;-><init>(Lcom/sunia/HTREnginev2/tve;Z)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sve;->b()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->h()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->i(I)V

    :goto_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->g()V

    :cond_4
    :goto_2
    new-instance p0, Lcom/sunia/HTREnginev2/ws;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/ws;-><init>(Z)V

    return-object p0
.end method

.method public final o()Lcom/sunia/HTREnginev2/tve;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/uyg;->n()Lcom/sunia/HTREnginev2/ws;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/ws;->b()Z

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/uyg;->p()Lcom/sunia/HTREnginev2/ws;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/ws;->b()Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/uyg;->q()Lcom/sunia/HTREnginev2/ws;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/ws;->b()Z

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v3

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v2, :cond_0

    :cond_5
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/ws;->a()Lcom/sunia/HTREnginev2/tve;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lcom/sunia/HTREnginev2/ws;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->d(I)Lcom/sunia/HTREnginev2/sve;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/vve;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->i(I)V

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sve;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/tve;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/tve;-><init>(ILjava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/ws;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sunia/HTREnginev2/ws;-><init>(Lcom/sunia/HTREnginev2/tve;Z)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sve;->b()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->h()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->a:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->i(I)V

    :goto_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->f()V

    :cond_4
    :goto_2
    new-instance p0, Lcom/sunia/HTREnginev2/ws;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/ws;-><init>(Z)V

    return-object p0
.end method

.method public final q()Lcom/sunia/HTREnginev2/ws;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->m(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->e(I)Lcom/sunia/HTREnginev2/uve;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/vve;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->i(I)V

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/uve;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/uve;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/tve;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/tve;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/tve;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/uve;->c()I

    move-result v0

    invoke-direct {v1, v3, p0, v0}, Lcom/sunia/HTREnginev2/tve;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    :goto_1
    new-instance p0, Lcom/sunia/HTREnginev2/ws;

    invoke-direct {p0, v0, v2}, Lcom/sunia/HTREnginev2/ws;-><init>(Lcom/sunia/HTREnginev2/tve;Z)V

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/uve;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/uve;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/sunia/HTREnginev2/tve;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sunia/HTREnginev2/tve;-><init>(ILjava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/ws;

    invoke-direct {p0, v0, v2}, Lcom/sunia/HTREnginev2/ws;-><init>(Lcom/sunia/HTREnginev2/tve;Z)V

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/sunia/HTREnginev2/uyg;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/uve;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/uyg;->j(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->f()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyg;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b(I)V

    :cond_4
    new-instance p0, Lcom/sunia/HTREnginev2/ws;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/ws;-><init>(Z)V

    return-object p0
.end method
