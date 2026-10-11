package org.apache.poi.hmef.attribute;

import java.io.IOException;
import java.io.InputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class TNEFStringAttribute extends TNEFAttribute {
    private static final Logger LOG = LogManager.getLogger((Class<?>) TNEFStringAttribute.class);
    private final String data;

    public TNEFStringAttribute(int i, int i2, InputStream inputStream) throws IOException {
        super(i, i2, inputStream);
        byte[] data = getData();
        String fromUnicodeLE = getType() == 2 ? StringUtil.getFromUnicodeLE(data) : StringUtil.getFromCompressedUnicode(data, 0, data.length);
        this.data = fromUnicodeLE.endsWith("\u0000") ? fromUnicodeLE.substring(0, fromUnicodeLE.length() - 1) : fromUnicodeLE;
    }

    public static String getAsString(TNEFAttribute tNEFAttribute) {
        if (tNEFAttribute == null) {
            return null;
        }
        if (tNEFAttribute instanceof TNEFStringAttribute) {
            return ((TNEFStringAttribute) tNEFAttribute).getString();
        }
        LOG.atWarn().log("Warning, non string property found: {}", tNEFAttribute);
        return null;
    }

    public String getString() {
        return this.data;
    }

    @Override // org.apache.poi.hmef.attribute.TNEFAttribute
    public String toString() {
        return "Attribute " + getProperty() + ", type=" + getType() + ", data=" + getString();
    }
}
