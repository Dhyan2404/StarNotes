package org.apache.logging.log4j.util;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.util.Map;

/* loaded from: classes12.dex */
public final class StringBuilders {
    /* renamed from: a */
    public static int m68670a(final StringBuilder toAppendTo, int lastPos, final char c) {
        int i = lastPos - 1;
        toAppendTo.setCharAt(lastPos, c);
        int i2 = i - 1;
        toAppendTo.setCharAt(i, '\\');
        return i2;
    }

    public static StringBuilder appendDqValue(final StringBuilder sb, final Object value) {
        sb.append('\"');
        sb.append(value);
        sb.append('\"');
        return sb;
    }

    public static StringBuilder appendKeyDqValue(final StringBuilder sb, final Map.Entry<String, String> entry) {
        return appendKeyDqValue(sb, entry.getKey(), entry.getValue());
    }

    public static boolean appendSpecificTypes(final StringBuilder stringBuilder, final Object obj) {
        if (obj == null || (obj instanceof String)) {
            stringBuilder.append((String) obj);
            return true;
        }
        if (obj instanceof StringBuilderFormattable) {
            ((StringBuilderFormattable) obj).formatTo(stringBuilder);
            return true;
        }
        if (obj instanceof CharSequence) {
            stringBuilder.append((CharSequence) obj);
            return true;
        }
        if (obj instanceof Integer) {
            stringBuilder.append(((Integer) obj).intValue());
            return true;
        }
        if (obj instanceof Long) {
            stringBuilder.append(((Long) obj).longValue());
            return true;
        }
        if (obj instanceof Double) {
            stringBuilder.append(((Double) obj).doubleValue());
            return true;
        }
        if (obj instanceof Boolean) {
            stringBuilder.append(((Boolean) obj).booleanValue());
            return true;
        }
        if (obj instanceof Character) {
            stringBuilder.append(((Character) obj).charValue());
            return true;
        }
        if (obj instanceof Short) {
            stringBuilder.append((int) ((Short) obj).shortValue());
            return true;
        }
        if (obj instanceof Float) {
            stringBuilder.append(((Float) obj).floatValue());
            return true;
        }
        if (!(obj instanceof Byte)) {
            return false;
        }
        stringBuilder.append((int) ((Byte) obj).byteValue());
        return true;
    }

    public static void appendValue(final StringBuilder stringBuilder, final Object obj) {
        if (appendSpecificTypes(stringBuilder, obj)) {
            return;
        }
        stringBuilder.append(obj);
    }

    public static boolean equals(final CharSequence left, final int leftOffset, final int leftLength, final CharSequence right, final int rightOffset, final int rightLength) {
        if (leftLength != rightLength) {
            return false;
        }
        for (int i = 0; i < rightLength; i++) {
            if (left.charAt(i + leftOffset) != right.charAt(i + rightOffset)) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsIgnoreCase(final CharSequence left, final int leftOffset, final int leftLength, final CharSequence right, final int rightOffset, final int rightLength) {
        if (leftLength != rightLength) {
            return false;
        }
        for (int i = 0; i < rightLength; i++) {
            if (Character.toLowerCase(left.charAt(i + leftOffset)) != Character.toLowerCase(right.charAt(i + rightOffset))) {
                return false;
            }
        }
        return true;
    }

    public static void escapeJson(final StringBuilder toAppendTo, final int start) {
        int i = 0;
        while (start < toAppendTo.length()) {
            char charAt = toAppendTo.charAt(start);
            if (charAt != '\f' && charAt != '\r' && charAt != '\"' && charAt != '\\') {
                switch (charAt) {
                    case '\b':
                    case '\t':
                    case '\n':
                        break;
                    default:
                        if (Character.isISOControl(charAt)) {
                            i += 5;
                            break;
                        } else {
                            break;
                        }
                }
                start++;
            }
            i++;
            start++;
        }
        toAppendTo.setLength(toAppendTo.length() + i);
        int length = toAppendTo.length() - 1;
        for (int length2 = toAppendTo.length() - 1; length > length2; length2--) {
            char charAt2 = toAppendTo.charAt(length2);
            if (charAt2 == '\f') {
                length = m68670a(toAppendTo, length, 'f');
            } else if (charAt2 == '\r') {
                length = m68670a(toAppendTo, length, 'r');
            } else if (charAt2 != '\"' && charAt2 != '\\') {
                switch (charAt2) {
                    case '\b':
                        length = m68670a(toAppendTo, length, 'b');
                        break;
                    case '\t':
                        length = m68670a(toAppendTo, length, 't');
                        break;
                    case '\n':
                        length = m68670a(toAppendTo, length, 'n');
                        break;
                    default:
                        if (Character.isISOControl(charAt2)) {
                            int i2 = length - 1;
                            toAppendTo.setCharAt(length, Chars.getUpperCaseHex(charAt2 & 15));
                            int i3 = i2 - 1;
                            toAppendTo.setCharAt(i2, Chars.getUpperCaseHex((charAt2 & HighLevelEncoder.f38484i) >> 4));
                            int i4 = i3 - 1;
                            toAppendTo.setCharAt(i3, '0');
                            int i5 = i4 - 1;
                            toAppendTo.setCharAt(i4, '0');
                            int i6 = i5 - 1;
                            toAppendTo.setCharAt(i5, 'u');
                            length = i6 - 1;
                            toAppendTo.setCharAt(i6, '\\');
                            break;
                        } else {
                            toAppendTo.setCharAt(length, charAt2);
                            length--;
                            break;
                        }
                }
            } else {
                length = m68670a(toAppendTo, length, charAt2);
            }
        }
    }

    public static void escapeXml(final StringBuilder toAppendTo, final int start) {
        int i = 0;
        while (start < toAppendTo.length()) {
            char charAt = toAppendTo.charAt(start);
            if (charAt != '\"') {
                if (charAt == '<' || charAt == '>') {
                    i += 3;
                } else if (charAt == '&') {
                    i += 4;
                } else if (charAt != '\'') {
                }
                start++;
            }
            i += 5;
            start++;
        }
        toAppendTo.setLength(toAppendTo.length() + i);
        int length = toAppendTo.length() - 1;
        for (int length2 = toAppendTo.length() - 1; length > length2; length2--) {
            char charAt2 = toAppendTo.charAt(length2);
            if (charAt2 == '\"') {
                int i2 = length - 1;
                toAppendTo.setCharAt(length, ';');
                int i3 = i2 - 1;
                toAppendTo.setCharAt(i2, 't');
                int i4 = i3 - 1;
                toAppendTo.setCharAt(i3, 'o');
                int i5 = i4 - 1;
                toAppendTo.setCharAt(i4, 'u');
                int i6 = i5 - 1;
                toAppendTo.setCharAt(i5, 'q');
                length = i6 - 1;
                toAppendTo.setCharAt(i6, '&');
            } else if (charAt2 == '<') {
                int i7 = length - 1;
                toAppendTo.setCharAt(length, ';');
                int i8 = i7 - 1;
                toAppendTo.setCharAt(i7, 't');
                int i9 = i8 - 1;
                toAppendTo.setCharAt(i8, 'l');
                length = i9 - 1;
                toAppendTo.setCharAt(i9, '&');
            } else if (charAt2 == '>') {
                int i10 = length - 1;
                toAppendTo.setCharAt(length, ';');
                int i11 = i10 - 1;
                toAppendTo.setCharAt(i10, 't');
                int i12 = i11 - 1;
                toAppendTo.setCharAt(i11, 'g');
                length = i12 - 1;
                toAppendTo.setCharAt(i12, '&');
            } else if (charAt2 == '&') {
                int i13 = length - 1;
                toAppendTo.setCharAt(length, ';');
                int i14 = i13 - 1;
                toAppendTo.setCharAt(i13, 'p');
                int i15 = i14 - 1;
                toAppendTo.setCharAt(i14, 'm');
                int i16 = i15 - 1;
                toAppendTo.setCharAt(i15, 'a');
                toAppendTo.setCharAt(i16, '&');
                length = i16 - 1;
            } else if (charAt2 != '\'') {
                toAppendTo.setCharAt(length, charAt2);
                length--;
            } else {
                int i17 = length - 1;
                toAppendTo.setCharAt(length, ';');
                int i18 = i17 - 1;
                toAppendTo.setCharAt(i17, 's');
                int i19 = i18 - 1;
                toAppendTo.setCharAt(i18, 'o');
                int i20 = i19 - 1;
                toAppendTo.setCharAt(i19, 'p');
                int i21 = i20 - 1;
                toAppendTo.setCharAt(i20, 'a');
                length = i21 - 1;
                toAppendTo.setCharAt(i21, '&');
            }
        }
    }

    public static void trimToMaxSize(final StringBuilder stringBuilder, final int maxSize) {
        if (stringBuilder == null || stringBuilder.capacity() <= maxSize) {
            return;
        }
        stringBuilder.setLength(maxSize);
        stringBuilder.trimToSize();
    }

    public static StringBuilder appendKeyDqValue(final StringBuilder sb, final String key, final Object value) {
        sb.append(key);
        sb.append('=');
        sb.append('\"');
        sb.append(value);
        sb.append('\"');
        return sb;
    }
}
