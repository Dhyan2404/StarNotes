package org.apache.poi.smtp;

import java.util.Locale;
import org.apache.poi.util.StringUtils;

/* loaded from: classes12.dex */
public enum ContentTransferEncoding {
    NONE(""),
    BIT_7("7bit"),
    BIT_8("8bit"),
    BASE64("base64"),
    BINARY("binary"),
    QUOTED_PRINTABLE("quoted-printable"),
    X_TOKEN("x-"),
    UNKNOWN("unknown");

    private String encoding;

    ContentTransferEncoding(String str) {
        this.encoding = str;
    }

    public static ContentTransferEncoding fromEncoding(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return NONE;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        for (ContentTransferEncoding contentTransferEncoding : values()) {
            if (contentTransferEncoding.encoding.equals(lowerCase)) {
                return contentTransferEncoding;
            }
        }
        return UNKNOWN;
    }
}
