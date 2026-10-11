.class public Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;
.super Ljavax/imageio/ImageWriteParam;
.source "SourceFile"


# instance fields
.field public a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

.field public b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field public c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field public d:Z

.field public e:[Ljava/lang/String;

.field public f:[F

.field public g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->d:Z

    const-string v0, "JPEG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->e:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->f:[F

    const-string v1, "Medium quality"

    const-string v2, "Visually lossless"

    const-string v3, "Low quality"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->g:[Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/imageio/ImageWriteParam;->canWriteProgressive:Z

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->progressiveMode:I

    iput-boolean v1, p0, Ljavax/imageio/ImageWriteParam;->canWriteCompressed:Z

    iput-object v0, p0, Ljavax/imageio/ImageWriteParam;->compressionTypes:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Ljavax/imageio/ImageWriteParam;->compressionType:Ljava/lang/String;

    const/high16 p1, 0x3f400000    # 0.75f

    iput p1, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public areTablesSet()Z
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getACHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCompressionQualityDescriptions()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->g:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompressionQualityValues()[F
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No compression type set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->f:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDCHuffmanTables()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOptimizeHuffmanTables()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->d:Z

    return p0
.end method

.method public getQTables()[Ljavax/imageio/plugins/jpeg/JPEGQTable;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Ljavax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isCompressionLossless()Z
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEncodeTables([Ljavax/imageio/plugins/jpeg/JPEGQTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    array-length v0, p2

    if-gt v0, v1, :cond_0

    array-length v0, p3

    if-gt v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [Ljavax/imageio/plugins/jpeg/JPEGQTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    invoke-virtual {p2}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-virtual {p3}, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid JPEG table arrays"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOptimizeHuffmanTables(Z)V
    .locals 0

    iput-boolean p1, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->d:Z

    return-void
.end method

.method public unsetCompression()V
    .locals 2

    invoke-virtual {p0}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljavax/imageio/ImageWriteParam;->compressionQuality:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Compression mode not MODE_EXPLICIT!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unsetEncodeTables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-void
.end method
