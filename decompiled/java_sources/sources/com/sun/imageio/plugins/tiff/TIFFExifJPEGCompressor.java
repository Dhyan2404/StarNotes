package com.sun.imageio.plugins.tiff;

import javax.imageio.ImageWriteParam;
import javax.imageio.metadata.IIOMetadata;

/* loaded from: classes9.dex */
public class TIFFExifJPEGCompressor extends TIFFBaseJPEGCompressor {
    public TIFFExifJPEGCompressor(ImageWriteParam imageWriteParam) {
        super("Exif JPEG", 6, false, imageWriteParam);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFCompressor
    public void setMetadata(IIOMetadata iIOMetadata) {
        super.setMetadata(iIOMetadata);
        initJPEGWriter(false, true);
    }
}
