package com.twelvemonkeys.lang;

import com.twelvemonkeys.util.StringTokenIterator;
import java.awt.Color;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.UnsupportedCharsetException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes10.dex */
public final class StringUtil {
    public static final String DELIMITER_STRING = ", \t\n\r\f";

    /* renamed from: a */
    public static String m60726a(String str, String str2, int i) {
        StringBuilder sb = new StringBuilder(str);
        try {
            if (!str.substring(i + 1, str2.length() + i + 1).equalsIgnoreCase(str2)) {
                sb.delete(i, str2.length() + i);
            }
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m60727b(String str, String str2, int i) {
        StringBuilder sb = new StringBuilder(str);
        try {
            if (!str.substring(i, str2.length() + i).equalsIgnoreCase(str2)) {
                sb.insert(i, str2);
            }
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m60728c(long j, int i) throws IllegalArgumentException {
        StringBuilder sb = new StringBuilder();
        double d = j;
        if (d >= Math.pow(10.0d, i)) {
            throw new IllegalArgumentException("The number to format cannot contain more digits than the length argument specifies!");
        }
        while (i > 1 && d < Math.pow(10.0d, i - 1)) {
            sb.append('0');
            i--;
        }
        sb.append(j);
        return sb.toString();
    }

    public static String camelToLisp(String str) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (str.length() == 0) {
            return str;
        }
        StringBuilder sb = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 1; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.isUpperCase(charAt)) {
                if (sb == null) {
                    sb = new StringBuilder(str.length() + 3);
                }
                if (z) {
                    sb.append(str.substring(i, i2));
                    if (charAt != '-') {
                        sb.append('-');
                    }
                    z = false;
                    i = i2;
                } else {
                    char charAt2 = str.charAt(i2 - 1);
                    if (i2 == i || Character.isUpperCase(charAt2)) {
                        z2 = true;
                    } else {
                        sb.append(str.substring(i, i2).toLowerCase());
                        if (charAt2 != '-') {
                            sb.append('-');
                        }
                        sb.append(Character.toLowerCase(charAt));
                        i = i2 + 1;
                    }
                }
            } else {
                if (Character.isDigit(charAt)) {
                    if (sb == null) {
                        sb = new StringBuilder(str.length() + 3);
                    }
                    if (z2) {
                        sb.append(str.substring(i, i2).toLowerCase());
                        if (charAt != '-') {
                            sb.append('-');
                        }
                        z2 = false;
                        i = i2;
                    } else {
                        char charAt3 = str.charAt(i2 - 1);
                        if (i2 == i || Character.isDigit(charAt3)) {
                            z = true;
                        } else {
                            sb.append(str.substring(i, i2).toLowerCase());
                            if (charAt3 != '-') {
                                sb.append('-');
                            }
                            sb.append(Character.toLowerCase(charAt));
                            i = i2 + 1;
                        }
                    }
                } else if (z) {
                    sb.append(str.substring(i, i2));
                    if (charAt != '-') {
                        sb.append('-');
                    }
                    z = false;
                    i = i2;
                } else if (z2) {
                    int i3 = i2 - 1;
                    sb.append(str.substring(i, i3).toLowerCase());
                    if (charAt != '-') {
                        sb.append('-');
                    }
                    i = i3;
                    z2 = false;
                }
            }
        }
        if (sb == null) {
            return Character.isUpperCase(str.charAt(0)) ? str.toLowerCase() : str;
        }
        sb.append(str.substring(i).toLowerCase());
        return sb.toString();
    }

    public static String capitalize(String str, int i) {
        if (i >= 0) {
            if (str == null || str.length() <= i || Character.isUpperCase(str.charAt(i))) {
                return str;
            }
            char[] charArray = str.toCharArray();
            charArray[i] = Character.toUpperCase(charArray[i]);
            return new String(charArray);
        }
        throw new IndexOutOfBoundsException("Negative index not allowed: " + i);
    }

    public static boolean contains(String str, String str2) {
        return (str == null || str2 == null || str.indexOf(str2) < 0) ? false : true;
    }

    public static boolean containsIgnoreCase(String str, String str2) {
        return indexOfIgnoreCase(str, str2, 0) >= 0;
    }

    public static String cut(String str, int i, String str2) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        if (str.length() <= i) {
            return str;
        }
        return str.substring(0, str.lastIndexOf(32, i - str2.length())) + str2;
    }

    /* renamed from: d */
    public static boolean m60729d(Object obj) {
        return obj.getClass().getMethod("toString", new Class[0]).getDeclaringClass() == Object.class;
    }

    public static String decode(byte[] bArr, int i, int i2, String str) {
        try {
            return new String(bArr, i, i2, str);
        } catch (UnsupportedEncodingException unused) {
            throw new UnsupportedCharsetException(str);
        }
    }

    public static String deepToString(Object obj) {
        return deepToString(obj, false, 1);
    }

    /* renamed from: e */
    public static String m60730e(String str, char c, char c2, int i) {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (char c3 : str.toCharArray()) {
            if (z) {
                if (c3 == c2) {
                    z = false;
                }
            } else if (c3 == c) {
                z = true;
            } else {
                sb.append(c3);
            }
        }
        return sb.toString();
    }

    /* renamed from: f */
    public static String m60731f(String str, char c, char c2) {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (char c3 : str.toCharArray()) {
            if (z) {
                if (c3 == c2) {
                    z = false;
                }
            } else if (c3 == c) {
                z = true;
            } else {
                sb.append(c3);
            }
        }
        return sb.toString();
    }

    public static String getFirstElement(String str, String str2) {
        int indexOf;
        if (str2 != null) {
            return (!isEmpty(str) && (indexOf = str.indexOf(str2)) >= 0) ? str.substring(0, indexOf) : str;
        }
        throw new IllegalArgumentException("delimiter == null");
    }

    public static String getLastElement(String str, String str2) {
        int lastIndexOf;
        if (str2 != null) {
            return (!isEmpty(str) && (lastIndexOf = str.lastIndexOf(str2)) >= 0) ? str.substring(lastIndexOf + 1) : str;
        }
        throw new IllegalArgumentException("delimiter == null");
    }

    public static String identityToString(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
    }

    public static int indexOfIgnoreCase(String str, String str2) {
        return indexOfIgnoreCase(str, str2, 0);
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isNumber(String str) {
        if (isEmpty(str)) {
            return false;
        }
        char charAt = str.charAt(0);
        if (charAt != '-' && !Character.isDigit(charAt)) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static int lastIndexOfIgnoreCase(String str, String str2) {
        return lastIndexOfIgnoreCase(str, str2, str != null ? str.length() - 1 : -1);
    }

    public static String lispToCamel(String str) {
        return lispToCamel(str, false);
    }

    public static String ltrim(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        int i = 0;
        while (i < str.length()) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return i == 0 ? str : str.substring(i);
            }
            i++;
        }
        return "";
    }

    public static String pad(String str, int i, String str2, boolean z) {
        if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("Pad string: \"" + str2 + "\"");
        }
        if (str.length() >= i) {
            return str;
        }
        int length = i - str.length();
        StringBuilder sb = new StringBuilder(str2);
        while (sb.length() < length) {
            sb.append((CharSequence) sb);
        }
        if (sb.length() > length) {
            sb.delete(length, sb.length());
        }
        if (!z) {
            return sb.insert(0, str).toString();
        }
        sb.append(str);
        return sb.toString();
    }

    public static String replace(String str, String str2, String str3) {
        if (str2.length() == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf(str2, i);
            if (indexOf == -1) {
                sb.append(str.substring(i));
                return sb.toString();
            }
            sb.append(str.substring(i, indexOf));
            sb.append(str3);
            i = str2.length() + indexOf;
        }
    }

    public static String replaceIgnoreCase(String str, String str2, String str3) {
        if (str2.length() == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int indexOfIgnoreCase = indexOfIgnoreCase(str, str2, i);
            if (indexOfIgnoreCase == -1) {
                sb.append(str.substring(i));
                return sb.toString();
            }
            sb.append(str.substring(i, indexOfIgnoreCase));
            sb.append(str3);
            i = str2.length() + indexOfIgnoreCase;
        }
    }

    public static String reverse(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        for (int i = 0; i < length / 2; i++) {
            char c = cArr[i];
            int i2 = (length - 1) - i;
            cArr[i] = cArr[i2];
            cArr[i2] = c;
        }
        return new String(cArr);
    }

    public static String rtrim(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        int length = str.length();
        while (length > 0) {
            if (!Character.isWhitespace(str.charAt(length - 1))) {
                return length == str.length() ? str : str.substring(0, length);
            }
            length--;
        }
        return "";
    }

    public static String substring(String str, String str2, String str3, int i) {
        int indexOf;
        if (i < 0) {
            i = 0;
        }
        int indexOf2 = str.indexOf(str2, i) + str2.length();
        if (indexOf2 >= 0 && (indexOf = str.indexOf(str3, indexOf2)) >= 0) {
            return str.substring(indexOf2, indexOf);
        }
        return null;
    }

    public static String toCSVString(Object[] objArr) {
        return toCSVString(objArr, ", ");
    }

    public static Color toColor(String str) {
        Field field;
        int i;
        int i2;
        int i3;
        int i4;
        if (str == null) {
            return null;
        }
        if (str.charAt(0) != '#') {
            try {
                field = Color.class.getField(str);
            } catch (Exception unused) {
                field = null;
            }
            if (field == null) {
                try {
                    try {
                        field = Color.class.getField(str.toLowerCase());
                    } catch (IllegalAccessException | IllegalArgumentException | SecurityException unused2) {
                    }
                } catch (NoSuchFieldException unused3) {
                    throw new IllegalArgumentException("No such color: " + str);
                }
            }
            int modifiers = field.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                return (Color) field.get(null);
            }
            return null;
        }
        int i5 = 1;
        if (str.length() >= 7) {
            if (str.length() >= 9) {
                i4 = Integer.parseInt(str.substring(1, 3), 16);
                i5 = 3;
            } else {
                i4 = -1;
            }
            int i6 = i5 + 2;
            i3 = Integer.parseInt(str.substring(i5, i6), 16);
            int i7 = i5 + 4;
            i2 = Integer.parseInt(str.substring(i6, i7), 16);
            i = Integer.parseInt(str.substring(i7, i5 + 6), 16);
        } else if (str.length() >= 4) {
            if (str.length() >= 5) {
                i4 = Integer.parseInt(str.substring(1, 2), 16) * 16;
                i5 = 2;
            } else {
                i4 = -1;
            }
            int i8 = i5 + 1;
            i3 = Integer.parseInt(str.substring(i5, i8), 16) * 16;
            int i9 = i8 + 1;
            i2 = Integer.parseInt(str.substring(i8, i9), 16) * 16;
            i = Integer.parseInt(str.substring(i9, i9 + 1), 16) * 16;
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = -1;
        }
        return i4 != -1 ? new Color(i3, i2, i, i4) : new Color(i3, i2, i);
    }

    public static String toColorString(Color color) {
        if (color == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(Integer.toHexString(color.getRGB()));
        for (int length = sb.length(); length < 8; length++) {
            sb.insert(0, '0');
        }
        if (sb.charAt(0) == 'f' && sb.charAt(1) == 'f') {
            sb.delete(0, 2);
        }
        return sb.insert(0, '#').toString();
    }

    public static Date toDate(String str) {
        return toDate(str, DateFormat.getInstance());
    }

    public static double[] toDoubleArray(String str, String str2) {
        if (isEmpty(str)) {
            return new double[0];
        }
        String[] stringArray = toStringArray(str, str2);
        int length = stringArray.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = Double.valueOf(stringArray[i]).doubleValue();
        }
        return dArr;
    }

    public static int[] toIntArray(String str, String str2, int i) {
        if (isEmpty(str)) {
            return new int[0];
        }
        String[] stringArray = toStringArray(str, str2);
        int length = stringArray.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = Integer.parseInt(stringArray[i2], i);
        }
        return iArr;
    }

    public static long[] toLongArray(String str, String str2) {
        if (isEmpty(str)) {
            return new long[0];
        }
        String[] stringArray = toStringArray(str, str2);
        int length = stringArray.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = Long.parseLong(stringArray[i]);
        }
        return jArr;
    }

    public static String toLowerCase(String str) {
        if (str != null) {
            return str.toLowerCase();
        }
        return null;
    }

    public static String[] toStringArray(String str, String str2) {
        if (isEmpty(str)) {
            return new String[0];
        }
        StringTokenIterator stringTokenIterator = new StringTokenIterator(str, str2);
        ArrayList arrayList = new ArrayList();
        while (stringTokenIterator.hasMoreElements()) {
            arrayList.add(stringTokenIterator.nextToken());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static Timestamp toTimestamp(String str) {
        return Timestamp.valueOf(str);
    }

    public static String toUpperCase(String str) {
        if (str != null) {
            return str.toUpperCase();
        }
        return null;
    }

    public static String valueOf(Object obj) {
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    public boolean matches(String str, String str2) throws PatternSyntaxException {
        return Pattern.matches(str2, str);
    }

    public String replaceAll(String str, String str2, String str3) {
        return Pattern.compile(str2).matcher(str).replaceAll(str3);
    }

    public String replaceFirst(String str, String str2, String str3) {
        return Pattern.compile(str2).matcher(str).replaceFirst(str3);
    }

    public String[] split(String str, String str2, int i) {
        return Pattern.compile(str2).split(str, i);
    }

    public static boolean contains(String str, int i) {
        return str != null && str.indexOf(i) >= 0;
    }

    public static boolean containsIgnoreCase(String str, int i) {
        if (str != null) {
            char c = (char) i;
            if (str.indexOf(Character.toLowerCase(c)) >= 0 || str.indexOf(Character.toUpperCase(c)) >= 0) {
                return true;
            }
        }
        return false;
    }

    public static String deepToString(Object obj, boolean z, int i) {
        String substring;
        if (obj == null) {
            return null;
        }
        if (!z && !m60729d(obj)) {
            return obj.toString();
        }
        StringBuilder sb = new StringBuilder();
        if (obj.getClass().isArray()) {
            Class<?> cls = obj.getClass();
            while (cls.isArray()) {
                sb.append('[');
                sb.append(Array.getLength(obj));
                sb.append(']');
                cls = cls.getComponentType();
            }
            sb.insert(0, cls);
            sb.append(" {hashCode=");
            sb.append(Integer.toHexString(obj.hashCode()));
            sb.append("}");
        } else {
            if (m60729d(obj)) {
                sb.append(" {");
            } else {
                sb.append(" {toString=");
                sb.append(obj.toString());
                sb.append(", ");
            }
            sb.append("hashCode=");
            sb.append(Integer.toHexString(obj.hashCode()));
            for (Method method : obj.getClass().getMethods()) {
                if (Modifier.isPublic(method.getModifiers())) {
                    String name = method.getName();
                    if (!name.equals("getClass") && name.length() > 3 && name.startsWith("get") && Character.isUpperCase(name.charAt(3))) {
                        substring = name.substring(3);
                    } else {
                        substring = (name.length() > 2 && name.startsWith("is") && Character.isUpperCase(name.charAt(2))) ? name.substring(2) : null;
                    }
                    if (substring != null) {
                        if (substring.length() > 1 && Character.isLowerCase(substring.charAt(1))) {
                            substring = Character.toLowerCase(substring.charAt(0)) + substring.substring(1);
                        }
                        Class<?>[] parameterTypes = method.getParameterTypes();
                        boolean z2 = parameterTypes != null && parameterTypes.length > 0;
                        if (!Void.TYPE.equals(method.getReturnType()) && !z2) {
                            try {
                                Object invoke = method.invoke(obj, new Object[0]);
                                sb.append(", ");
                                sb.append(substring);
                                sb.append('=');
                                if (i != 0 && invoke != null && m60729d(invoke)) {
                                    sb.append(deepToString(invoke, z, i > 0 ? i - 1 : -1));
                                } else {
                                    sb.append(invoke);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            sb.append('}');
            sb.insert(0, obj.getClass().getName());
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x005c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOfIgnoreCase(java.lang.String r13, java.lang.String r14, int r15) {
        /*
            r0 = -1
            if (r13 == 0) goto Lbb
            if (r14 != 0) goto L7
            goto Lbb
        L7:
            int r1 = r14.length()
            if (r1 != 0) goto Le
            return r15
        Le:
            int r1 = r14.length()
            int r2 = r13.length()
            if (r1 <= r2) goto L19
            return r0
        L19:
            r1 = 0
            char r2 = r14.charAt(r1)
            char r2 = java.lang.Character.toLowerCase(r2)
            char r3 = r14.charAt(r1)
            char r3 = java.lang.Character.toUpperCase(r3)
            r4 = r1
        L2b:
            int r5 = r13.length()
            int r6 = r14.length()
            int r5 = r5 - r6
            if (r15 > r5) goto Lbb
            if (r1 < 0) goto L3e
            if (r1 > r15) goto L3e
            int r1 = r13.indexOf(r2, r15)
        L3e:
            if (r4 < 0) goto L47
            if (r4 > r15) goto L47
            int r15 = r13.indexOf(r3, r15)
            r4 = r15
        L47:
            if (r1 >= 0) goto L4e
            if (r4 >= 0) goto L4c
            return r0
        L4c:
            r15 = r4
            goto L55
        L4e:
            if (r4 >= 0) goto L52
        L50:
            r15 = r1
            goto L55
        L52:
            if (r1 >= r4) goto L4c
            goto L50
        L55:
            int r5 = r14.length()
            r6 = 1
            if (r5 != r6) goto L5d
            return r15
        L5d:
            int r5 = r13.length()
            int r7 = r14.length()
            int r5 = r5 - r7
            if (r15 <= r5) goto L69
            return r0
        L69:
            int r5 = r14.length()
            int r5 = r5 + r15
            int r5 = r5 - r6
            char r5 = r13.charAt(r5)
            int r7 = r14.length()
            int r7 = r7 - r6
            char r7 = r14.charAt(r7)
            char r7 = java.lang.Character.toLowerCase(r7)
            if (r5 == r7) goto L9c
            int r5 = r14.length()
            int r5 = r5 + r15
            int r5 = r5 - r6
            char r5 = r13.charAt(r5)
            int r7 = r14.length()
            int r7 = r7 - r6
            char r6 = r14.charAt(r7)
            char r6 = java.lang.Character.toUpperCase(r6)
            if (r5 == r6) goto L9c
            goto Lb6
        L9c:
            int r5 = r14.length()
            r6 = 2
            if (r5 <= r6) goto Lba
            r8 = 1
            int r9 = r15 + 1
            r11 = 1
            int r5 = r14.length()
            int r12 = r5 + (-2)
            r7 = r13
            r10 = r14
            boolean r5 = r7.regionMatches(r8, r9, r10, r11, r12)
            if (r5 == 0) goto Lb6
            goto Lba
        Lb6:
            int r15 = r15 + 1
            goto L2b
        Lba:
            return r15
        Lbb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.lang.StringUtil.indexOfIgnoreCase(java.lang.String, java.lang.String, int):int");
    }

    public static boolean isEmpty(String[] strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (!isEmpty(str)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0054 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int lastIndexOfIgnoreCase(java.lang.String r13, java.lang.String r14, int r15) {
        /*
            r0 = -1
            if (r13 == 0) goto Lb3
            if (r14 != 0) goto L7
            goto Lb3
        L7:
            int r1 = r14.length()
            if (r1 != 0) goto Le
            return r15
        Le:
            int r1 = r14.length()
            int r2 = r13.length()
            if (r1 <= r2) goto L19
            return r0
        L19:
            r1 = 0
            char r2 = r14.charAt(r1)
            char r2 = java.lang.Character.toLowerCase(r2)
            char r1 = r14.charAt(r1)
            char r1 = java.lang.Character.toUpperCase(r1)
            r3 = r15
            r4 = r3
        L2c:
            if (r15 < 0) goto Lb3
            if (r3 < 0) goto L36
            if (r3 < r15) goto L36
            int r3 = r13.lastIndexOf(r2, r15)
        L36:
            if (r4 < 0) goto L3f
            if (r4 < r15) goto L3f
            int r15 = r13.lastIndexOf(r1, r15)
            r4 = r15
        L3f:
            if (r3 >= 0) goto L46
            if (r4 >= 0) goto L44
            return r0
        L44:
            r15 = r4
            goto L4d
        L46:
            if (r4 >= 0) goto L4a
        L48:
            r15 = r3
            goto L4d
        L4a:
            if (r3 <= r4) goto L44
            goto L48
        L4d:
            int r5 = r14.length()
            r6 = 1
            if (r5 != r6) goto L55
            return r15
        L55:
            int r5 = r13.length()
            int r7 = r14.length()
            int r5 = r5 - r7
            if (r15 <= r5) goto L61
            goto Lae
        L61:
            int r5 = r14.length()
            int r5 = r5 + r15
            int r5 = r5 - r6
            char r5 = r13.charAt(r5)
            int r7 = r14.length()
            int r7 = r7 - r6
            char r7 = r14.charAt(r7)
            char r7 = java.lang.Character.toLowerCase(r7)
            if (r5 == r7) goto L94
            int r5 = r14.length()
            int r5 = r5 + r15
            int r5 = r5 - r6
            char r5 = r13.charAt(r5)
            int r7 = r14.length()
            int r7 = r7 - r6
            char r6 = r14.charAt(r7)
            char r6 = java.lang.Character.toUpperCase(r6)
            if (r5 == r6) goto L94
            goto Lae
        L94:
            int r5 = r14.length()
            r6 = 2
            if (r5 <= r6) goto Lb2
            r8 = 1
            int r9 = r15 + 1
            r11 = 1
            int r5 = r14.length()
            int r12 = r5 + (-2)
            r7 = r13
            r10 = r14
            boolean r5 = r7.regionMatches(r8, r9, r10, r11, r12)
            if (r5 == 0) goto Lae
            goto Lb2
        Lae:
            int r15 = r15 + (-1)
            goto L2c
        Lb2:
            return r15
        Lb3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.lang.StringUtil.lastIndexOfIgnoreCase(java.lang.String, java.lang.String, int):int");
    }

    public static String lispToCamel(String str, boolean z) {
        if (str != null) {
            if (str.length() == 0) {
                return str;
            }
            StringBuilder sb = null;
            int i = 0;
            for (int i2 = 0; i2 < str.length(); i2++) {
                if (str.charAt(i2) == '-') {
                    if (sb == null) {
                        sb = new StringBuilder(str.length() - 1);
                    }
                    if (i != 0 || z) {
                        sb.append(Character.toUpperCase(str.charAt(i)));
                        i++;
                    }
                    sb.append(str.substring(i, i2).toLowerCase());
                    i = i2 + 1;
                }
            }
            if (sb != null) {
                sb.append(Character.toUpperCase(str.charAt(i)));
                sb.append(str.substring(i + 1).toLowerCase());
                return sb.toString();
            }
            if (z && !Character.isUpperCase(str.charAt(0))) {
                return capitalize(str, 0);
            }
            if (z || !Character.isUpperCase(str.charAt(0))) {
                return str;
            }
            return Character.toLowerCase(str.charAt(0)) + str.substring(1);
        }
        throw new IllegalArgumentException("string == null");
    }

    public static String toCSVString(Object[] objArr, String str) {
        if (objArr == null) {
            return "";
        }
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < objArr.length; i++) {
                if (i > 0) {
                    sb.append(str);
                }
                sb.append(objArr[i]);
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("delimiter == null");
    }

    public static Date toDate(String str, String str2) {
        return toDate(str, new SimpleDateFormat(str2));
    }

    public String[] split(String str, String str2) {
        return split(str, str2, 0);
    }

    public static Date toDate(String str, DateFormat dateFormat) {
        Date parse;
        try {
            synchronized (dateFormat) {
                parse = dateFormat.parse(str);
            }
            return parse;
        } catch (ParseException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public static double[] toDoubleArray(String str) {
        return toDoubleArray(str, DELIMITER_STRING);
    }

    public static int[] toIntArray(String str) {
        return toIntArray(str, DELIMITER_STRING, 10);
    }

    public static long[] toLongArray(String str) {
        return toLongArray(str, DELIMITER_STRING);
    }

    public static int[] toIntArray(String str, String str2) {
        return toIntArray(str, str2, 10);
    }

    public static String capitalize(String str) {
        return capitalize(str, 0);
    }

    public static String[] toStringArray(String str) {
        return toStringArray(str, DELIMITER_STRING);
    }

    public static int lastIndexOfIgnoreCase(String str, int i) {
        return lastIndexOfIgnoreCase(str, i, str != null ? str.length() : -1);
    }

    public static int indexOfIgnoreCase(String str, int i) {
        return indexOfIgnoreCase(str, i, 0);
    }

    public static int lastIndexOfIgnoreCase(String str, int i, int i2) {
        if (str == null) {
            return -1;
        }
        char c = (char) i;
        char lowerCase = Character.toLowerCase(c);
        char upperCase = Character.toUpperCase(c);
        int lastIndexOf = str.lastIndexOf(lowerCase, i2);
        int lastIndexOf2 = str.lastIndexOf(upperCase, i2);
        return lastIndexOf < 0 ? lastIndexOf2 : (lastIndexOf2 >= 0 && lastIndexOf <= lastIndexOf2) ? lastIndexOf2 : lastIndexOf;
    }

    public static int indexOfIgnoreCase(String str, int i, int i2) {
        if (str == null) {
            return -1;
        }
        char c = (char) i;
        char lowerCase = Character.toLowerCase(c);
        char upperCase = Character.toUpperCase(c);
        int indexOf = str.indexOf(lowerCase, i2);
        int indexOf2 = str.indexOf(upperCase, i2);
        return indexOf < 0 ? indexOf2 : (indexOf2 >= 0 && indexOf >= indexOf2) ? indexOf2 : indexOf;
    }
}
