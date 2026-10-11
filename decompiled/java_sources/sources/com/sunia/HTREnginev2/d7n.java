package com.sunia.HTREnginev2;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.twelvemonkeys.imageio.plugins.tiff.TIFFMedataFormat;
import com.twelvemonkeys.imageio.spi.ReaderWriterProviderInfo;
import org.apache.poi.openxml4j.opc.ContentTypes;

/* loaded from: classes10.dex */
public final class d7n extends ReaderWriterProviderInfo {
    public d7n() {
        super(d7n.class, new String[]{"tiff", "TIFF", FileTypeConstant.TIF, "TIF"}, new String[]{FileTypeConstant.TIF, "tiff"}, new String[]{ContentTypes.IMAGE_TIFF, "image/x-tiff"}, "com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReader", new String[]{"com.twelvemonkeys.imageio.plugins.tiff.TIFFImageReaderSpi"}, "com.twelvemonkeys.imageio.plugins.tiff.TIFFImageWriter", new String[]{"com.twelvemonkeys.imageio.plugins.tiff.TIFFImageWriterSpi"}, false, "com_sun_media_imageio_plugins_tiff_stream_1.0", "com.twelvemonkeys.imageio.plugins.tiff.TIFFStreamMetadataFormat", null, null, true, TIFFMedataFormat.SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME, "com.twelvemonkeys.imageio.plugins.tiff.TIFFMedataFormat", null, null);
    }
}
