.class public final Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;
.super Lcom/sunia/HTREnginev2/sdm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;


# direct methods
.method public constructor <init>([Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;IIII)V
    .locals 1

    const v0, 0xffda

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/sdm;-><init>(I)V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->f:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;

    iput p2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->b:I

    iput p3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->c:I

    iput p4, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->d:I

    iput p5, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->e:I

    return-void
.end method

.method public static b(Ljava/io/DataInput;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x6

    if-ne v1, p1, :cond_1

    new-array v3, v0, [Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    new-instance v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;

    and-int/lit8 v5, v2, 0xf

    shr-int/lit8 v2, v2, 0x4

    invoke-direct {v4, v1, v5, v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;-><init>(III)V

    aput-object v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p0

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    shr-int/lit8 v6, p0, 0x4

    and-int/lit8 v7, p0, 0xf

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;-><init>([Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;IIII)V

    return-object p1

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Unexpected SOS length: %d != %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    new-instance v1, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;

    int-to-long v2, v0

    invoke-direct {v1, p0, v2, v3}, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;J)V

    invoke-static {v1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->b(Ljava/io/DataInput;I)Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan;->f:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Scan$Component;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SOS[spectralSelStart: %d, spectralSelEnd: %d, approxHigh: %d, approxLow: %d, components: %s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
