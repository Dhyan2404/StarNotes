package org.apache.poi.openxml4j.opc;

/* loaded from: classes12.dex */
public final class ContentTypes {
    public static final String CORE_PROPERTIES_PART = "application/vnd.openxmlformats-package.core-properties+xml";
    public static final String CUSTOM_XML_PART = "application/vnd.openxmlformats-officedocument.customXmlProperties+xml";
    public static final String DIGITAL_SIGNATURE_CERTIFICATE_PART = "application/vnd.openxmlformats-package.digital-signature-certificate";
    public static final String DIGITAL_SIGNATURE_ORIGIN_PART = "application/vnd.openxmlformats-package.digital-signature-origin";
    public static final String DIGITAL_SIGNATURE_XML_SIGNATURE_PART = "application/vnd.openxmlformats-package.digital-signature-xmlsignature+xml";
    public static final String EXTENSION_GIF = "gif";
    public static final String EXTENSION_JPG_1 = "jpg";
    public static final String EXTENSION_JPG_2 = "jpeg";
    public static final String EXTENSION_PICT = "pict";
    public static final String EXTENSION_PNG = "png";
    public static final String EXTENSION_TIFF = "tiff";
    public static final String EXTENSION_XML = "xml";
    public static final String IMAGE_GIF = "image/gif";
    public static final String IMAGE_JPEG = "image/jpeg";
    public static final String IMAGE_PICT = "image/x-pict";
    public static final String IMAGE_PNG = "image/png";
    public static final String IMAGE_TIFF = "image/tiff";
    public static final String PLAIN_OLD_XML = "application/xml";
    public static final String RELATIONSHIPS_PART = "application/vnd.openxmlformats-package.relationships+xml";
    public static final String XML = "text/xml";

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005c, code lost:
    
        if (r3.equals("jpg") == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getContentTypeFromFileExtension(java.lang.String r3) {
        /*
            r0 = 46
            int r0 = r3.lastIndexOf(r0)
            r1 = 1
            int r0 = r0 + r1
            java.lang.String r3 = r3.substring(r0)
            java.util.Locale r0 = java.util.Locale.ROOT
            java.lang.String r3 = r3.toLowerCase(r0)
            r3.hashCode()
            int r0 = r3.hashCode()
            r2 = -1
            switch(r0) {
                case 102340: goto L5f;
                case 105441: goto L56;
                case 111145: goto L4b;
                case 118807: goto L40;
                case 3268712: goto L35;
                case 3440682: goto L2a;
                case 3559925: goto L1f;
                default: goto L1d;
            }
        L1d:
            r1 = r2
            goto L69
        L1f:
            java.lang.String r0 = "tiff"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L28
            goto L1d
        L28:
            r1 = 6
            goto L69
        L2a:
            java.lang.String r0 = "pict"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L33
            goto L1d
        L33:
            r1 = 5
            goto L69
        L35:
            java.lang.String r0 = "jpeg"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L3e
            goto L1d
        L3e:
            r1 = 4
            goto L69
        L40:
            java.lang.String r0 = "xml"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L49
            goto L1d
        L49:
            r1 = 3
            goto L69
        L4b:
            java.lang.String r0 = "png"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L54
            goto L1d
        L54:
            r1 = 2
            goto L69
        L56:
            java.lang.String r0 = "jpg"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L69
            goto L1d
        L5f:
            java.lang.String r0 = "gif"
            boolean r3 = r3.equals(r0)
            if (r3 != 0) goto L68
            goto L1d
        L68:
            r1 = 0
        L69:
            switch(r1) {
                case 0: goto L7d;
                case 1: goto L7a;
                case 2: goto L77;
                case 3: goto L74;
                case 4: goto L7a;
                case 5: goto L71;
                case 6: goto L6e;
                default: goto L6c;
            }
        L6c:
            r3 = 0
            return r3
        L6e:
            java.lang.String r3 = "image/tiff"
            return r3
        L71:
            java.lang.String r3 = "image/x-pict"
            return r3
        L74:
            java.lang.String r3 = "text/xml"
            return r3
        L77:
            java.lang.String r3 = "image/png"
            return r3
        L7a:
            java.lang.String r3 = "image/jpeg"
            return r3
        L7d:
            java.lang.String r3 = "image/gif"
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.openxml4j.opc.ContentTypes.getContentTypeFromFileExtension(java.lang.String):java.lang.String");
    }
}
