.class public final Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;


# direct methods
.method public constructor <init>(IIII[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    iput p2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b:I

    iput p3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->c:I

    iput p4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->d:I

    iput-object p5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    return-void
.end method

.method public static e(ILjava/io/DataInput;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x8

    if-ne p2, v1, :cond_1

    new-array v5, v0, [Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    new-instance v8, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    and-int/lit16 v9, v6, 0xf0

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-direct {v8, v1, v9, v6, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;-><init>(IIII)V

    aput-object v8, v5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-object v0, p1

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;-><init>(IIII[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;)V

    return-object p1

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unexpected SOF length: %d != %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(ILjavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    new-instance v1, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;

    int-to-long v2, v0

    invoke-direct {v1, p1, v2, v3}, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;J)V

    invoke-static {p0, v1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e(ILjava/io/DataInput;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    array-length p0, p0

    return p0
.end method

.method public c(I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;
    .locals 4

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "No such component id: %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/sunia/HTREnginev2/sdm;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SOF%d[%04x, precision: %d, lines: %d, samples/line: %d, components: %s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
