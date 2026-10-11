package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.plugins.jpeg.JPEGImageReader;
import javax.imageio.metadata.IIOMetadataNode;

/* loaded from: classes10.dex */
public final class xqi {

    /* renamed from: b */
    public static final String f89961b = "javax_imageio_jpeg_image_1.0";

    /* renamed from: a */
    public final JPEGImageReader f89962a;

    public xqi(JPEGImageReader jPEGImageReader) {
        this.f89962a = jPEGImageReader;
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x01ee, code lost:
    
        if (r19.m60503b() < 3) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:132:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0354  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.imageio.metadata.IIOMetadata m58298a(javax.imageio.metadata.IIOMetadata r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.xqi.m58298a(javax.imageio.metadata.IIOMetadata):javax.imageio.metadata.IIOMetadata");
    }

    /* renamed from: b */
    public final void m58299b(IIOMetadataNode iIOMetadataNode, String str) {
        String attribute = iIOMetadataNode.getAttribute(str);
        if (attribute != null) {
            try {
                int parseInt = Integer.parseInt(attribute);
                if (parseInt < 0) {
                    iIOMetadataNode.setAttribute(str, String.valueOf(((byte) parseInt) & 255));
                }
            } catch (NumberFormatException unused) {
                if ("scanComponentSpec".equals(iIOMetadataNode.getNodeName())) {
                    this.f89962a.processWarningOccurred("Bad SOS component selector: " + attribute);
                    return;
                }
                this.f89962a.processWarningOccurred("Bad SOF component id: " + attribute);
            }
        }
    }
}
