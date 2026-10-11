.class public final Lcom/sunia/HTREnginev2/vqi;
.super Lcom/sunia/HTREnginev2/gd;
.source "SourceFile"


# static fields
.field public static final f:I = 0x10

.field public static final g:I = 0x11

.field public static final h:I = 0x13


# instance fields
.field public final d:I

.field public final e:[B


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 2

    const v0, 0xffe0

    const-string v1, "JFXX"

    invoke-direct {p0, v0, v1, p3}, Lcom/sunia/HTREnginev2/gd;-><init>(ILjava/lang/String;[B)V

    iput p1, p0, Lcom/sunia/HTREnginev2/vqi;->d:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vqi;->e:[B

    return-void
.end method

.method public static e(Ljava/io/DataInput;I)Lcom/sunia/HTREnginev2/vqi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    add-int/lit8 p1, p1, -0x2

    sub-int/2addr p1, v0

    new-array v0, p1, [B

    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance p0, Lcom/sunia/HTREnginev2/vqi;

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    if-lez p1, :cond_0

    invoke-static {v0, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/sunia/HTREnginev2/vqi;-><init>(I[B[B)V

    return-object p0
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/sunia/HTREnginev2/vqi;->d:I

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RGB"

    return-object p0

    :cond_1
    const-string p0, "Indexed"

    return-object p0

    :cond_2
    const-string p0, "JPEG"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vqi;->d()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vqi;->e:[B

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JFXX extension (%s thumb size: %d)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
