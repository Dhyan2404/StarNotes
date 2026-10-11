package com.twelvemonkeys.imageio.plugins.tiff;

import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadataFormatImpl;

/* loaded from: classes10.dex */
public final class TIFFMedataFormat extends IIOMetadataFormatImpl {
    public static final String SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME = "com_sun_media_imageio_plugins_tiff_image_1.0";

    /* renamed from: a */
    public static final TIFFMedataFormat f94177a = new TIFFMedataFormat();

    public TIFFMedataFormat() {
        super(SUN_NATIVE_IMAGE_METADATA_FORMAT_NAME, 2);
    }

    public static TIFFMedataFormat getInstance() {
        return f94177a;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormatImpl, javax.imageio.metadata.IIOMetadataFormat
    public boolean canNodeAppear(String str, ImageTypeSpecifier imageTypeSpecifier) {
        return true;
    }
}
