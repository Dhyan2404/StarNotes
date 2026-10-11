package com.burgstaller.okhttp.digest.fromhttpclient;

/* loaded from: classes3.dex */
public class BasicHeaderValueFormatter {
    public static final BasicHeaderValueFormatter DEFAULT = new BasicHeaderValueFormatter();

    public void doFormatValue(StringBuilder sb, String str, boolean z) {
        if (!z) {
            for (int i = 0; i < str.length() && !z; i++) {
                z = isSeparator(str.charAt(i));
            }
        }
        if (z) {
            sb.append('\"');
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (isUnsafe(charAt)) {
                sb.append('\\');
            }
            sb.append(charAt);
        }
        if (z) {
            sb.append('\"');
        }
    }

    public StringBuilder formatNameValuePair(StringBuilder sb, NameValuePair nameValuePair, boolean z) {
        sb.append(nameValuePair.getName());
        String value = nameValuePair.getValue();
        if (value != null) {
            sb.append('=');
            doFormatValue(sb, value, z);
        }
        return sb;
    }

    public boolean isSeparator(char c) {
        return org.apache.http.message.BasicHeaderValueFormatter.SEPARATORS.indexOf(c) >= 0;
    }

    public boolean isUnsafe(char c) {
        return org.apache.http.message.BasicHeaderValueFormatter.UNSAFE_CHARS.indexOf(c) >= 0;
    }
}
