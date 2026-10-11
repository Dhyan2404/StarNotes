.class public final Lcom/sunia/HTREnginev2/d9;
.super Lcom/sunia/HTREnginev2/gd;
.source "SourceFile"


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/16 v1, 0x41

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x64

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x6f

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x62

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0x65

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    const/16 v1, 0xb

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    const v1, 0xffee

    const-string v2, "Adobe"

    invoke-direct {p0, v1, v2, v0}, Lcom/sunia/HTREnginev2/gd;-><init>(ILjava/lang/String;[B)V

    iput p1, p0, Lcom/sunia/HTREnginev2/d9;->d:I

    iput p2, p0, Lcom/sunia/HTREnginev2/d9;->e:I

    iput p3, p0, Lcom/sunia/HTREnginev2/d9;->f:I

    iput p4, p0, Lcom/sunia/HTREnginev2/d9;->g:I

    return-void
.end method

.method public static d(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/d9;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Ljava/io/DataInput;->skipBytes(I)I

    new-instance p1, Lcom/sunia/HTREnginev2/d9;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/d9;-><init>(IIII)V

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sunia/HTREnginev2/d9;->d:I

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/sunia/HTREnginev2/d9;->d:I

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/sunia/HTREnginev2/d9;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sunia/HTREnginev2/d9;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    iget p0, p0, Lcom/sunia/HTREnginev2/d9;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "AdobeDCT[ver: %d.%02d, flags: %s %s, transform: %d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
