package com.sun.org.apache.xml.internal.serializer;

/* loaded from: classes10.dex */
public final class EncodingInfo {
    final String javaName;
    private InEncoding m_encoding;
    final String name;

    /* loaded from: classes10.dex */
    public class EncodingImpl implements InEncoding {
        private static final int RANGE = 128;
        private InEncoding m_after;
        private final boolean[] m_alreadyKnown;
        private InEncoding m_before;
        private final String m_encoding;
        private final int m_explFirst;
        private final int m_explLast;
        private final int m_first;
        private final boolean[] m_isInEncoding;
        private final int m_last;

        @Override // com.sun.org.apache.xml.internal.serializer.EncodingInfo.InEncoding
        public boolean isInEncoding(char c) {
            int codePoint = Encodings.toCodePoint(c);
            int i = this.m_explFirst;
            if (codePoint < i) {
                if (this.m_before == null) {
                    this.m_before = new EncodingImpl(this.m_encoding, this.m_first, i - 1, codePoint);
                }
                return this.m_before.isInEncoding(c);
            }
            int i2 = this.m_explLast;
            if (i2 < codePoint) {
                if (this.m_after == null) {
                    this.m_after = new EncodingImpl(this.m_encoding, i2 + 1, this.m_last, codePoint);
                }
                return this.m_after.isInEncoding(c);
            }
            int i3 = codePoint - i;
            if (this.m_alreadyKnown[i3]) {
                return this.m_isInEncoding[i3];
            }
            boolean inEncoding = EncodingInfo.inEncoding(c, this.m_encoding);
            this.m_alreadyKnown[i3] = true;
            this.m_isInEncoding[i3] = inEncoding;
            return inEncoding;
        }

        private EncodingImpl(EncodingInfo encodingInfo) {
            this(encodingInfo.javaName, 0, Integer.MAX_VALUE, 0);
        }

        private EncodingImpl(String str, int i, int i2, int i3) {
            this.m_alreadyKnown = new boolean[128];
            this.m_isInEncoding = new boolean[128];
            this.m_first = i;
            this.m_last = i2;
            this.m_explFirst = i3;
            this.m_explLast = i3 + 127;
            this.m_encoding = str;
            String str2 = EncodingInfo.this.javaName;
            if (str2 == null) {
                return;
            }
            if (i3 >= 0 && i3 <= 127 && ("UTF8".equals(str2) || "UTF-16".equals(EncodingInfo.this.javaName) || "ASCII".equals(EncodingInfo.this.javaName) || "US-ASCII".equals(EncodingInfo.this.javaName) || "Unicode".equals(EncodingInfo.this.javaName) || "UNICODE".equals(EncodingInfo.this.javaName) || EncodingInfo.this.javaName.startsWith("ISO8859"))) {
                for (int i4 = 1; i4 < 127; i4++) {
                    int i5 = i4 - this.m_explFirst;
                    if (i5 >= 0 && i5 < 128) {
                        this.m_alreadyKnown[i5] = true;
                        this.m_isInEncoding[i5] = true;
                    }
                }
            }
            if (EncodingInfo.this.javaName != null) {
                return;
            }
            int i6 = 0;
            while (true) {
                boolean[] zArr = this.m_alreadyKnown;
                if (i6 >= zArr.length) {
                    return;
                }
                zArr[i6] = true;
                this.m_isInEncoding[i6] = true;
                i6++;
            }
        }

        @Override // com.sun.org.apache.xml.internal.serializer.EncodingInfo.InEncoding
        public boolean isInEncoding(char c, char c2) {
            int codePoint = Encodings.toCodePoint(c, c2);
            int i = this.m_explFirst;
            if (codePoint < i) {
                if (this.m_before == null) {
                    this.m_before = new EncodingImpl(this.m_encoding, this.m_first, i - 1, codePoint);
                }
                return this.m_before.isInEncoding(c, c2);
            }
            int i2 = this.m_explLast;
            if (i2 < codePoint) {
                if (this.m_after == null) {
                    this.m_after = new EncodingImpl(this.m_encoding, i2 + 1, this.m_last, codePoint);
                }
                return this.m_after.isInEncoding(c, c2);
            }
            int i3 = codePoint - i;
            if (this.m_alreadyKnown[i3]) {
                return this.m_isInEncoding[i3];
            }
            boolean inEncoding = EncodingInfo.inEncoding(c, c2, this.m_encoding);
            this.m_alreadyKnown[i3] = true;
            this.m_isInEncoding[i3] = inEncoding;
            return inEncoding;
        }
    }

    /* loaded from: classes10.dex */
    public interface InEncoding {
        boolean isInEncoding(char c);

        boolean isInEncoding(char c, char c2);
    }

    public EncodingInfo(String str, String str2) {
        this.name = str;
        this.javaName = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean inEncoding(char c, String str) {
        try {
            return inEncoding(c, new String(new char[]{c}).getBytes(str));
        } catch (Exception unused) {
            return str == null;
        }
    }

    public boolean isInEncoding(char c) {
        if (this.m_encoding == null) {
            this.m_encoding = new EncodingImpl();
        }
        return this.m_encoding.isInEncoding(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean inEncoding(char c, char c2, String str) {
        try {
            return inEncoding(c, new String(new char[]{c, c2}).getBytes(str));
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean isInEncoding(char c, char c2) {
        if (this.m_encoding == null) {
            this.m_encoding = new EncodingImpl();
        }
        return this.m_encoding.isInEncoding(c, c2);
    }

    private static boolean inEncoding(char c, byte[] bArr) {
        byte b;
        if (bArr == null || bArr.length == 0 || (b = bArr[0]) == 0) {
            return false;
        }
        return b != 63 || c == '?';
    }
}
