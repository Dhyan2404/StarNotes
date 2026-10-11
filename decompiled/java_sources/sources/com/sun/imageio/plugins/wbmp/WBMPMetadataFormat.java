package com.sun.imageio.plugins.wbmp;

import com.google.common.net.HttpHeaders;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.metadata.IIOMetadataFormat;
import javax.imageio.metadata.IIOMetadataFormatImpl;

/* loaded from: classes9.dex */
public class WBMPMetadataFormat extends IIOMetadataFormatImpl {
    private static IIOMetadataFormat instance;

    private WBMPMetadataFormat() {
        super("javax_imageio_wbmp_1.0", 2);
        addElement("ImageDescriptor", "javax_imageio_wbmp_1.0", 0);
        addAttribute("ImageDescriptor", "WBMPType", 2, true, "0");
        addAttribute("ImageDescriptor", HttpHeaders.WIDTH, 2, true, null, "0", "65535", true, true);
        addAttribute("ImageDescriptor", "Height", 2, true, null, "1", "65535", true, true);
    }

    public static synchronized IIOMetadataFormat getInstance() {
        IIOMetadataFormat iIOMetadataFormat;
        synchronized (WBMPMetadataFormat.class) {
            if (instance == null) {
                instance = new WBMPMetadataFormat();
            }
            iIOMetadataFormat = instance;
        }
        return iIOMetadataFormat;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormatImpl, javax.imageio.metadata.IIOMetadataFormat
    public boolean canNodeAppear(String str, ImageTypeSpecifier imageTypeSpecifier) {
        return true;
    }
}
