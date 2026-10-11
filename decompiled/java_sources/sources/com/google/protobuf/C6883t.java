package com.google.protobuf;

import com.sunia.HTREnginev2.ocn;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.t */
/* loaded from: classes6.dex */
public final class C6883t {

    /* renamed from: a */
    public static final String f38147a = "List";

    /* renamed from: b */
    public static final String f38148b = "OrBuilderList";

    /* renamed from: c */
    public static final String f38149c = "Map";

    /* renamed from: d */
    public static final String f38150d = "Bytes";

    /* renamed from: e */
    public static final char[] f38151e;

    static {
        char[] cArr = new char[80];
        f38151e = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* renamed from: a */
    public static void m30320a(int indent, StringBuilder buffer) {
        while (indent > 0) {
            char[] cArr = f38151e;
            int length = indent > cArr.length ? cArr.length : indent;
            buffer.append(cArr, 0, length);
            indent -= length;
        }
    }

    /* renamed from: b */
    public static boolean m30321b(Object o) {
        return o instanceof Boolean ? !((Boolean) o).booleanValue() : o instanceof Integer ? ((Integer) o).intValue() == 0 : o instanceof Float ? Float.floatToRawIntBits(((Float) o).floatValue()) == 0 : o instanceof Double ? Double.doubleToRawLongBits(((Double) o).doubleValue()) == 0 : o instanceof String ? o.equals("") : o instanceof ByteString ? o.equals(ByteString.EMPTY) : o instanceof MessageLite ? o == ((MessageLite) o).getDefaultInstanceForType() : (o instanceof java.lang.Enum) && ((java.lang.Enum) o).ordinal() == 0;
    }

    /* renamed from: c */
    public static String m30322c(String pascalCase) {
        if (pascalCase.isEmpty()) {
            return pascalCase;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Character.toLowerCase(pascalCase.charAt(0)));
        for (int i = 1; i < pascalCase.length(); i++) {
            char charAt = pascalCase.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static void m30323d(StringBuilder buffer, int indent, String name, Object object) {
        if (object instanceof List) {
            Iterator it2 = ((List) object).iterator();
            while (it2.hasNext()) {
                m30323d(buffer, indent, name, it2.next());
            }
            return;
        }
        if (object instanceof Map) {
            Iterator it3 = ((Map) object).entrySet().iterator();
            while (it3.hasNext()) {
                m30323d(buffer, indent, name, (Map.Entry) it3.next());
            }
            return;
        }
        buffer.append('\n');
        m30320a(indent, buffer);
        buffer.append(m30322c(name));
        if (object instanceof String) {
            buffer.append(": \"");
            buffer.append(ocn.m55938e((String) object));
            buffer.append('\"');
            return;
        }
        if (object instanceof ByteString) {
            buffer.append(": \"");
            buffer.append(ocn.m55934a((ByteString) object));
            buffer.append('\"');
            return;
        }
        if (object instanceof GeneratedMessageLite) {
            buffer.append(" {");
            m30324e((GeneratedMessageLite) object, buffer, indent + 2);
            buffer.append("\n");
            m30320a(indent, buffer);
            buffer.append("}");
            return;
        }
        if (!(object instanceof Map.Entry)) {
            buffer.append(": ");
            buffer.append(object);
            return;
        }
        buffer.append(" {");
        Map.Entry entry = (Map.Entry) object;
        int i = indent + 2;
        m30323d(buffer, i, "key", entry.getKey());
        m30323d(buffer, i, "value", entry.getValue());
        buffer.append("\n");
        m30320a(indent, buffer);
        buffer.append("}");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x016f, code lost:
    
        if (r5.containsKey("get" + r9.substring(0, r9.length() - 5)) != false) goto L56;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m30324e(com.google.protobuf.MessageLite r16, java.lang.StringBuilder r17, int r18) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C6883t.m30324e(com.google.protobuf.MessageLite, java.lang.StringBuilder, int):void");
    }

    /* renamed from: f */
    public static String m30325f(MessageLite messageLite, String commentString) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(commentString);
        m30324e(messageLite, sb, 0);
        return sb.toString();
    }
}
