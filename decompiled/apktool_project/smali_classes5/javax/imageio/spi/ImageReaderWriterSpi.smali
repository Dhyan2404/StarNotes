.class public abstract Ljavax/imageio/spi/ImageReaderWriterSpi;
.super Ljavax/imageio/spi/IIOServiceProvider;
.source "SourceFile"


# instance fields
.field protected MIMETypes:[Ljava/lang/String;

.field protected extraImageMetadataFormatClassNames:[Ljava/lang/String;

.field protected extraImageMetadataFormatNames:[Ljava/lang/String;

.field protected extraStreamMetadataFormatClassNames:[Ljava/lang/String;

.field protected extraStreamMetadataFormatNames:[Ljava/lang/String;

.field protected names:[Ljava/lang/String;

.field protected nativeImageMetadataFormatClassName:Ljava/lang/String;

.field protected nativeImageMetadataFormatName:Ljava/lang/String;

.field protected nativeStreamMetadataFormatClassName:Ljava/lang/String;

.field protected nativeStreamMetadataFormatName:Ljava/lang/String;

.field protected pluginClassName:Ljava/lang/String;

.field protected suffixes:[Ljava/lang/String;

.field protected supportsStandardImageMetadataFormat:Z

.field protected supportsStandardStreamMetadataFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljavax/imageio/spi/IIOServiceProvider;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    .line 42
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

    .line 44
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    .line 46
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    .line 49
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    .line 51
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    .line 54
    iput-object v0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    .line 1
    invoke-direct {p0, p1, p2}, Ljavax/imageio/spi/IIOServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 2
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    .line 3
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

    .line 4
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

    .line 5
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    const/4 v10, 0x0

    .line 6
    iput-boolean v10, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    .line 7
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    .line 8
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    .line 9
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    .line 10
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    .line 11
    iput-boolean v10, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    .line 12
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    .line 13
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    .line 14
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    .line 15
    iput-object v9, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 16
    array-length v9, v1

    if-eqz v9, :cond_7

    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 18
    array-length v1, v2

    if-lez v1, :cond_0

    .line 19
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

    :cond_0
    if-eqz v3, :cond_1

    .line 20
    array-length v1, v3

    if-lez v1, :cond_1

    .line 21
    invoke-virtual/range {p5 .. p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

    .line 22
    :cond_1
    iput-object v4, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    move/from16 v1, p7

    .line 23
    iput-boolean v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    move-object/from16 v1, p8

    .line 24
    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 25
    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 26
    array-length v1, v5

    if-lez v1, :cond_2

    .line 27
    invoke-virtual/range {p10 .. p10}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    :cond_2
    if-eqz v6, :cond_3

    .line 28
    array-length v1, v6

    if-lez v1, :cond_3

    .line 29
    invoke-virtual/range {p11 .. p11}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    :cond_3
    move/from16 v1, p12

    .line 30
    iput-boolean v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    move-object/from16 v1, p13

    .line 31
    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 32
    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 33
    array-length v1, v7

    if-lez v1, :cond_4

    .line 34
    invoke-virtual/range {p15 .. p15}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    :cond_4
    if-eqz v8, :cond_5

    .line 35
    array-length v1, v8

    if-lez v1, :cond_5

    .line 36
    invoke-virtual/range {p16 .. p16}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    :cond_5
    return-void

    .line 37
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginClassName == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "names.length == 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "names == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    const-string p0, "javax_imageio_1.0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljavax/imageio/metadata/IIOMetadataFormatImpl;->getStandardFormatInstance()Ljavax/imageio/metadata/IIOMetadataFormat;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_3

    move p0, p3

    :goto_0
    array-length p4, p5

    if-ge p0, p4, :cond_3

    aget-object p4, p5, p0

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    aget-object p4, p6, p0

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    move-object p4, p2

    :goto_1
    if-eqz p4, :cond_4

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p4, p1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "getInstance"

    new-array p4, p3, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/metadata/IIOMetadataFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t obtain format"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported format name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "formatName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExtraImageMetadataFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getExtraStreamMetadataFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getFileSuffixes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getImageMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 7

    iget-boolean v2, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    iget-object v3, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    iget-object v4, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    iget-object v5, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    iget-object v6, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/imageio/spi/ImageReaderWriterSpi;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;

    move-result-object p0

    return-object p0
.end method

.method public getMIMETypes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getNativeImageMetadataFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeStreamMetadataFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    return-object p0
.end method

.method public getPluginClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getStreamMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 7

    iget-boolean v2, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    iget-object v3, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    iget-object v4, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    iget-object v5, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    iget-object v6, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/imageio/spi/ImageReaderWriterSpi;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;

    move-result-object p0

    return-object p0
.end method

.method public isStandardImageMetadataFormatSupported()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    return p0
.end method

.method public isStandardStreamMetadataFormatSupported()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    return p0
.end method
