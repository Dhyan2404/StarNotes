package com.twelvemonkeys.imageio.metadata.xmp;

import java.util.HashMap;

/* loaded from: classes10.dex */
final class XMPNamespaceMapping extends HashMap<String, String> {
    public XMPNamespaceMapping(boolean z) {
        if (z) {
            put(XMP.NS_RDF, "rdf");
            put(XMP.NS_X, "x");
        }
        put("http://purl.org/dc/elements/1.1/", "dc");
        put(XMP.NS_EXIF, "exif");
        put(XMP.NS_PHOTOSHOP, "photoshop");
        put(XMP.NS_ST_REF, "stRef");
        put(XMP.NS_TIFF, "tiff");
        put("http://ns.adobe.com/xap/1.0/", "xap");
        put(XMP.NS_XAP_MM, "xapMM");
    }
}
