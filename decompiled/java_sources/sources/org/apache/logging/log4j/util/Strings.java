package org.apache.logging.log4j.util;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes12.dex */
public final class Strings {
    public static final String EMPTY = "";

    /* renamed from: a */
    public static final ThreadLocal<StringBuilder> f111297a = ThreadLocal.withInitial(new java.util.function.Supplier() { // from class: com.sunia.HTREnginev2.l1n
        @Override // java.util.function.Supplier
        public final Object get() {
            return new StringBuilder();
        }
    });
    public static final String[] EMPTY_ARRAY = new String[0];
    public static final String LINE_SEPARATOR = PropertiesUtil.getProperties().getStringProperty("line.separator", "\n");

    public static String concat(String str1, String str2) {
        if (isEmpty(str1)) {
            return str2;
        }
        if (isEmpty(str2)) {
            return str1;
        }
        StringBuilder sb = f111297a.get();
        try {
            sb.append(str1);
            sb.append(str2);
            return sb.toString();
        } finally {
            sb.setLength(0);
        }
    }

    public static String dquote(final String str) {
        return '\"' + str + '\"';
    }

    public static boolean isBlank(final String s) {
        if (s != null && !s.isEmpty()) {
            for (int i = 0; i < s.length(); i++) {
                if (!Character.isWhitespace(s.charAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isEmpty(final CharSequence cs) {
        return cs == null || cs.length() == 0;
    }

    public static boolean isNotBlank(final String s) {
        return !isBlank(s);
    }

    public static boolean isNotEmpty(final CharSequence cs) {
        return !isEmpty(cs);
    }

    public static String join(final Iterable<?> iterable, final char separator) {
        if (iterable == null) {
            return null;
        }
        return join(iterable.iterator(), separator);
    }

    public static String left(final String str, final int len) {
        if (str == null) {
            return null;
        }
        return len < 0 ? "" : str.length() <= len ? str : str.substring(0, len);
    }

    public static String quote(final String str) {
        return Chars.QUOTE + str + Chars.QUOTE;
    }

    public static String repeat(final String str, final int count) {
        Objects.requireNonNull(str, ExtensionNamespaceContext.EXSLT_STRING_PREFIX);
        if (count < 0) {
            throw new IllegalArgumentException("count");
        }
        StringBuilder sb = f111297a.get();
        for (int i = 0; i < count; i++) {
            try {
                sb.append(str);
            } finally {
                sb.setLength(0);
            }
        }
        return sb.toString();
    }

    public static String toRootUpperCase(final String str) {
        return str.toUpperCase(Locale.ROOT);
    }

    public static String trimToNull(final String str) {
        String trim = str == null ? null : str.trim();
        if (isEmpty(trim)) {
            return null;
        }
        return trim;
    }

    public static String join(final Iterator<?> iterator, final char separator) {
        if (iterator == null) {
            return null;
        }
        if (!iterator.hasNext()) {
            return "";
        }
        Object next = iterator.next();
        if (!iterator.hasNext()) {
            return Objects.toString(next, "");
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (iterator.hasNext()) {
            sb.append(separator);
            Object next2 = iterator.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }
}
