package com.sun.imageio.plugins.tiff;

import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadataFormat;

/* loaded from: classes9.dex */
public class TIFFStreamMetadataFormat extends TIFFMetadataFormat {
    private static TIFFStreamMetadataFormat theInstance;

    private TIFFStreamMetadataFormat() {
        this.resourceBaseName = "javax.imageio.plugins.tiff.TIFFStreamMetadataFormatResources";
        this.rootName = "javax_imageio_tiff_stream_1.0";
        String[] strArr = new String[0];
        this.elementInfoMap.put("javax_imageio_tiff_stream_1.0", new TIFFElementInfo(new String[]{"ByteOrder"}, strArr, 1));
        this.elementInfoMap.put("ByteOrder", new TIFFElementInfo(strArr, new String[]{"value"}, 0));
        TIFFAttrInfo tIFFAttrInfo = new TIFFAttrInfo();
        tIFFAttrInfo.dataType = 0;
        tIFFAttrInfo.isRequired = true;
        this.attrInfoMap.put("ByteOrder/value", tIFFAttrInfo);
    }

    public static synchronized IIOMetadataFormat getInstance() {
        TIFFStreamMetadataFormat tIFFStreamMetadataFormat;
        synchronized (TIFFStreamMetadataFormat.class) {
            if (theInstance == null) {
                theInstance = new TIFFStreamMetadataFormat();
            }
            tIFFStreamMetadataFormat = theInstance;
        }
        return tIFFStreamMetadataFormat;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public boolean canNodeAppear(String str, ImageTypeSpecifier imageTypeSpecifier) {
        return false;
    }
}
