.class public final Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;
.super Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:S


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;->d(Ljava/lang/Object;)S

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;-><init>(ISLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ISLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-short p2, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;->c:S

    return-void
.end method

.method public static d(Ljava/lang/Object;)S
    .locals 5

    invoke-static {p0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    instance-of v1, p0, Ljava/lang/Byte;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p0, Ljava/lang/Short;

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    instance-of v1, p0, Ljava/lang/Integer;

    const/4 v2, 0x4

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x7fff

    if-ge p0, v0, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v0, v3

    if-gez v0, :cond_6

    return v2

    :cond_6
    instance-of v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    if-eqz v0, :cond_7

    const/4 p0, 0x5

    return p0

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Method guessType not implemented for value of type %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_NAMES:[Ljava/lang/String;

    iget-short p0, p0, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageWriter$a;->c:S

    aget-object p0, v0, p0

    return-object p0
.end method
