.class public final Lcom/sunia/HTREnginev2/hal;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# instance fields
.field public final b:[I

.field public final c:[I

.field public final d:[[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0xffdb

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sunia/HTREnginev2/hal;->b:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sunia/HTREnginev2/hal;->c:[I

    const/16 v2, 0x40

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sunia/HTREnginev2/hal;->d:[[I

    const/4 p0, 0x0

    aput p0, v1, p0

    const/4 v0, 0x1

    aput p0, v1, v0

    const/4 v0, 0x2

    aput p0, v1, v0

    const/4 v0, 0x3

    aput p0, v1, v0

    return-void
.end method

.method public static d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/hal;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hal;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hal;-><init>()V

    const/4 v1, 0x2

    :cond_0
    if-ge v1, p1, :cond_7

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v3, v2, 0xf

    const/4 v4, 0x3

    if-gt v3, v4, :cond_6

    iget-object v4, v0, Lcom/sunia/HTREnginev2/hal;->b:[I

    shr-int/lit8 v2, v2, 0x4

    aput v2, v4, v3

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-nez v2, :cond_1

    aput v5, v4, v3

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_5

    const/16 v2, 0x10

    aput v2, v4, v3

    :goto_0
    iget-object v2, v0, Lcom/sunia/HTREnginev2/hal;->c:[I

    aput v6, v2, v3

    aget v2, v4, v3

    const-string v4, "JPEG Quantization Table format error"

    const/16 v6, 0x40

    const/4 v7, 0x0

    if-ne v2, v5, :cond_3

    :goto_1
    if-ge v7, v6, :cond_0

    if-gt v1, p1, :cond_2

    iget-object v2, v0, Lcom/sunia/HTREnginev2/hal;->d:[[I

    aget-object v2, v2, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    aput v5, v2, v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-direct {p0, v4}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    if-ge v7, v6, :cond_0

    if-gt v1, p1, :cond_4

    iget-object v2, v0, Lcom/sunia/HTREnginev2/hal;->d:[[I

    aget-object v2, v2, v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    aput v5, v2, v7

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-direct {p0, v4}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected JPEG Quantization Table precision: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/hal;->b:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected JPEG Quantization Table Id (> 3): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-ne v1, p1, :cond_8

    return-object v0

    :cond_8
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JPEG Quantization Table error, bad segment length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b([I[I)V
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x5a

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x20

    aget v1, p2, v1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x5a

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x10

    aget v1, p2, v1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x76

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x30

    aget v1, p2, v1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x31

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x28

    aget v1, p2, v1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x47

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x8

    aget v1, p2, v1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x7e

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x38

    aget v1, p2, v1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x19

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x18

    aget v1, p2, v1

    aget v2, p1, v1

    mul-int/lit8 v2, v2, 0x6a

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_1
    if-ge v0, v1, :cond_1

    mul-int/lit8 v2, v0, 0x8

    aget v3, p2, v2

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0x5a

    aput v4, p1, v3

    add-int/lit8 v3, v2, 0x4

    aget v3, p2, v3

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0x5a

    aput v4, p1, v3

    add-int/lit8 v3, v2, 0x2

    aget v3, p2, v3

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0x76

    aput v4, p1, v3

    add-int/lit8 v3, v2, 0x6

    aget v3, p2, v3

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0x31

    aput v4, p1, v3

    add-int/lit8 v3, v2, 0x5

    aget v3, p2, v3

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0x47

    aput v4, p1, v3

    add-int/lit8 v3, v2, 0x1

    aget v3, p2, v3

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0x7e

    aput v4, p1, v3

    add-int/lit8 v3, v2, 0x7

    aget v3, p2, v3

    aget v4, p1, v3

    mul-int/lit8 v4, v4, 0x19

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x3

    aget v2, p2, v2

    aget v3, p1, v2

    mul-int/lit8 v3, v3, 0x6a

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 p2, 0x40

    if-ge p0, p2, :cond_2

    aget p2, p1, p0

    shr-int/lit8 p2, p2, 0x6

    aput p2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public c([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hal;->c:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hal;->d:[[I

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, p1}, Lcom/sunia/HTREnginev2/hal;->b([I[I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DQT[]"

    return-object p0
.end method
