package org.slf4j.helpers;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
public final class MessageFormatter {

    /* renamed from: a */
    public static final char f116052a = '{';

    /* renamed from: b */
    public static final char f116053b = '}';

    /* renamed from: c */
    public static final String f116054c = "{}";

    /* renamed from: d */
    public static final char f116055d = '\\';

    /* renamed from: a */
    public static void m71924a(StringBuilder sb, boolean[] zArr) {
        sb.append('[');
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(zArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    public static final FormattingTuple arrayFormat(String str, Object[] objArr) {
        Throwable throwableCandidate = getThrowableCandidate(objArr);
        if (throwableCandidate != null) {
            objArr = trimmedCopy(objArr);
        }
        return arrayFormat(str, objArr, throwableCandidate);
    }

    /* renamed from: b */
    public static void m71925b(StringBuilder sb, byte[] bArr) {
        sb.append('[');
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            sb.append((int) bArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: c */
    public static void m71926c(StringBuilder sb, char[] cArr) {
        sb.append('[');
        int length = cArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(cArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: d */
    public static void m71927d(StringBuilder sb, Object obj, Map<Object[], Object> map) {
        if (obj == null) {
            sb.append("null");
            return;
        }
        if (!obj.getClass().isArray()) {
            m71935l(sb, obj);
            return;
        }
        if (obj instanceof boolean[]) {
            m71924a(sb, (boolean[]) obj);
            return;
        }
        if (obj instanceof byte[]) {
            m71925b(sb, (byte[]) obj);
            return;
        }
        if (obj instanceof char[]) {
            m71926c(sb, (char[]) obj);
            return;
        }
        if (obj instanceof short[]) {
            m71936m(sb, (short[]) obj);
            return;
        }
        if (obj instanceof int[]) {
            m71930g(sb, (int[]) obj);
            return;
        }
        if (obj instanceof long[]) {
            m71933j(sb, (long[]) obj);
            return;
        }
        if (obj instanceof float[]) {
            m71929f(sb, (float[]) obj);
        } else if (obj instanceof double[]) {
            m71928e(sb, (double[]) obj);
        } else {
            m71934k(sb, (Object[]) obj, map);
        }
    }

    /* renamed from: e */
    public static void m71928e(StringBuilder sb, double[] dArr) {
        sb.append('[');
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(dArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: f */
    public static void m71929f(StringBuilder sb, float[] fArr) {
        sb.append('[');
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(fArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    public static final FormattingTuple format(String str, Object obj) {
        return arrayFormat(str, new Object[]{obj});
    }

    /* renamed from: g */
    public static void m71930g(StringBuilder sb, int[] iArr) {
        sb.append('[');
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(iArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    public static Throwable getThrowableCandidate(Object[] objArr) {
        if (objArr != null && objArr.length != 0) {
            Object obj = objArr[objArr.length - 1];
            if (obj instanceof Throwable) {
                return (Throwable) obj;
            }
        }
        return null;
    }

    /* renamed from: h */
    public static final boolean m71931h(String str, int i) {
        return i >= 2 && str.charAt(i - 2) == '\\';
    }

    /* renamed from: i */
    public static final boolean m71932i(String str, int i) {
        return i != 0 && str.charAt(i - 1) == '\\';
    }

    /* renamed from: j */
    public static void m71933j(StringBuilder sb, long[] jArr) {
        sb.append('[');
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(jArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    /* renamed from: k */
    public static void m71934k(StringBuilder sb, Object[] objArr, Map<Object[], Object> map) {
        sb.append('[');
        if (map.containsKey(objArr)) {
            sb.append(RemoveAudioAction.f58149k);
        } else {
            map.put(objArr, null);
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                m71927d(sb, objArr[i], map);
                if (i != length - 1) {
                    sb.append(", ");
                }
            }
            map.remove(objArr);
        }
        sb.append(']');
    }

    /* renamed from: l */
    public static void m71935l(StringBuilder sb, Object obj) {
        try {
            sb.append(obj.toString());
        } catch (Throwable th) {
            Util.report("SLF4J: Failed toString() invocation on an object of type [" + obj.getClass().getName() + IteratorUtils.f104924b, th);
            sb.append("[FAILED toString()]");
        }
    }

    /* renamed from: m */
    public static void m71936m(StringBuilder sb, short[] sArr) {
        sb.append('[');
        int length = sArr.length;
        for (int i = 0; i < length; i++) {
            sb.append((int) sArr[i]);
            if (i != length - 1) {
                sb.append(", ");
            }
        }
        sb.append(']');
    }

    public static Object[] trimmedCopy(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            throw new IllegalStateException("non-sensical empty or null argument array");
        }
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        if (length > 0) {
            System.arraycopy(objArr, 0, objArr2, 0, length);
        }
        return objArr2;
    }

    public static final FormattingTuple format(String str, Object obj, Object obj2) {
        return arrayFormat(str, new Object[]{obj, obj2});
    }

    public static final FormattingTuple arrayFormat(String str, Object[] objArr, Throwable th) {
        int i;
        if (str == null) {
            return new FormattingTuple(null, objArr, th);
        }
        if (objArr == null) {
            return new FormattingTuple(str);
        }
        StringBuilder sb = new StringBuilder(str.length() + 50);
        int i2 = 0;
        int i3 = 0;
        while (i2 < objArr.length) {
            int indexOf = str.indexOf("{}", i3);
            if (indexOf == -1) {
                if (i3 == 0) {
                    return new FormattingTuple(str, objArr, th);
                }
                sb.append((CharSequence) str, i3, str.length());
                return new FormattingTuple(sb.toString(), objArr, th);
            }
            if (m71932i(str, indexOf)) {
                if (!m71931h(str, indexOf)) {
                    i2--;
                    sb.append((CharSequence) str, i3, indexOf - 1);
                    sb.append('{');
                    i = indexOf + 1;
                    i3 = i;
                    i2++;
                } else {
                    sb.append((CharSequence) str, i3, indexOf - 1);
                    m71927d(sb, objArr[i2], new HashMap());
                }
            } else {
                sb.append((CharSequence) str, i3, indexOf);
                m71927d(sb, objArr[i2], new HashMap());
            }
            i = indexOf + 2;
            i3 = i;
            i2++;
        }
        sb.append((CharSequence) str, i3, str.length());
        return new FormattingTuple(sb.toString(), objArr, th);
    }
}
