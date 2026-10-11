package org.apache.poi.hmef.attribute;

import java.nio.charset.Charset;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.hsmf.datatypes.Types;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class MAPIStringAttribute extends MAPIAttribute {
    private static final String CODEPAGE = "CP1252";
    private static final Logger LOG = LogManager.getLogger((Class<?>) MAPIStringAttribute.class);
    private final String data;

    public MAPIStringAttribute(MAPIProperty mAPIProperty, int i, byte[] bArr) {
        super(mAPIProperty, i, bArr);
        String fromUnicodeLE;
        if (i == Types.ASCII_STRING.getId()) {
            fromUnicodeLE = new String(bArr, Charset.forName(CODEPAGE));
        } else {
            if (i != Types.UNICODE_STRING.getId()) {
                throw new IllegalArgumentException("Not a string type " + i);
            }
            fromUnicodeLE = StringUtil.getFromUnicodeLE(bArr);
        }
        this.data = fromUnicodeLE.endsWith("\u0000") ? fromUnicodeLE.substring(0, fromUnicodeLE.length() - 1) : fromUnicodeLE;
    }

    public static String getAsString(MAPIAttribute mAPIAttribute) {
        if (mAPIAttribute == null) {
            return null;
        }
        if (mAPIAttribute instanceof MAPIStringAttribute) {
            return ((MAPIStringAttribute) mAPIAttribute).getDataString();
        }
        if (mAPIAttribute instanceof MAPIRtfAttribute) {
            return ((MAPIRtfAttribute) mAPIAttribute).getDataString();
        }
        LOG.atWarn().log("Warning, non string property found: {}", mAPIAttribute);
        return null;
    }

    public String getDataString() {
        return this.data;
    }

    @Override // org.apache.poi.hmef.attribute.MAPIAttribute
    public String toString() {
        return getProperty() + " " + this.data;
    }
}
