package com.sun.imageio.plugins.tiff;

import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadataFormat;

/* loaded from: classes9.dex */
public class TIFFImageMetadataFormat extends TIFFMetadataFormat {
    private static TIFFImageMetadataFormat theInstance;

    private TIFFImageMetadataFormat() {
        this.resourceBaseName = "javax.imageio.plugins.tiff.TIFFImageMetadataFormatResources";
        this.rootName = TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME;
        String[] strArr = new String[0];
        int i = 4;
        this.elementInfoMap.put(TIFFImageMetadata.NATIVE_METADATA_FORMAT_NAME, new TIFFElementInfo(new String[]{"TIFFIFD"}, strArr, 4));
        this.elementInfoMap.put("TIFFIFD", new TIFFElementInfo(new String[]{"TIFFField", "TIFFIFD"}, new String[]{"tagSets", "parentTagNumber", "parentTagName"}, 4));
        TIFFAttrInfo tIFFAttrInfo = new TIFFAttrInfo();
        tIFFAttrInfo.dataType = 0;
        tIFFAttrInfo.isRequired = true;
        this.attrInfoMap.put("TIFFIFD/tagSets", tIFFAttrInfo);
        TIFFAttrInfo tIFFAttrInfo2 = new TIFFAttrInfo();
        tIFFAttrInfo2.dataType = 2;
        tIFFAttrInfo2.isRequired = false;
        this.attrInfoMap.put("TIFFIFD/parentTagNumber", tIFFAttrInfo2);
        TIFFAttrInfo tIFFAttrInfo3 = new TIFFAttrInfo();
        tIFFAttrInfo3.dataType = 0;
        tIFFAttrInfo3.isRequired = false;
        this.attrInfoMap.put("TIFFIFD/parentTagName", tIFFAttrInfo3);
        String[] strArr2 = {"TIFFByte", "TIFFAscii", "TIFFShort", "TIFFSShort", "TIFFLong", "TIFFSLong", "TIFFRational", "TIFFSRational", "TIFFFloat", "TIFFDouble", "TIFFUndefined"};
        String[] strArr3 = {"value", "description"};
        String[] strArr4 = {"value"};
        TIFFAttrInfo tIFFAttrInfo4 = new TIFFAttrInfo();
        TIFFAttrInfo tIFFAttrInfo5 = new TIFFAttrInfo();
        int i2 = 0;
        while (i2 < 11) {
            if (!strArr2[i2].equals("TIFFUndefined")) {
                TIFFElementInfo tIFFElementInfo = new TIFFElementInfo(new String[]{strArr2[i2]}, strArr, i);
                this.elementInfoMap.put(strArr2[i2] + "s", tIFFElementInfo);
            }
            boolean z = (strArr2[i2].equals("TIFFUndefined") || strArr2[i2].equals("TIFFAscii") || strArr2[i2].equals("TIFFRational") || strArr2[i2].equals("TIFFSRational") || strArr2[i2].equals("TIFFFloat") || strArr2[i2].equals("TIFFDouble")) ? false : true;
            this.elementInfoMap.put(strArr2[i2], new TIFFElementInfo(strArr, z ? strArr3 : strArr4, 0));
            this.attrInfoMap.put(strArr2[i2] + "/value", tIFFAttrInfo4);
            if (z) {
                this.attrInfoMap.put(strArr2[i2] + "/description", tIFFAttrInfo5);
            }
            i2++;
            i = 4;
        }
        String[] strArr5 = new String[21];
        for (int i3 = 0; i3 < 11; i3++) {
            int i4 = i3 * 2;
            strArr5[i4] = strArr2[i3];
            if (!strArr2[i3].equals("TIFFUndefined")) {
                strArr5[i4 + 1] = strArr2[i3] + "s";
            }
        }
        this.elementInfoMap.put("TIFFField", new TIFFElementInfo(strArr5, new String[]{"number", "name"}, 3));
        TIFFAttrInfo tIFFAttrInfo6 = new TIFFAttrInfo();
        tIFFAttrInfo6.isRequired = true;
        this.attrInfoMap.put("TIFFField/number", tIFFAttrInfo6);
        this.attrInfoMap.put("TIFFField/name", new TIFFAttrInfo());
    }

    public static synchronized IIOMetadataFormat getInstance() {
        TIFFImageMetadataFormat tIFFImageMetadataFormat;
        synchronized (TIFFImageMetadataFormat.class) {
            if (theInstance == null) {
                theInstance = new TIFFImageMetadataFormat();
            }
            tIFFImageMetadataFormat = theInstance;
        }
        return tIFFImageMetadataFormat;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public boolean canNodeAppear(String str, ImageTypeSpecifier imageTypeSpecifier) {
        return false;
    }
}
