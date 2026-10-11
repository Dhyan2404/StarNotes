.class public Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HexDump"
.end annotation


# static fields
.field public static final a:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length p2, p0

    if-ge p1, p2, :cond_2

    aget-byte p2, p0, p1

    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    const/16 v0, 0x7e

    if-le p2, v0, :cond_1

    :cond_0
    const/16 p2, 0x2e

    aput-byte p2, p0, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    const-string p2, "ascii"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public static dump(J[BII)Ljava/lang/String;
    .locals 8

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, p4, :cond_7

    .line 3
    rem-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_2

    if-lez v2, :cond_1

    const-string v3, "\n"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int v3, v2, p3

    int-to-long v3, v3

    add-long/2addr v3, p0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%08x: "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-lez v2, :cond_3

    .line 6
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    const-string v3, " "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int v3, v2, p3

    .line 8
    aget-byte v3, p2, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 9
    rem-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_4

    if-ne v2, p4, :cond_0

    :cond_4
    rsub-int/lit8 v3, v3, 0x20

    .line 10
    rem-int/lit8 v3, v3, 0x20

    const-string v4, "  "

    if-eqz v3, :cond_6

    .line 11
    div-int/lit8 v5, v3, 0x2

    .line 12
    rem-int/lit8 v6, p4, 0x2

    if-eqz v6, :cond_5

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_6

    const-string v7, "     "

    .line 14
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v3, v3, 0x20

    sub-int v3, v2, v3

    add-int/2addr v3, p3

    add-int v4, v2, p3

    .line 16
    invoke-static {p2, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;->a([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump([B)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;->dump(J[BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
