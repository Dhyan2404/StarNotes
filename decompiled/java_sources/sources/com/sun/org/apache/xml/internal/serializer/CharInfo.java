package com.sun.org.apache.xml.internal.serializer;

import com.sun.org.apache.xml.internal.serializer.utils.SystemIDResolver;
import com.sun.org.apache.xml.internal.serializer.utils.WrappedRuntimeException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Hashtable;
import javax.xml.transform.TransformerException;
import org.scribe.model.ParameterList;

/* loaded from: classes10.dex */
final class CharInfo {
    private static final int ASCII_MAX = 128;
    public static final String HTML_ENTITIES_RESOURCE = "com.sun.org.apache.xml.internal.serializer.HTMLEntities";
    private static final int LOW_ORDER_BITMASK = 31;
    private static final int SHIFT_PER_WORD = 5;
    public static final char S_CARRIAGERETURN = '\r';
    public static final char S_HORIZONAL_TAB = '\t';
    public static final char S_LINEFEED = '\n';
    public static final String XML_ENTITIES_RESOURCE = "com.sun.org.apache.xml.internal.serializer.XMLEntities";
    private static Hashtable m_getCharInfoCache = new Hashtable();
    private int[] array_of_bits;
    private int firstWordNotUsed;
    private boolean[] isCleanTextASCII;
    private boolean[] isSpecialAttrASCII;
    private boolean[] isSpecialTextASCII;
    private CharKey m_charKey;
    private Hashtable m_charToString;
    final boolean onlyQuotAmpLtGt;

    private static int arrayIndex(int i) {
        return i >> 5;
    }

    private static int bit(int i) {
        return 1 << (i & 31);
    }

    private int[] createEmptySetOfIntegers(int i) {
        this.firstWordNotUsed = 0;
        return new int[arrayIndex(i - 1) + 1];
    }

    private void defineChar2StringMapping(String str, char c) {
        this.m_charToString.put(new CharKey(c), str);
        set(c);
    }

    private void defineEntity(String str, char c) {
        StringBuffer stringBuffer = new StringBuffer(ParameterList.f115951c);
        stringBuffer.append(str);
        stringBuffer.append(';');
        defineChar2StringMapping(stringBuffer.toString(), c);
    }

    private boolean extraEntity(int i) {
        return (i >= 128 || i == 34 || i == 38 || i == 60 || i == 62) ? false : true;
    }

    private final boolean get(int i) {
        int i2 = i >> 5;
        return i2 < this.firstWordNotUsed && (this.array_of_bits[i2] & (1 << (i & 31))) != 0;
    }

    public static CharInfo getCharInfo(String str, String str2) {
        CharInfo charInfo = (CharInfo) m_getCharInfoCache.get(str);
        if (charInfo != null) {
            return charInfo;
        }
        try {
            CharInfo charInfoBasedOnPrivilege = getCharInfoBasedOnPrivilege(str, str2, true);
            m_getCharInfoCache.put(str, charInfoBasedOnPrivilege);
            return charInfoBasedOnPrivilege;
        } catch (Exception unused) {
            try {
                return getCharInfoBasedOnPrivilege(str, str2, false);
            } catch (Exception unused2) {
                if (str.indexOf(58) < 0) {
                    SystemIDResolver.getAbsoluteURIFromRelative(str);
                } else {
                    try {
                        SystemIDResolver.getAbsoluteURI(str, null);
                    } catch (TransformerException e) {
                        throw new WrappedRuntimeException(e);
                    }
                }
                return getCharInfoBasedOnPrivilege(str, str2, false);
            }
        }
    }

    private static CharInfo getCharInfoBasedOnPrivilege(final String str, final String str2, final boolean z) {
        return (CharInfo) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xml.internal.serializer.CharInfo.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                return new CharInfo(str, str2, z);
            }
        });
    }

    private final void set(int i) {
        setASCIIdirty(i);
        int i2 = i >> 5;
        int i3 = i2 + 1;
        if (this.firstWordNotUsed < i3) {
            this.firstWordNotUsed = i3;
        }
        int[] iArr = this.array_of_bits;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    private void setASCIIclean(int i) {
        if (i < 0 || i >= 128) {
            return;
        }
        this.isCleanTextASCII[i] = true;
        this.isSpecialTextASCII[i] = false;
    }

    private void setASCIIdirty(int i) {
        if (i < 0 || i >= 128) {
            return;
        }
        this.isCleanTextASCII[i] = false;
        this.isSpecialTextASCII[i] = true;
    }

    public synchronized String getOutputStringForChar(char c) {
        this.m_charKey.setChar(c);
        return (String) this.m_charToString.get(this.m_charKey);
    }

    public final boolean isSpecialAttrChar(int i) {
        return i < 128 ? this.isSpecialAttrASCII[i] : get(i);
    }

    public final boolean isSpecialTextChar(int i) {
        return i < 128 ? this.isSpecialTextASCII[i] : get(i);
    }

    public final boolean isTextASCIIClean(int i) {
        return this.isCleanTextASCII[i];
    }

    /* loaded from: classes10.dex */
    public static class CharKey {
        private char m_char;

        public CharKey(char c) {
            this.m_char = c;
        }

        public final boolean equals(Object obj) {
            return ((CharKey) obj).m_char == this.m_char;
        }

        public final int hashCode() {
            return this.m_char;
        }

        public final void setChar(char c) {
            this.m_char = c;
        }

        public CharKey() {
        }
    }

    private CharInfo(String str, String str2) {
        this(str, str2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0134 A[LOOP:2: B:36:0x0132->B:37:0x0134, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014c A[Catch: all -> 0x015e, Exception -> 0x0160, TRY_ENTER, TryCatch #0 {Exception -> 0x0160, blocks: (B:47:0x006a, B:53:0x0090, B:54:0x00a7, B:56:0x00af, B:58:0x00b5, B:66:0x00be, B:68:0x00c4, B:70:0x00d0, B:72:0x00da, B:73:0x00de, B:76:0x00ed, B:62:0x00f2, B:80:0x00f7, B:50:0x014c, B:51:0x015d, B:87:0x009d, B:88:0x0072, B:90:0x0078, B:97:0x007d), top: B:45:0x0068, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private CharInfo(java.lang.String r13, java.lang.String r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serializer.CharInfo.<init>(java.lang.String, java.lang.String, boolean):void");
    }
}
