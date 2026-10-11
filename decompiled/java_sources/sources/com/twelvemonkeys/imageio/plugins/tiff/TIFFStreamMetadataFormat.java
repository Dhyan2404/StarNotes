package com.twelvemonkeys.imageio.plugins.tiff;

import java.nio.ByteOrder;
import java.util.Arrays;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadataFormatImpl;

/* loaded from: classes10.dex */
public final class TIFFStreamMetadataFormat extends IIOMetadataFormatImpl {
    public static final String SUN_NATIVE_STREAM_METADATA_FORMAT_NAME = "com_sun_media_imageio_plugins_tiff_stream_1.0";

    /* renamed from: a */
    public static final TIFFStreamMetadataFormat f94179a = new TIFFStreamMetadataFormat();

    public TIFFStreamMetadataFormat() {
        super("com_sun_media_imageio_plugins_tiff_stream_1.0", 1);
        addElement("ByteOrder", "com_sun_media_imageio_plugins_tiff_stream_1.0", 0);
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        addAttribute("ByteOrder", "value", 0, true, byteOrder.toString(), Arrays.asList(byteOrder.toString(), ByteOrder.LITTLE_ENDIAN.toString()));
    }

    public static TIFFStreamMetadataFormat getInstance() {
        return f94179a;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormatImpl, javax.imageio.metadata.IIOMetadataFormat
    public boolean canNodeAppear(String str, ImageTypeSpecifier imageTypeSpecifier) {
        return true;
    }
}
