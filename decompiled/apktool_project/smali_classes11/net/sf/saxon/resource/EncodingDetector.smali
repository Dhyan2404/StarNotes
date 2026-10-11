.class public Lnet/sf/saxon/resource/EncodingDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static b([BILnet/sf/saxon/lib/Logger;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "UTF-16LE"

    const-string v4, "UTF-16"

    const/4 v5, 0x2

    if-lt p1, v5, :cond_4

    aget-byte v6, p0, v0

    invoke-static {v6}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v6

    const/16 v7, 0xff

    const/16 v8, 0xfe

    if-ne v6, v8, :cond_2

    aget-byte v6, p0, v1

    invoke-static {v6}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v6

    if-ne v6, v7, :cond_2

    if-eqz v2, :cond_1

    const-string p0, "unparsed-text(): found UTF-16 byte order mark"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-object v4

    :cond_2
    aget-byte v6, p0, v0

    invoke-static {v6}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v6

    if-ne v6, v7, :cond_4

    aget-byte v6, p0, v1

    invoke-static {v6}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v6

    if-ne v6, v8, :cond_4

    if-eqz v2, :cond_3

    const-string p0, "unparsed-text(): found UTF-16LE byte order mark"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_3
    return-object v3

    :cond_4
    const-string v6, "UTF-8"

    const/4 v7, 0x3

    if-lt p1, v7, :cond_6

    aget-byte v8, p0, v0

    invoke-static {v8}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v8

    const/16 v9, 0xef

    if-ne v8, v9, :cond_6

    aget-byte v8, p0, v1

    invoke-static {v8}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v8

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_6

    aget-byte v8, p0, v5

    invoke-static {v8}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v8

    const/16 v9, 0xbf

    if-ne v8, v9, :cond_6

    if-eqz v2, :cond_5

    const-string p0, "unparsed-text(): found UTF-8 byte order mark"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_5
    return-object v6

    :cond_6
    const/4 v8, 0x4

    if-lt p1, v8, :cond_d

    aget-byte v3, p0, v0

    invoke-static {v3}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_11

    aget-byte v1, p0, v1

    invoke-static {v1}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_11

    aget-byte v1, p0, v5

    invoke-static {v1}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v1

    const/16 v3, 0x78

    if-ne v1, v3, :cond_11

    aget-byte v1, p0, v7

    invoke-static {v1}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v1

    const/16 v3, 0x6d

    if-ne v1, v3, :cond_11

    aget-byte v1, p0, v8

    invoke-static {v1}, Lnet/sf/saxon/resource/EncodingDetector;->a(B)I

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_11

    if-eqz v2, :cond_7

    const-string v1, "unparsed-text(): found XML declaration"

    invoke-virtual {p2, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v0

    :goto_1
    if-ge v3, p1, :cond_8

    aget-byte v4, p0, v3

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "encoding"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_c

    add-int/lit8 p1, p1, 0x8

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_9

    const-string v3, " \n\r\t=\"\'"

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    if-eq v0, v3, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x27

    if-eq v0, v3, :cond_a

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v0

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unparsed-text(): encoding in XML declaration = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz v2, :cond_11

    const-string p0, "unparsed-text(): no encoding found in XML declaration"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    if-lez p1, :cond_f

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    aget-byte v0, p0, v5

    if-nez v0, :cond_f

    aget-byte v0, p0, v8

    if-nez v0, :cond_f

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    if-eqz v2, :cond_e

    const-string p0, "unparsed-text(): even-numbered bytes are zero, inferring UTF-16"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_e
    return-object v4

    :cond_f
    if-le p1, v1, :cond_11

    aget-byte p1, p0, v1

    if-nez p1, :cond_11

    aget-byte p1, p0, v7

    if-nez p1, :cond_11

    const/4 p1, 0x5

    aget-byte p1, p0, p1

    if-nez p1, :cond_11

    const/4 p1, 0x7

    aget-byte p0, p0, p1

    if-nez p0, :cond_11

    if-eqz v2, :cond_10

    const-string p0, "unparsed-text(): odd-numbered bytes are zero, inferring UTF-16LE"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_10
    return-object v3

    :cond_11
    :goto_4
    if-eqz v2, :cond_12

    const-string p0, "unparsed-text(): assuming fallback encoding (UTF-8)"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_12
    return-object v6
.end method

.method public static inferStreamEncoding(Ljava/io/InputStream;Lnet/sf/saxon/lib/Logger;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/query/InputStreamMarker;

    invoke-direct {v0, p0}, Lnet/sf/saxon/query/InputStreamMarker;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/InputStreamMarker;->mark(I)V

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    invoke-virtual {v0}, Lnet/sf/saxon/query/InputStreamMarker;->reset()V

    invoke-static {v2, p0, p1}, Lnet/sf/saxon/resource/EncodingDetector;->b([BILnet/sf/saxon/lib/Logger;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
