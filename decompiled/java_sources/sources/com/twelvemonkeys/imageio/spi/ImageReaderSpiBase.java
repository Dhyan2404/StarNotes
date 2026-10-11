package com.twelvemonkeys.imageio.spi;

import javax.imageio.spi.ImageReaderSpi;

/* loaded from: classes10.dex */
public abstract class ImageReaderSpiBase extends ImageReaderSpi {
    public ImageReaderSpiBase(ReaderWriterProviderInfo readerWriterProviderInfo) {
        super(readerWriterProviderInfo.getVendorName(), readerWriterProviderInfo.getVersion(), readerWriterProviderInfo.formatNames(), readerWriterProviderInfo.suffixes(), readerWriterProviderInfo.mimeTypes(), readerWriterProviderInfo.readerClassName(), readerWriterProviderInfo.inputTypes(), readerWriterProviderInfo.writerSpiClassNames(), readerWriterProviderInfo.supportsStandardStreamMetadataFormat(), readerWriterProviderInfo.nativeStreamMetadataFormatName(), readerWriterProviderInfo.nativeStreamMetadataFormatClassName(), readerWriterProviderInfo.extraStreamMetadataFormatNames(), readerWriterProviderInfo.extraStreamMetadataFormatClassNames(), readerWriterProviderInfo.supportsStandardImageMetadataFormat(), readerWriterProviderInfo.nativeImageMetadataFormatName(), readerWriterProviderInfo.nativeImageMetadataFormatClassName(), readerWriterProviderInfo.extraImageMetadataFormatNames(), readerWriterProviderInfo.extraImageMetadataFormatClassNames());
    }
}
