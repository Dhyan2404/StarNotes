package org.apache.poi.hwpf.dev;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.StringUtil;
import org.apache.xmlbeans.impl.common.NameUtil;

@Internal
/* loaded from: classes12.dex */
public class RecordUtil {
    public static String getBitFieldFunction(String str, String str2, String str3, String str4) {
        String str5;
        String bitFieldType = getBitFieldType(str, str2, str3);
        if (str4.equals("true")) {
            str5 = bitFieldType + " ";
        } else {
            str5 = "";
        }
        if (bitFieldType.equals("boolean")) {
            return str5 + "is" + getFieldName1stCap(str, 0);
        }
        return str5 + "get" + getFieldName1stCap(str, 0);
    }

    public static String getBitFieldGet(String str, String str2, String str3, String str4) {
        String bitFieldType = getBitFieldType(str, str2, str3);
        if (bitFieldType.equals("boolean")) {
            return str + ".isSet(" + str4 + ");";
        }
        return "( " + bitFieldType + " )" + str + ".getValue(" + str4 + ");";
    }

    public static String getBitFieldSet(String str, String str2, String str3, String str4) {
        if (getBitFieldType(str, str2, str3).equals("boolean")) {
            if (str3.equals("int")) {
                return getFieldName(str, 0) + ".setBoolean(" + str4 + ", value)";
            }
            return MotionUtils.f31761c + str3 + MotionUtils.f31762d + getFieldName(str, 0) + ".setBoolean(" + str4 + ", value)";
        }
        if (str3.equals("int")) {
            return getFieldName(str, 0) + ".setValue(" + str4 + ", value)";
        }
        return MotionUtils.f31761c + str3 + MotionUtils.f31762d + getFieldName(str, 0) + ".setValue(" + str4 + ", value)";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0025, code lost:
    
        if (r10.equals("short") == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getBitFieldType(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r8 = 2
            java.lang.String r9 = r9.substring(r8)
            r0 = 16
            long r1 = java.lang.Long.parseLong(r9, r0)
            int r9 = (int) r1
            r10.hashCode()
            int r1 = r10.hashCode()
            java.lang.String r2 = "short"
            java.lang.String r3 = "byte"
            java.lang.String r4 = "int"
            r5 = 1
            r6 = 0
            r7 = -1
            switch(r1) {
                case 104431: goto L31;
                case 3039496: goto L28;
                case 109413500: goto L21;
                default: goto L1f;
            }
        L1f:
            r8 = r7
            goto L39
        L21:
            boolean r10 = r10.equals(r2)
            if (r10 != 0) goto L39
            goto L1f
        L28:
            boolean r8 = r10.equals(r3)
            if (r8 != 0) goto L2f
            goto L1f
        L2f:
            r8 = r5
            goto L39
        L31:
            boolean r8 = r10.equals(r4)
            if (r8 != 0) goto L38
            goto L1f
        L38:
            r8 = r6
        L39:
            r10 = 8
            switch(r8) {
                case 0: goto L44;
                case 1: goto L42;
                case 2: goto L40;
                default: goto L3e;
            }
        L3e:
            r8 = r6
            goto L46
        L40:
            r8 = r0
            goto L46
        L42:
            r8 = r10
            goto L46
        L44:
            r8 = 32
        L46:
            r1 = r6
        L47:
            if (r6 >= r8) goto L52
            int r7 = r9 >> r6
            r7 = r7 & r5
            byte r7 = (byte) r7
            int r1 = r1 + r7
            byte r1 = (byte) r1
            int r6 = r6 + 1
            goto L47
        L52:
            if (r1 != r5) goto L57
            java.lang.String r8 = "boolean"
            return r8
        L57:
            if (r1 >= r10) goto L5a
            return r3
        L5a:
            if (r1 >= r0) goto L5d
            return r2
        L5d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hwpf.dev.RecordUtil.getBitFieldType(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String getConstName(String str, String str2, int i) {
        StringBuilder sb = new StringBuilder();
        toConstIdentifier(str, sb);
        sb.append(NameUtil.USCORE);
        toConstIdentifier(str2, sb);
        pad(sb, i);
        return sb.toString();
    }

    public static String getFieldName(int i, String str, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("field_");
        sb.append(i);
        sb.append(NameUtil.USCORE);
        toIdentifier(str, sb);
        pad(sb, i2);
        return sb.toString();
    }

    public static String getFieldName1stCap(String str, int i) {
        StringBuilder sb = new StringBuilder();
        toIdentifier(str, sb);
        sb.setCharAt(0, toUpperCase(sb.charAt(0)));
        pad(sb, i);
        return sb.toString();
    }

    public static String getType1stCap(String str, String str2, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        StringBuilder pad = pad(sb, i);
        pad.setCharAt(0, toUpperCase(pad.charAt(0)));
        return pad.toString();
    }

    public static StringBuilder pad(StringBuilder sb, int i) {
        for (int length = sb.length(); length < i; length++) {
            sb.append(' ');
        }
        return sb;
    }

    private static void toConstIdentifier(String str, StringBuilder sb) {
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == ' ') {
                sb.append(NameUtil.USCORE);
            } else {
                sb.append(toUpperCase(str.charAt(i)));
            }
        }
    }

    private static void toIdentifier(String str, StringBuilder sb) {
        int i = 0;
        while (i < str.length()) {
            if (str.charAt(i) == ' ') {
                i++;
                sb.append(toUpperCase(str.charAt(i)));
            } else {
                sb.append(str.charAt(i));
            }
            i++;
        }
    }

    private static char toUpperCase(char c) {
        return StringUtil.toUpperCase(c).charAt(0);
    }

    public static String getFieldName(String str, int i) {
        StringBuilder sb = new StringBuilder();
        toIdentifier(str, sb);
        pad(sb, i);
        return sb.toString();
    }
}
