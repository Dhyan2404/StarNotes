.class public final Lcom/sunia/HTREnginev2/n0i;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# static fields
.field public static final f:I = -0x80000000


# instance fields
.field public final b:[[[I

.field public final c:[I

.field public final d:[[[[I

.field public final e:[[I


# direct methods
.method public constructor <init>()V
    .locals 8

    const v0, 0xffc4

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/16 v2, 0x10

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[I

    iput-object v3, p0, Lcom/sunia/HTREnginev2/n0i;->b:[[[I

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/sunia/HTREnginev2/n0i;->c:[I

    const/16 v5, 0xc8

    filled-new-array {v0, v1, v2, v5}, [I

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[[I

    iput-object v2, p0, Lcom/sunia/HTREnginev2/n0i;->d:[[[[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/n0i;->e:[[I

    const/4 p0, 0x0

    aget-object v2, v0, p0

    aput p0, v2, p0

    const/4 v4, 0x1

    aget-object v5, v0, v4

    aput p0, v5, p0

    aget-object v6, v0, v1

    aput p0, v6, p0

    const/4 v7, 0x3

    aget-object v0, v0, v7

    aput p0, v0, p0

    aput p0, v2, v4

    aput p0, v5, v4

    aput p0, v6, v4

    aput p0, v0, v4

    aput p0, v3, p0

    aput p0, v3, v4

    aput p0, v3, v1

    aput p0, v3, v7

    return-void
.end method

.method public static d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/sdm;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/n0i;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/n0i;-><init>()V

    const/4 v1, 0x2

    move v2, v1

    :cond_0
    if-ge v2, p1, :cond_6

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v4, v3, 0xf

    const/4 v5, 0x3

    if-gt v4, v5, :cond_5

    shr-int/lit8 v3, v3, 0x4

    if-gt v3, v1, :cond_4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/n0i;->c:[I

    const/4 v6, 0x1

    aput v6, v5, v4

    iget-object v5, v0, Lcom/sunia/HTREnginev2/n0i;->e:[[I

    aget-object v5, v5, v4

    aput v6, v5, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    iget-object v7, v0, Lcom/sunia/HTREnginev2/n0i;->b:[[[I

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_0

    move v8, v5

    :goto_2
    iget-object v9, v0, Lcom/sunia/HTREnginev2/n0i;->b:[[[I

    aget-object v9, v9, v4

    aget-object v9, v9, v3

    aget v9, v9, v6

    if-ge v8, v9, :cond_3

    if-gt v2, p1, :cond_2

    iget-object v9, v0, Lcom/sunia/HTREnginev2/n0i;->d:[[[[I

    aget-object v9, v9, v4

    aget-object v9, v9, v3

    aget-object v9, v9, v6

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "JPEG Huffman Table format error"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected JPEG Huffman Table class (> 2): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected JPEG Huffman Table Id (> 3):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-ne v2, p1, :cond_7

    return-object v0

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JPEG Huffman Table format error, bad segment length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b([I[I[[I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    const/16 v3, 0x100

    if-ge v0, v2, :cond_2

    move v2, p0

    :goto_1
    aget v4, p2, v0

    if-ge v2, v4, :cond_1

    move v4, p0

    :goto_2
    add-int/lit8 v5, v0, 0x1

    shr-int v6, v3, v5

    if-ge v4, v6, :cond_0

    aget-object v6, p3, v0

    aget v6, v6, v2

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    aput v5, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    move v4, v0

    :goto_3
    if-ge v1, v3, :cond_3

    const/high16 v5, -0x80000000

    or-int/2addr v5, v4

    aput v5, p1, v1

    add-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v4, p0

    move v1, v2

    :goto_4
    const/16 v5, 0x10

    if-ge v1, v5, :cond_8

    move v5, p0

    :goto_5
    aget v6, p2, v1

    if-ge v5, v6, :cond_7

    move v6, p0

    :goto_6
    add-int/lit8 v7, v1, -0x7

    shr-int v7, v3, v7

    if-ge v6, v7, :cond_4

    mul-int/lit16 v7, v0, 0x100

    add-int/2addr v7, v4

    aget-object v8, p3, v1

    aget v8, v8, v5

    add-int/lit8 v9, v1, 0x1

    shl-int/2addr v9, v2

    or-int/2addr v8, v9

    aput v8, p1, v7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_4
    if-lt v4, v3, :cond_6

    if-gt v4, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    move v4, p0

    goto :goto_7

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "JPEG Huffman Table error"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public c([[[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/n0i;->e:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-eqz v3, :cond_0

    aget-object v3, p1, v1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/sunia/HTREnginev2/n0i;->b:[[[I

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sunia/HTREnginev2/n0i;->d:[[[[I

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    invoke-virtual {p0, v3, v4, v5}, Lcom/sunia/HTREnginev2/n0i;->b([I[I[[I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DHT[]"

    return-object p0
.end method
