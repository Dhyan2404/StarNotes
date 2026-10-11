package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public abstract class Utf8 {

    /* renamed from: a */
    public static Utf8 f7119a;

    /* loaded from: classes3.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: androidx.emoji2.text.flatbuffer.Utf8$a */
    /* loaded from: classes3.dex */
    public static class C1051a {
        /* renamed from: a */
        public static void m4365a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws IllegalArgumentException {
            if (m4370f(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m4370f(b3) || m4370f(b4)) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            int m4375k = ((b & 7) << 18) | (m4375k(b2) << 12) | (m4375k(b3) << 6) | m4375k(b4);
            cArr[i] = m4369e(m4375k);
            cArr[i + 1] = m4374j(m4375k);
        }

        /* renamed from: b */
        public static void m4366b(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* renamed from: c */
        public static void m4367c(byte b, byte b2, byte b3, char[] cArr, int i) throws IllegalArgumentException {
            if (m4370f(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m4370f(b3)))) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            cArr[i] = (char) (((b & 15) << 12) | (m4375k(b2) << 6) | m4375k(b3));
        }

        /* renamed from: d */
        public static void m4368d(byte b, byte b2, char[] cArr, int i) throws IllegalArgumentException {
            if (b < -62) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            }
            if (m4370f(b2)) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            cArr[i] = (char) (((b & 31) << 6) | m4375k(b2));
        }

        /* renamed from: e */
        public static char m4369e(int i) {
            return (char) ((i >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        /* renamed from: f */
        public static boolean m4370f(byte b) {
            return b > -65;
        }

        /* renamed from: g */
        public static boolean m4371g(byte b) {
            return b >= 0;
        }

        /* renamed from: h */
        public static boolean m4372h(byte b) {
            return b < -16;
        }

        /* renamed from: i */
        public static boolean m4373i(byte b) {
            return b < -32;
        }

        /* renamed from: j */
        public static char m4374j(int i) {
            return (char) ((i & 1023) + 56320);
        }

        /* renamed from: k */
        public static int m4375k(byte b) {
            return b & 63;
        }
    }

    public static Utf8 getDefault() {
        if (f7119a == null) {
            f7119a = new Utf8Safe();
        }
        return f7119a;
    }

    public static void setDefault(Utf8 utf8) {
        f7119a = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i, int i2);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
