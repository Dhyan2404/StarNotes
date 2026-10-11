package com.sunia.HTREnginev2;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Supplier;
import org.apache.logging.log4j.util.StringBuilders;
import xcrash.Util;

/* loaded from: classes12.dex */
public final class pvk {

    /* renamed from: a */
    public static final String f81280a = "[...";

    /* renamed from: b */
    public static final String f81281b = "...]";

    /* renamed from: c */
    public static final String f81282c = "[!!!";

    /* renamed from: d */
    public static final String f81283d = "=>";

    /* renamed from: e */
    public static final String f81284e = ":";

    /* renamed from: f */
    public static final String f81285f = "!!!]";

    /* renamed from: g */
    public static final char f81286g = '{';

    /* renamed from: h */
    public static final char f81287h = '}';

    /* renamed from: i */
    public static final char f81288i = '\\';

    /* renamed from: j */
    public static final ThreadLocal<SimpleDateFormat> f81289j = ThreadLocal.withInitial(new Supplier() { // from class: com.sunia.HTREnginev2.ovk
        @Override // java.util.function.Supplier
        public final Object get() {
            SimpleDateFormat m56392A;
            m56392A = pvk.m56392A();
            return m56392A;
        }
    });

    /* renamed from: A */
    public static /* synthetic */ SimpleDateFormat m56392A() {
        return new SimpleDateFormat(Util.f116419g);
    }

    /* renamed from: B */
    public static void m56393B(final Object o, final StringBuilder str) {
        m56394C(o, str, null);
    }

    /* renamed from: C */
    public static void m56394C(final Object o, final StringBuilder str, final Set<Object> dejaVu) {
        if (m56406g(o, str)) {
            return;
        }
        if (m56424y(o)) {
            m56405f(o, str, dejaVu);
        } else {
            m56395D(o, str);
        }
    }

    /* renamed from: D */
    public static void m56395D(final Object o, final StringBuilder str) {
        try {
            str.append(o.toString());
        } catch (Throwable th) {
            m56418s(o, str, th);
        }
    }

    /* renamed from: E */
    public static void m56396E(final Object[] arguments, final int argCount, final int currentArgument, final StringBuilder buffer) {
        if (currentArgument < argCount) {
            m56393B(arguments[currentArgument], buffer);
        } else {
            m56397F(buffer);
        }
    }

    /* renamed from: F */
    public static void m56397F(final StringBuilder buffer) {
        buffer.append('{');
        buffer.append('}');
    }

    /* renamed from: G */
    public static void m56398G(final int escapeCounter, final StringBuilder buffer) {
        m56399H(escapeCounter >> 1, buffer);
    }

    /* renamed from: H */
    public static void m56399H(int escapeCounter, final StringBuilder buffer) {
        while (escapeCounter > 0) {
            buffer.append('\\');
            escapeCounter--;
        }
    }

    /* renamed from: b */
    public static void m56401b(final Object o, final StringBuilder str, final Set<Object> dejaVu, final Class<?> oClass) {
        if (oClass == byte[].class) {
            str.append(Arrays.toString((byte[]) o));
            return;
        }
        if (oClass == short[].class) {
            str.append(Arrays.toString((short[]) o));
            return;
        }
        if (oClass == int[].class) {
            str.append(Arrays.toString((int[]) o));
            return;
        }
        if (oClass == long[].class) {
            str.append(Arrays.toString((long[]) o));
            return;
        }
        if (oClass == float[].class) {
            str.append(Arrays.toString((float[]) o));
            return;
        }
        if (oClass == double[].class) {
            str.append(Arrays.toString((double[]) o));
            return;
        }
        if (oClass == boolean[].class) {
            str.append(Arrays.toString((boolean[]) o));
            return;
        }
        if (oClass == char[].class) {
            str.append(Arrays.toString((char[]) o));
            return;
        }
        Set<Object> m56417r = m56417r(dejaVu);
        boolean z = true;
        if (!m56417r.add(o)) {
            String m56422w = m56422w(o);
            str.append("[...");
            str.append(m56422w);
            str.append("...]");
            return;
        }
        str.append('[');
        for (Object obj : (Object[]) o) {
            if (z) {
                z = false;
            } else {
                str.append(", ");
            }
            m56394C(obj, str, m56407h(m56417r));
        }
        str.append(']');
    }

    /* renamed from: c */
    public static void m56402c(final Object o, final StringBuilder str, final Set<Object> dejaVu) {
        Set<Object> m56417r = m56417r(dejaVu);
        boolean z = true;
        if (!m56417r.add(o)) {
            String m56422w = m56422w(o);
            str.append("[...");
            str.append(m56422w);
            str.append("...]");
            return;
        }
        str.append('[');
        for (Object obj : (Collection) o) {
            if (z) {
                z = false;
            } else {
                str.append(", ");
            }
            m56394C(obj, str, m56407h(m56417r));
        }
        str.append(']');
    }

    /* renamed from: d */
    public static boolean m56403d(final Object o, final StringBuilder str) {
        if (!(o instanceof Date)) {
            return false;
        }
        str.append(f81289j.get().format((Date) o));
        return true;
    }

    /* renamed from: e */
    public static void m56404e(final Object o, final StringBuilder str, final Set<Object> dejaVu) {
        Set<Object> m56417r = m56417r(dejaVu);
        boolean z = true;
        if (!m56417r.add(o)) {
            String m56422w = m56422w(o);
            str.append("[...");
            str.append(m56422w);
            str.append("...]");
            return;
        }
        str.append('{');
        for (Map.Entry entry : ((Map) o).entrySet()) {
            if (z) {
                z = false;
            } else {
                str.append(", ");
            }
            Object key = entry.getKey();
            Object value = entry.getValue();
            m56394C(key, str, m56407h(m56417r));
            str.append('=');
            m56394C(value, str, m56407h(m56417r));
        }
        str.append('}');
    }

    /* renamed from: f */
    public static void m56405f(final Object o, final StringBuilder str, final Set<Object> dejaVu) {
        Class<?> cls = o.getClass();
        if (cls.isArray()) {
            m56401b(o, str, dejaVu, cls);
            return;
        }
        if (o instanceof Map) {
            m56404e(o, str, dejaVu);
        } else {
            if (o instanceof Collection) {
                m56402c(o, str, dejaVu);
                return;
            }
            throw new IllegalArgumentException("was expecting a container, found " + cls);
        }
    }

    /* renamed from: g */
    public static boolean m56406g(final Object o, final StringBuilder str) {
        return StringBuilders.appendSpecificTypes(str, o) || m56403d(o, str);
    }

    /* renamed from: h */
    public static Set<Object> m56407h(Set<Object> dejaVu) {
        Set<Object> m56411l = m56411l();
        m56411l.addAll(dejaVu);
        return m56411l;
    }

    /* renamed from: i */
    public static int m56408i(final String messagePattern) {
        if (messagePattern == null) {
            return 0;
        }
        int length = messagePattern.length();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < length - 1) {
            char charAt = messagePattern.charAt(i);
            if (charAt == '\\') {
                z = !z;
            } else {
                if (charAt == '{' && !z) {
                    int i3 = i + 1;
                    if (messagePattern.charAt(i3) == '}') {
                        i2++;
                        i = i3;
                    }
                }
                z = false;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: j */
    public static int m56409j(final String messagePattern, final int[] indices) {
        if (messagePattern == null) {
            return 0;
        }
        int length = messagePattern.length();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < length - 1) {
            char charAt = messagePattern.charAt(i);
            if (charAt == '\\') {
                z = !z;
                indices[0] = -1;
                i2++;
            } else {
                if (charAt == '{' && !z) {
                    int i3 = i + 1;
                    if (messagePattern.charAt(i3) == '}') {
                        indices[i2] = i;
                        i2++;
                        i = i3;
                    }
                }
                z = false;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: k */
    public static int m56410k(final char[] messagePattern, final int length, final int[] indices) {
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < length - 1) {
            char c = messagePattern[i];
            if (c == '\\') {
                z = !z;
            } else {
                if (c == '{' && !z) {
                    int i3 = i + 1;
                    if (messagePattern[i3] == '}') {
                        indices[i2] = i;
                        i2++;
                        i = i3;
                    }
                }
                z = false;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: l */
    public static Set<Object> m56411l() {
        return Collections.newSetFromMap(new IdentityHashMap());
    }

    /* renamed from: m */
    public static String m56412m(final Object o) {
        if (o == null) {
            return null;
        }
        if (o instanceof String) {
            return (String) o;
        }
        if (o instanceof Integer) {
            return Integer.toString(((Integer) o).intValue());
        }
        if (o instanceof Long) {
            return Long.toString(((Long) o).longValue());
        }
        if (o instanceof Double) {
            return Double.toString(((Double) o).doubleValue());
        }
        if (o instanceof Boolean) {
            return Boolean.toString(((Boolean) o).booleanValue());
        }
        if (o instanceof Character) {
            return Character.toString(((Character) o).charValue());
        }
        if (o instanceof Short) {
            return Short.toString(((Short) o).shortValue());
        }
        if (o instanceof Float) {
            return Float.toString(((Float) o).floatValue());
        }
        if (o instanceof Byte) {
            return Byte.toString(((Byte) o).byteValue());
        }
        StringBuilder sb = new StringBuilder();
        m56393B(o, sb);
        return sb.toString();
    }

    /* renamed from: n */
    public static String m56413n(final String messagePattern, final Object[] arguments) {
        StringBuilder sb = new StringBuilder();
        m56414o(sb, messagePattern, arguments, arguments == null ? 0 : arguments.length);
        return sb.toString();
    }

    /* renamed from: o */
    public static void m56414o(final StringBuilder buffer, final String messagePattern, final Object[] arguments, final int argCount) {
        if (messagePattern == null || arguments == null || argCount == 0) {
            buffer.append(messagePattern);
            return;
        }
        int length = messagePattern.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length - 1) {
            char charAt = messagePattern.charAt(i);
            if (charAt == '\\') {
                i2++;
            } else {
                if (m56423x(charAt, messagePattern, i)) {
                    i++;
                    m56398G(i2, buffer);
                    if (m56425z(i2)) {
                        m56397F(buffer);
                    } else {
                        m56396E(arguments, argCount, i3, buffer);
                        i3++;
                    }
                } else {
                    m56420u(buffer, i2, charAt);
                }
                i2 = 0;
            }
            i++;
        }
        m56421v(messagePattern, length, buffer, i2, i);
    }

    /* renamed from: p */
    public static void m56415p(final StringBuilder buffer, final String messagePattern, final Object[] arguments, final int argCount, final int[] indices) {
        if (messagePattern == null || arguments == null || argCount == 0) {
            buffer.append(messagePattern);
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < argCount; i2++) {
            buffer.append((CharSequence) messagePattern, i, indices[i2]);
            i = indices[i2] + 2;
            m56393B(arguments[i2], buffer);
        }
        buffer.append((CharSequence) messagePattern, i, messagePattern.length());
    }

    /* renamed from: q */
    public static void m56416q(final StringBuilder buffer, final char[] messagePattern, final int patternLength, final Object[] arguments, final int argCount, final int[] indices) {
        if (messagePattern == null) {
            return;
        }
        if (arguments == null || argCount == 0) {
            buffer.append(messagePattern);
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < argCount; i2++) {
            buffer.append(messagePattern, i, indices[i2]);
            i = indices[i2] + 2;
            m56393B(arguments[i2], buffer);
        }
        buffer.append(messagePattern, i, patternLength);
    }

    /* renamed from: r */
    public static Set<Object> m56417r(Set<Object> dejaVu) {
        return dejaVu == null ? m56411l() : dejaVu;
    }

    /* renamed from: s */
    public static void m56418s(final Object o, final StringBuilder str, final Throwable t) {
        str.append("[!!!");
        str.append(m56422w(o));
        str.append("=>");
        String message = t.getMessage();
        String name = t.getClass().getName();
        str.append(name);
        if (!name.equals(message)) {
            str.append(":");
            str.append(message);
        }
        str.append("!!!]");
    }

    /* renamed from: t */
    public static void m56419t(final StringBuilder buffer, final int escapeCounter, final char curChar) {
        if (curChar == '\\') {
            m56399H(escapeCounter + 1, buffer);
        } else {
            m56420u(buffer, escapeCounter, curChar);
        }
    }

    /* renamed from: u */
    public static void m56420u(final StringBuilder buffer, final int escapeCounter, final char curChar) {
        m56399H(escapeCounter, buffer);
        buffer.append(curChar);
    }

    /* renamed from: v */
    public static void m56421v(final String messagePattern, final int len, final StringBuilder buffer, final int escapeCounter, final int i) {
        if (i == len - 1) {
            m56419t(buffer, escapeCounter, messagePattern.charAt(i));
        }
    }

    /* renamed from: w */
    public static String m56422w(final Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
    }

    /* renamed from: x */
    public static boolean m56423x(final char curChar, final String messagePattern, final int curCharIndex) {
        return curChar == '{' && messagePattern.charAt(curCharIndex + 1) == '}';
    }

    /* renamed from: y */
    public static boolean m56424y(final Object o) {
        return o.getClass().isArray() || (o instanceof Map) || (o instanceof Collection);
    }

    /* renamed from: z */
    public static boolean m56425z(final int number) {
        return (number & 1) == 1;
    }
}
