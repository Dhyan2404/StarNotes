package com.sun.imageio.plugins.jpeg;

import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadataFormat;

/* loaded from: classes9.dex */
public class JPEGStreamMetadataFormat extends JPEGMetadataFormat {
    private static JPEGStreamMetadataFormat theInstance;

    private JPEGStreamMetadataFormat() {
        super(JPEG.nativeStreamMetadataFormatName, 4);
        addStreamElements(getRootName());
    }

    public static synchronized IIOMetadataFormat getInstance() {
        JPEGStreamMetadataFormat jPEGStreamMetadataFormat;
        synchronized (JPEGStreamMetadataFormat.class) {
            if (theInstance == null) {
                theInstance = new JPEGStreamMetadataFormat();
            }
            jPEGStreamMetadataFormat = theInstance;
        }
        return jPEGStreamMetadataFormat;
    }

    @Override // com.sun.imageio.plugins.jpeg.JPEGMetadataFormat, javax.imageio.metadata.IIOMetadataFormatImpl, javax.imageio.metadata.IIOMetadataFormat
    public /* bridge */ /* synthetic */ boolean canNodeAppear(String str, ImageTypeSpecifier imageTypeSpecifier) {
        return super.canNodeAppear(str, imageTypeSpecifier);
    }
}
