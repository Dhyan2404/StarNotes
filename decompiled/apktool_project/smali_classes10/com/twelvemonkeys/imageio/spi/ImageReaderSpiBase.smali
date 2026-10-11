.class public abstract Lcom/twelvemonkeys/imageio/spi/ImageReaderSpiBase;
.super Ljavax/imageio/spi/ImageReaderSpi;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->getVendorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->formatNames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->suffixes()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->mimeTypes()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->readerClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->inputTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->writerSpiClassNames()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->supportsStandardStreamMetadataFormat()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->nativeStreamMetadataFormatName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->nativeStreamMetadataFormatClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->extraStreamMetadataFormatNames()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->extraStreamMetadataFormatClassNames()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->supportsStandardImageMetadataFormat()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->nativeImageMetadataFormatName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->nativeImageMetadataFormatClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->extraImageMetadataFormatNames()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;->extraImageMetadataFormatClassNames()[Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v0 .. v18}, Ljavax/imageio/spi/ImageReaderSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
