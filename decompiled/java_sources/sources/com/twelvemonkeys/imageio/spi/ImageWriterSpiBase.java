package com.twelvemonkeys.imageio.spi;

import javax.imageio.spi.ImageWriterSpi;

/* loaded from: classes10.dex */
public abstract class ImageWriterSpiBase extends ImageWriterSpi {
    public ImageWriterSpiBase(ReaderWriterProviderInfo readerWriterProviderInfo) {
        super(readerWriterProviderInfo.getVendorName(), readerWriterProviderInfo.getVersion(), readerWriterProviderInfo.formatNames(), readerWriterProviderInfo.suffixes(), readerWriterProviderInfo.mimeTypes(), readerWriterProviderInfo.writerClassName(), readerWriterProviderInfo.outputTypes(), readerWriterProviderInfo.readerSpiClassNames(), readerWriterProviderInfo.supportsStandardStreamMetadataFormat(), readerWriterProviderInfo.nativeStreamMetadataFormatName(), readerWriterProviderInfo.nativeStreamMetadataFormatClassName(), readerWriterProviderInfo.extraStreamMetadataFormatNames(), readerWriterProviderInfo.extraStreamMetadataFormatClassNames(), readerWriterProviderInfo.supportsStandardImageMetadataFormat(), readerWriterProviderInfo.nativeImageMetadataFormatName(), readerWriterProviderInfo.nativeImageMetadataFormatClassName(), readerWriterProviderInfo.extraImageMetadataFormatNames(), readerWriterProviderInfo.extraImageMetadataFormatClassNames());
    }
}
