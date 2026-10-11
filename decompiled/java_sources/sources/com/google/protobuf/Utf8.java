package com.google.protobuf;

import com.sunia.HTREnginev2.C13917ja;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.iri;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import net.p110sf.saxon.ma.json.JsonHandler;
import net.p110sf.saxon.ma.json.JsonParser;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;

/* loaded from: classes6.dex */
public final class Utf8 {

    /* renamed from: a */
    public static final AbstractC6840b f37946a;

    /* renamed from: b */
    public static final long f37947b = -9187201950435737472L;

    /* renamed from: c */
    public static final int f37948c = 3;

    /* renamed from: d */
    public static final int f37949d = 0;

    /* renamed from: e */
    public static final int f37950e = -1;

    /* renamed from: f */
    public static final int f37951f = 16;

    /* loaded from: classes6.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int index, int length) {
            super("Unpaired surrogate at index " + index + " of " + length);
        }
    }

    /* renamed from: com.google.protobuf.Utf8$a */
    /* loaded from: classes6.dex */
    public static class C6839a {
        /* renamed from: h */
        public static void m29682h(byte byte1, byte byte2, byte byte3, byte byte4, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (m29687m(byte2) || (((byte1 << 28) + (byte2 + 112)) >> 30) != 0 || m29687m(byte3) || m29687m(byte4)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int m29692r = ((byte1 & 7) << 18) | (m29692r(byte2) << 12) | (m29692r(byte3) << 6) | m29692r(byte4);
            resultArr[resultPos] = m29686l(m29692r);
            resultArr[resultPos + 1] = m29691q(m29692r);
        }

        /* renamed from: i */
        public static void m29683i(byte byte1, char[] resultArr, int resultPos) {
            resultArr[resultPos] = (char) byte1;
        }

        /* renamed from: j */
        public static void m29684j(byte byte1, byte byte2, byte byte3, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (m29687m(byte2) || ((byte1 == -32 && byte2 < -96) || ((byte1 == -19 && byte2 >= -96) || m29687m(byte3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            resultArr[resultPos] = (char) (((byte1 & 15) << 12) | (m29692r(byte2) << 6) | m29692r(byte3));
        }

        /* renamed from: k */
        public static void m29685k(byte byte1, byte byte2, char[] resultArr, int resultPos) throws InvalidProtocolBufferException {
            if (byte1 < -62 || m29687m(byte2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            resultArr[resultPos] = (char) (((byte1 & 31) << 6) | m29692r(byte2));
        }

        /* renamed from: l */
        public static char m29686l(int codePoint) {
            return (char) ((codePoint >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        /* renamed from: m */
        public static boolean m29687m(byte b) {
            return b > -65;
        }

        /* renamed from: n */
        public static boolean m29688n(byte b) {
            return b >= 0;
        }

        /* renamed from: o */
        public static boolean m29689o(byte b) {
            return b < -16;
        }

        /* renamed from: p */
        public static boolean m29690p(byte b) {
            return b < -32;
        }

        /* renamed from: q */
        public static char m29691q(int codePoint) {
            return (char) ((codePoint & 1023) + 56320);
        }

        /* renamed from: r */
        public static int m29692r(byte b) {
            return b & 63;
        }
    }

    /* renamed from: com.google.protobuf.Utf8$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6840b {
        /* renamed from: m */
        public static int m29693m(final ByteBuffer buffer, int index, final int limit) {
            int m29664m = index + Utf8.m29664m(buffer, index, limit);
            while (m29664m < limit) {
                int i = m29664m + 1;
                byte b = buffer.get(m29664m);
                if (b < 0) {
                    if (b < -32) {
                        if (i >= limit) {
                            return b;
                        }
                        if (b < -62 || buffer.get(i) > -65) {
                            return -1;
                        }
                        i++;
                    } else {
                        if (b >= -16) {
                            if (i >= limit - 2) {
                                return Utf8.m29668q(buffer, b, i, limit - i);
                            }
                            int i2 = i + 1;
                            byte b2 = buffer.get(i);
                            if (b2 <= -65 && (((b << 28) + (b2 + 112)) >> 30) == 0) {
                                int i3 = i2 + 1;
                                if (buffer.get(i2) <= -65) {
                                    i = i3 + 1;
                                    if (buffer.get(i3) > -65) {
                                    }
                                }
                            }
                            return -1;
                        }
                        if (i >= limit - 1) {
                            return Utf8.m29668q(buffer, b, i, limit - i);
                        }
                        int i4 = i + 1;
                        byte b3 = buffer.get(i);
                        if (b3 > -65 || ((b == -32 && b3 < -96) || ((b == -19 && b3 >= -96) || buffer.get(i4) > -65))) {
                            return -1;
                        }
                        m29664m = i4 + 1;
                    }
                }
                m29664m = i;
            }
            return 0;
        }

        /* renamed from: a */
        public final String m29694a(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            if (buffer.hasArray()) {
                return mo29695b(buffer.array(), buffer.arrayOffset() + index, size);
            }
            return buffer.isDirect() ? mo29697d(buffer, index, size) : m29696c(buffer, index, size);
        }

        /* renamed from: b */
        public abstract String mo29695b(byte[] bytes, int index, int size) throws InvalidProtocolBufferException;

        /* renamed from: c */
        public final String m29696c(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            if ((index | size | ((buffer.limit() - index) - size)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(buffer.limit()), Integer.valueOf(index), Integer.valueOf(size)));
            }
            int i = index + size;
            char[] cArr = new char[size];
            int i2 = 0;
            while (index < i) {
                byte b = buffer.get(index);
                if (!C6839a.m29688n(b)) {
                    break;
                }
                index++;
                C6839a.m29683i(b, cArr, i2);
                i2++;
            }
            int i3 = i2;
            while (index < i) {
                int i4 = index + 1;
                byte b2 = buffer.get(index);
                if (C6839a.m29688n(b2)) {
                    int i5 = i3 + 1;
                    C6839a.m29683i(b2, cArr, i3);
                    while (i4 < i) {
                        byte b3 = buffer.get(i4);
                        if (!C6839a.m29688n(b3)) {
                            break;
                        }
                        i4++;
                        C6839a.m29683i(b3, cArr, i5);
                        i5++;
                    }
                    index = i4;
                    i3 = i5;
                } else if (C6839a.m29690p(b2)) {
                    if (i4 >= i) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    C6839a.m29685k(b2, buffer.get(i4), cArr, i3);
                    index = i4 + 1;
                    i3++;
                } else if (C6839a.m29689o(b2)) {
                    if (i4 >= i - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i6 = i4 + 1;
                    C6839a.m29684j(b2, buffer.get(i4), buffer.get(i6), cArr, i3);
                    index = i6 + 1;
                    i3++;
                } else {
                    if (i4 >= i - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i7 = i4 + 1;
                    byte b4 = buffer.get(i4);
                    int i8 = i7 + 1;
                    C6839a.m29682h(b2, b4, buffer.get(i7), buffer.get(i8), cArr, i3);
                    index = i8 + 1;
                    i3 = i3 + 1 + 1;
                }
            }
            return new String(cArr, 0, i3);
        }

        /* renamed from: d */
        public abstract String mo29697d(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException;

        /* renamed from: e */
        public abstract int mo29698e(CharSequence in, byte[] out, int offset, int length);

        /* renamed from: f */
        public final void m29699f(CharSequence in, ByteBuffer out) {
            if (out.hasArray()) {
                int arrayOffset = out.arrayOffset();
                iri.m54775e(out, Utf8.m29660i(in, out.array(), out.position() + arrayOffset, out.remaining()) - arrayOffset);
            } else if (out.isDirect()) {
                mo29701h(in, out);
            } else {
                m29700g(in, out);
            }
        }

        /* renamed from: g */
        public final void m29700g(CharSequence in, ByteBuffer out) {
            int length = in.length();
            int position = out.position();
            int i = 0;
            while (i < length) {
                try {
                    char charAt = in.charAt(i);
                    if (charAt >= 128) {
                        break;
                    }
                    out.put(position + i, (byte) charAt);
                    i++;
                } catch (IndexOutOfBoundsException unused) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + in.charAt(i) + " at index " + (out.position() + Math.max(i, (position - out.position()) + 1)));
                }
            }
            if (i == length) {
                iri.m54775e(out, position + i);
                return;
            }
            position += i;
            while (i < length) {
                char charAt2 = in.charAt(i);
                if (charAt2 < 128) {
                    out.put(position, (byte) charAt2);
                } else if (charAt2 < 2048) {
                    int i2 = position + 1;
                    try {
                        out.put(position, (byte) ((charAt2 >>> 6) | 192));
                        out.put(i2, (byte) ((charAt2 & '?') | 128));
                        position = i2;
                    } catch (IndexOutOfBoundsException unused2) {
                        position = i2;
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + in.charAt(i) + " at index " + (out.position() + Math.max(i, (position - out.position()) + 1)));
                    }
                } else {
                    if (charAt2 >= 55296 && 57343 >= charAt2) {
                        int i3 = i + 1;
                        if (i3 != length) {
                            try {
                                char charAt3 = in.charAt(i3);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    int i4 = position + 1;
                                    try {
                                        out.put(position, (byte) ((codePoint >>> 18) | 240));
                                        int i5 = i4 + 1;
                                        out.put(i4, (byte) (((codePoint >>> 12) & 63) | 128));
                                        int i6 = i5 + 1;
                                        out.put(i5, (byte) (((codePoint >>> 6) & 63) | 128));
                                        out.put(i6, (byte) ((codePoint & 63) | 128));
                                        position = i6;
                                        i = i3;
                                    } catch (IndexOutOfBoundsException unused3) {
                                        position = i4;
                                        i = i3;
                                        throw new ArrayIndexOutOfBoundsException("Failed writing " + in.charAt(i) + " at index " + (out.position() + Math.max(i, (position - out.position()) + 1)));
                                    }
                                } else {
                                    i = i3;
                                }
                            } catch (IndexOutOfBoundsException unused4) {
                            }
                        }
                        throw new UnpairedSurrogateException(i, length);
                    }
                    int i7 = position + 1;
                    out.put(position, (byte) ((charAt2 >>> '\f') | 224));
                    position = i7 + 1;
                    out.put(i7, (byte) (((charAt2 >>> 6) & 63) | 128));
                    out.put(position, (byte) ((charAt2 & '?') | 128));
                }
                i++;
                position++;
            }
            iri.m54775e(out, position);
        }

        /* renamed from: h */
        public abstract void mo29701h(CharSequence in, ByteBuffer out);

        /* renamed from: i */
        public final boolean m29702i(ByteBuffer buffer, int index, int limit) {
            return m29704k(0, buffer, index, limit) == 0;
        }

        /* renamed from: j */
        public final boolean m29703j(byte[] bytes, int index, int limit) {
            return mo29705l(0, bytes, index, limit) == 0;
        }

        /* renamed from: k */
        public final int m29704k(final int state, final ByteBuffer buffer, int index, final int limit) {
            if (!buffer.hasArray()) {
                return buffer.isDirect() ? mo29707o(state, buffer, index, limit) : m29706n(state, buffer, index, limit);
            }
            int arrayOffset = buffer.arrayOffset();
            return mo29705l(state, buffer.array(), index + arrayOffset, arrayOffset + limit);
        }

        /* renamed from: l */
        public abstract int mo29705l(int state, byte[] bytes, int index, int limit);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r7.get(r8) > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
        
            if (r7.get(r8) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x008f, code lost:
        
            if (r7.get(r6) > (-65)) goto L53;
         */
        /* renamed from: n */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int m29706n(final int r6, final java.nio.ByteBuffer r7, int r8, final int r9) {
            /*
                r5 = this;
                if (r6 == 0) goto L92
                if (r8 < r9) goto L5
                return r6
            L5:
                byte r5 = (byte) r6
                r0 = -32
                r1 = -1
                r2 = -65
                if (r5 >= r0) goto L1e
                r6 = -62
                if (r5 < r6) goto L1d
                int r5 = r8 + 1
                byte r6 = r7.get(r8)
                if (r6 <= r2) goto L1a
                goto L1d
            L1a:
                r8 = r5
                goto L92
            L1d:
                return r1
            L1e:
                r3 = -16
                if (r5 >= r3) goto L4f
                int r6 = r6 >> 8
                int r6 = ~r6
                byte r6 = (byte) r6
                if (r6 != 0) goto L38
                int r6 = r8 + 1
                byte r8 = r7.get(r8)
                if (r6 < r9) goto L35
                int r5 = com.google.protobuf.Utf8.m29652a(r5, r8)
                return r5
            L35:
                r4 = r8
                r8 = r6
                r6 = r4
            L38:
                if (r6 > r2) goto L4e
                r3 = -96
                if (r5 != r0) goto L40
                if (r6 < r3) goto L4e
            L40:
                r0 = -19
                if (r5 != r0) goto L46
                if (r6 >= r3) goto L4e
            L46:
                int r5 = r8 + 1
                byte r6 = r7.get(r8)
                if (r6 <= r2) goto L1a
            L4e:
                return r1
            L4f:
                int r0 = r6 >> 8
                int r0 = ~r0
                byte r0 = (byte) r0
                if (r0 != 0) goto L64
                int r6 = r8 + 1
                byte r0 = r7.get(r8)
                if (r6 < r9) goto L62
                int r5 = com.google.protobuf.Utf8.m29652a(r5, r0)
                return r5
            L62:
                r8 = 0
                goto L6a
            L64:
                int r6 = r6 >> 16
                byte r6 = (byte) r6
                r4 = r8
                r8 = r6
                r6 = r4
            L6a:
                if (r8 != 0) goto L7c
                int r8 = r6 + 1
                byte r6 = r7.get(r6)
                if (r8 < r9) goto L79
                int r5 = com.google.protobuf.Utf8.m29653b(r5, r0, r6)
                return r5
            L79:
                r4 = r8
                r8 = r6
                r6 = r4
            L7c:
                if (r0 > r2) goto L91
                int r5 = r5 << 28
                int r0 = r0 + 112
                int r5 = r5 + r0
                int r5 = r5 >> 30
                if (r5 != 0) goto L91
                if (r8 > r2) goto L91
                int r8 = r6 + 1
                byte r5 = r7.get(r6)
                if (r5 <= r2) goto L92
            L91:
                return r1
            L92:
                int r5 = m29693m(r7, r8, r9)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.AbstractC6840b.m29706n(int, java.nio.ByteBuffer, int, int):int");
        }

        /* renamed from: o */
        public abstract int mo29707o(final int state, final ByteBuffer buffer, int index, final int limit);
    }

    /* renamed from: com.google.protobuf.Utf8$c */
    /* loaded from: classes6.dex */
    public static final class C6841c extends AbstractC6840b {
        /* renamed from: p */
        public static int m29708p(byte[] bytes, int index, int limit) {
            while (index < limit && bytes[index] >= 0) {
                index++;
            }
            if (index >= limit) {
                return 0;
            }
            return m29709q(bytes, index, limit);
        }

        /* renamed from: q */
        public static int m29709q(byte[] bytes, int index, int limit) {
            while (index < limit) {
                int i = index + 1;
                byte b = bytes[index];
                if (b < 0) {
                    if (b < -32) {
                        if (i >= limit) {
                            return b;
                        }
                        if (b >= -62) {
                            index = i + 1;
                            if (bytes[i] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b >= -16) {
                        if (i >= limit - 2) {
                            return Utf8.m29669r(bytes, i, limit);
                        }
                        int i2 = i + 1;
                        byte b2 = bytes[i];
                        if (b2 <= -65 && (((b << 28) + (b2 + 112)) >> 30) == 0) {
                            int i3 = i2 + 1;
                            if (bytes[i2] <= -65) {
                                i = i3 + 1;
                                if (bytes[i3] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i >= limit - 1) {
                        return Utf8.m29669r(bytes, i, limit);
                    }
                    int i4 = i + 1;
                    byte b3 = bytes[i];
                    if (b3 <= -65 && ((b != -32 || b3 >= -96) && (b != -19 || b3 < -96))) {
                        index = i4 + 1;
                        if (bytes[i4] > -65) {
                        }
                    }
                    return -1;
                }
                index = i;
            }
            return 0;
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: b */
        public String mo29695b(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
            if ((index | size | ((bytes.length - index) - size)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bytes.length), Integer.valueOf(index), Integer.valueOf(size)));
            }
            int i = index + size;
            char[] cArr = new char[size];
            int i2 = 0;
            while (index < i) {
                byte b = bytes[index];
                if (!C6839a.m29688n(b)) {
                    break;
                }
                index++;
                C6839a.m29683i(b, cArr, i2);
                i2++;
            }
            int i3 = i2;
            while (index < i) {
                int i4 = index + 1;
                byte b2 = bytes[index];
                if (C6839a.m29688n(b2)) {
                    int i5 = i3 + 1;
                    C6839a.m29683i(b2, cArr, i3);
                    while (i4 < i) {
                        byte b3 = bytes[i4];
                        if (!C6839a.m29688n(b3)) {
                            break;
                        }
                        i4++;
                        C6839a.m29683i(b3, cArr, i5);
                        i5++;
                    }
                    index = i4;
                    i3 = i5;
                } else if (C6839a.m29690p(b2)) {
                    if (i4 >= i) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    C6839a.m29685k(b2, bytes[i4], cArr, i3);
                    index = i4 + 1;
                    i3++;
                } else if (C6839a.m29689o(b2)) {
                    if (i4 >= i - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i6 = i4 + 1;
                    C6839a.m29684j(b2, bytes[i4], bytes[i6], cArr, i3);
                    index = i6 + 1;
                    i3++;
                } else {
                    if (i4 >= i - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i7 = i4 + 1;
                    byte b4 = bytes[i4];
                    int i8 = i7 + 1;
                    C6839a.m29682h(b2, b4, bytes[i7], bytes[i8], cArr, i3);
                    index = i8 + 1;
                    i3 = i3 + 1 + 1;
                }
            }
            return new String(cArr, 0, i3);
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: d */
        public String mo29697d(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            return m29696c(buffer, index, size);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        
            return r9 + r6;
         */
        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo29698e(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C6841c.mo29698e(java.lang.CharSequence, byte[], int, int):int");
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: h */
        public void mo29701h(CharSequence in, ByteBuffer out) {
            m29700g(in, out);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r7[r8] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0046, code lost:
        
            if (r7[r8] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0083, code lost:
        
            if (r7[r6] > (-65)) goto L53;
         */
        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo29705l(int r6, byte[] r7, int r8, int r9) {
            /*
                r5 = this;
                if (r6 == 0) goto L86
                if (r8 < r9) goto L5
                return r6
            L5:
                byte r5 = (byte) r6
                r0 = -32
                r1 = -1
                r2 = -65
                if (r5 >= r0) goto L1c
                r6 = -62
                if (r5 < r6) goto L1b
                int r5 = r8 + 1
                r6 = r7[r8]
                if (r6 <= r2) goto L18
                goto L1b
            L18:
                r8 = r5
                goto L86
            L1b:
                return r1
            L1c:
                r3 = -16
                if (r5 >= r3) goto L49
                int r6 = r6 >> 8
                int r6 = ~r6
                byte r6 = (byte) r6
                if (r6 != 0) goto L34
                int r6 = r8 + 1
                r8 = r7[r8]
                if (r6 < r9) goto L31
                int r5 = com.google.protobuf.Utf8.m29652a(r5, r8)
                return r5
            L31:
                r4 = r8
                r8 = r6
                r6 = r4
            L34:
                if (r6 > r2) goto L48
                r3 = -96
                if (r5 != r0) goto L3c
                if (r6 < r3) goto L48
            L3c:
                r0 = -19
                if (r5 != r0) goto L42
                if (r6 >= r3) goto L48
            L42:
                int r5 = r8 + 1
                r6 = r7[r8]
                if (r6 <= r2) goto L18
            L48:
                return r1
            L49:
                int r0 = r6 >> 8
                int r0 = ~r0
                byte r0 = (byte) r0
                if (r0 != 0) goto L5c
                int r6 = r8 + 1
                r0 = r7[r8]
                if (r6 < r9) goto L5a
                int r5 = com.google.protobuf.Utf8.m29652a(r5, r0)
                return r5
            L5a:
                r8 = 0
                goto L62
            L5c:
                int r6 = r6 >> 16
                byte r6 = (byte) r6
                r4 = r8
                r8 = r6
                r6 = r4
            L62:
                if (r8 != 0) goto L72
                int r8 = r6 + 1
                r6 = r7[r6]
                if (r8 < r9) goto L6f
                int r5 = com.google.protobuf.Utf8.m29653b(r5, r0, r6)
                return r5
            L6f:
                r4 = r8
                r8 = r6
                r6 = r4
            L72:
                if (r0 > r2) goto L85
                int r5 = r5 << 28
                int r0 = r0 + 112
                int r5 = r5 + r0
                int r5 = r5 >> 30
                if (r5 != 0) goto L85
                if (r8 > r2) goto L85
                int r8 = r6 + 1
                r5 = r7[r6]
                if (r5 <= r2) goto L86
            L85:
                return r1
            L86:
                int r5 = m29708p(r7, r8, r9)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C6841c.mo29705l(int, byte[], int, int):int");
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: o */
        public int mo29707o(int state, ByteBuffer buffer, int index, int limit) {
            return m29706n(state, buffer, index, limit);
        }
    }

    /* renamed from: com.google.protobuf.Utf8$d */
    /* loaded from: classes6.dex */
    public static final class C6842d extends AbstractC6840b {
        /* renamed from: p */
        public static boolean m29710p() {
            return dun.m53730U() && dun.m53731V();
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x008e, code lost:
        
            return -1;
         */
        /* renamed from: q */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m29711q(long r8, int r10) {
            /*
                int r0 = m29713s(r8, r10)
                long r1 = (long) r0
                long r8 = r8 + r1
                int r10 = r10 - r0
            L7:
                r0 = 0
                r1 = r0
            L9:
                r2 = 1
                if (r10 <= 0) goto L1a
                long r4 = r8 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r8)
                if (r1 < 0) goto L19
                int r10 = r10 + (-1)
                r8 = r4
                goto L9
            L19:
                r8 = r4
            L1a:
                if (r10 != 0) goto L1d
                return r0
            L1d:
                int r10 = r10 + (-1)
                r0 = -32
                r4 = -65
                r5 = -1
                if (r1 >= r0) goto L3a
                if (r10 != 0) goto L29
                return r1
            L29:
                int r10 = r10 + (-1)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r8
                byte r8 = com.sunia.HTREnginev2.dun.m53710A(r8)
                if (r8 <= r4) goto L37
                goto L39
            L37:
                r8 = r2
                goto L7
            L39:
                return r5
            L3a:
                r6 = -16
                if (r1 >= r6) goto L64
                r6 = 2
                if (r10 >= r6) goto L46
                int r8 = m29715u(r8, r1, r10)
                return r8
            L46:
                int r10 = r10 + (-2)
                long r6 = r8 + r2
                byte r8 = com.sunia.HTREnginev2.dun.m53710A(r8)
                if (r8 > r4) goto L63
                r9 = -96
                if (r1 != r0) goto L56
                if (r8 < r9) goto L63
            L56:
                r0 = -19
                if (r1 != r0) goto L5c
                if (r8 >= r9) goto L63
            L5c:
                long r2 = r2 + r6
                byte r8 = com.sunia.HTREnginev2.dun.m53710A(r6)
                if (r8 <= r4) goto L37
            L63:
                return r5
            L64:
                r0 = 3
                if (r10 >= r0) goto L6c
                int r8 = m29715u(r8, r1, r10)
                return r8
            L6c:
                int r10 = r10 + (-3)
                long r6 = r8 + r2
                byte r8 = com.sunia.HTREnginev2.dun.m53710A(r8)
                if (r8 > r4) goto L8e
                int r9 = r1 << 28
                int r8 = r8 + 112
                int r9 = r9 + r8
                int r8 = r9 >> 30
                if (r8 != 0) goto L8e
                long r8 = r6 + r2
                byte r0 = com.sunia.HTREnginev2.dun.m53710A(r6)
                if (r0 > r4) goto L8e
                long r2 = r2 + r8
                byte r8 = com.sunia.HTREnginev2.dun.m53710A(r8)
                if (r8 <= r4) goto L37
            L8e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C6842d.m29711q(long, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x008e, code lost:
        
            return -1;
         */
        /* renamed from: r */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m29712r(final byte[] r8, long r9, int r11) {
            /*
                int r0 = m29714t(r8, r9, r11)
                int r11 = r11 - r0
                long r0 = (long) r0
                long r9 = r9 + r0
            L7:
                r0 = 0
                r1 = r0
            L9:
                r2 = 1
                if (r11 <= 0) goto L1a
                long r4 = r9 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53712C(r8, r9)
                if (r1 < 0) goto L19
                int r11 = r11 + (-1)
                r9 = r4
                goto L9
            L19:
                r9 = r4
            L1a:
                if (r11 != 0) goto L1d
                return r0
            L1d:
                int r11 = r11 + (-1)
                r0 = -32
                r4 = -65
                r5 = -1
                if (r1 >= r0) goto L3a
                if (r11 != 0) goto L29
                return r1
            L29:
                int r11 = r11 + (-1)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r9
                byte r9 = com.sunia.HTREnginev2.dun.m53712C(r8, r9)
                if (r9 <= r4) goto L37
                goto L39
            L37:
                r9 = r2
                goto L7
            L39:
                return r5
            L3a:
                r6 = -16
                if (r1 >= r6) goto L64
                r6 = 2
                if (r11 >= r6) goto L46
                int r8 = m29716v(r8, r1, r9, r11)
                return r8
            L46:
                int r11 = r11 + (-2)
                long r6 = r9 + r2
                byte r9 = com.sunia.HTREnginev2.dun.m53712C(r8, r9)
                if (r9 > r4) goto L63
                r10 = -96
                if (r1 != r0) goto L56
                if (r9 < r10) goto L63
            L56:
                r0 = -19
                if (r1 != r0) goto L5c
                if (r9 >= r10) goto L63
            L5c:
                long r2 = r2 + r6
                byte r9 = com.sunia.HTREnginev2.dun.m53712C(r8, r6)
                if (r9 <= r4) goto L37
            L63:
                return r5
            L64:
                r0 = 3
                if (r11 >= r0) goto L6c
                int r8 = m29716v(r8, r1, r9, r11)
                return r8
            L6c:
                int r11 = r11 + (-3)
                long r6 = r9 + r2
                byte r9 = com.sunia.HTREnginev2.dun.m53712C(r8, r9)
                if (r9 > r4) goto L8e
                int r10 = r1 << 28
                int r9 = r9 + 112
                int r10 = r10 + r9
                int r9 = r10 >> 30
                if (r9 != 0) goto L8e
                long r9 = r6 + r2
                byte r0 = com.sunia.HTREnginev2.dun.m53712C(r8, r6)
                if (r0 > r4) goto L8e
                long r2 = r2 + r9
                byte r9 = com.sunia.HTREnginev2.dun.m53712C(r8, r9)
                if (r9 <= r4) goto L37
            L8e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C6842d.m29712r(byte[], long, int):int");
        }

        /* renamed from: s */
        public static int m29713s(long address, final int maxChars) {
            if (maxChars < 16) {
                return 0;
            }
            int i = (int) ((-address) & 7);
            int i2 = i;
            while (i2 > 0) {
                long j = 1 + address;
                if (dun.m53710A(address) < 0) {
                    return i - i2;
                }
                i2--;
                address = j;
            }
            int i3 = maxChars - i;
            while (i3 >= 8 && (dun.m53722M(address) & Utf8.f37947b) == 0) {
                address += 8;
                i3 -= 8;
            }
            return maxChars - i3;
        }

        /* renamed from: t */
        public static int m29714t(byte[] bytes, long offset, final int maxChars) {
            int i = 0;
            if (maxChars < 16) {
                return 0;
            }
            int i2 = 8 - (((int) offset) & 7);
            while (i < i2) {
                long j = 1 + offset;
                if (dun.m53712C(bytes, offset) < 0) {
                    return i;
                }
                i++;
                offset = j;
            }
            while (true) {
                int i3 = i + 8;
                if (i3 > maxChars || (dun.m53723N(bytes, dun.f68259h + offset) & Utf8.f37947b) != 0) {
                    break;
                }
                offset += 8;
                i = i3;
            }
            while (i < maxChars) {
                long j2 = offset + 1;
                if (dun.m53712C(bytes, offset) < 0) {
                    return i;
                }
                i++;
                offset = j2;
            }
            return maxChars;
        }

        /* renamed from: u */
        public static int m29715u(long address, final int byte1, int remaining) {
            if (remaining == 0) {
                return Utf8.m29665n(byte1);
            }
            if (remaining == 1) {
                return Utf8.m29666o(byte1, dun.m53710A(address));
            }
            if (remaining == 2) {
                return Utf8.m29667p(byte1, dun.m53710A(address), dun.m53710A(address + 1));
            }
            throw new AssertionError();
        }

        /* renamed from: v */
        public static int m29716v(byte[] bytes, int byte1, long offset, int remaining) {
            if (remaining == 0) {
                return Utf8.m29665n(byte1);
            }
            if (remaining == 1) {
                return Utf8.m29666o(byte1, dun.m53712C(bytes, offset));
            }
            if (remaining == 2) {
                return Utf8.m29667p(byte1, dun.m53712C(bytes, offset), dun.m53712C(bytes, offset + 1));
            }
            throw new AssertionError();
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: b */
        public String mo29695b(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
            Charset charset = Internal.f37667b;
            String str = new String(bytes, index, size, charset);
            if (str.contains(JsonHandler.f100617c) && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bytes, index, size + index))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: d */
        public String mo29697d(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
            if ((index | size | ((buffer.limit() - index) - size)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(buffer.limit()), Integer.valueOf(index), Integer.valueOf(size)));
            }
            long m53756k = dun.m53756k(buffer) + index;
            long j = size + m53756k;
            char[] cArr = new char[size];
            int i = 0;
            while (m53756k < j) {
                byte m53710A = dun.m53710A(m53756k);
                if (!C6839a.m29688n(m53710A)) {
                    break;
                }
                m53756k++;
                C6839a.m29683i(m53710A, cArr, i);
                i++;
            }
            int i2 = i;
            while (m53756k < j) {
                long j2 = m53756k + 1;
                byte m53710A2 = dun.m53710A(m53756k);
                if (C6839a.m29688n(m53710A2)) {
                    int i3 = i2 + 1;
                    C6839a.m29683i(m53710A2, cArr, i2);
                    while (j2 < j) {
                        byte m53710A3 = dun.m53710A(j2);
                        if (!C6839a.m29688n(m53710A3)) {
                            break;
                        }
                        j2++;
                        C6839a.m29683i(m53710A3, cArr, i3);
                        i3++;
                    }
                    i2 = i3;
                    m53756k = j2;
                } else if (C6839a.m29690p(m53710A2)) {
                    if (j2 >= j) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    C6839a.m29685k(m53710A2, dun.m53710A(j2), cArr, i2);
                    i2++;
                    m53756k = j2 + 1;
                } else if (C6839a.m29689o(m53710A2)) {
                    if (j2 >= j - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j3 = j2 + 1;
                    C6839a.m29684j(m53710A2, dun.m53710A(j2), dun.m53710A(j3), cArr, i2);
                    m53756k = j3 + 1;
                    i2++;
                } else {
                    if (j2 >= j - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j4 = j2 + 1;
                    long j5 = j4 + 1;
                    C6839a.m29682h(m53710A2, dun.m53710A(j2), dun.m53710A(j4), dun.m53710A(j5), cArr, i2);
                    i2 = i2 + 1 + 1;
                    m53756k = j5 + 1;
                }
            }
            return new String(cArr, 0, i2);
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: e */
        public int mo29698e(final CharSequence in, final byte[] out, final int offset, final int length) {
            char c;
            long j;
            long j2;
            long j3;
            char c2;
            int i;
            char charAt;
            long j4 = offset;
            long j5 = length + j4;
            int length2 = in.length();
            if (length2 > length || out.length - length < offset) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + in.charAt(length2 - 1) + " at index " + (offset + length));
            }
            int i2 = 0;
            while (true) {
                c = 128;
                j = 1;
                if (i2 >= length2 || (charAt = in.charAt(i2)) >= 128) {
                    break;
                }
                dun.m53749g0(out, j4, (byte) charAt);
                i2++;
                j4 = 1 + j4;
            }
            if (i2 == length2) {
                return (int) j4;
            }
            while (i2 < length2) {
                char charAt2 = in.charAt(i2);
                if (charAt2 < c && j4 < j5) {
                    long j6 = j4 + j;
                    dun.m53749g0(out, j4, (byte) charAt2);
                    j3 = j;
                    j2 = j6;
                    c2 = c;
                } else if (charAt2 < 2048 && j4 <= j5 - 2) {
                    long j7 = j4 + j;
                    dun.m53749g0(out, j4, (byte) ((charAt2 >>> 6) | HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT));
                    long j8 = j7 + j;
                    dun.m53749g0(out, j7, (byte) ((charAt2 & '?') | 128));
                    long j9 = j;
                    c2 = 128;
                    j2 = j8;
                    j3 = j9;
                } else {
                    if ((charAt2 >= 55296 && 57343 >= charAt2) || j4 > j5 - 3) {
                        if (j4 > j5 - 4) {
                            if (55296 <= charAt2 && charAt2 <= 57343 && ((i = i2 + 1) == length2 || !Character.isSurrogatePair(charAt2, in.charAt(i)))) {
                                throw new UnpairedSurrogateException(i2, length2);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j4);
                        }
                        int i3 = i2 + 1;
                        if (i3 != length2) {
                            char charAt3 = in.charAt(i3);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                long j10 = j4 + 1;
                                dun.m53749g0(out, j4, (byte) ((codePoint >>> 18) | 240));
                                long j11 = j10 + 1;
                                c2 = 128;
                                dun.m53749g0(out, j10, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j12 = j11 + 1;
                                dun.m53749g0(out, j11, (byte) (((codePoint >>> 6) & 63) | 128));
                                j3 = 1;
                                j2 = j12 + 1;
                                dun.m53749g0(out, j12, (byte) ((codePoint & 63) | 128));
                                i2 = i3;
                            } else {
                                i2 = i3;
                            }
                        }
                        throw new UnpairedSurrogateException(i2 - 1, length2);
                    }
                    long j13 = j4 + j;
                    dun.m53749g0(out, j4, (byte) ((charAt2 >>> '\f') | JsonParser.DUPLICATES_SPECIFIED));
                    long j14 = j13 + j;
                    dun.m53749g0(out, j13, (byte) (((charAt2 >>> 6) & 63) | 128));
                    dun.m53749g0(out, j14, (byte) ((charAt2 & '?') | 128));
                    j2 = j14 + 1;
                    j3 = 1;
                    c2 = 128;
                }
                i2++;
                c = c2;
                long j15 = j3;
                j4 = j2;
                j = j15;
            }
            return (int) j4;
        }

        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: h */
        public void mo29701h(CharSequence in, ByteBuffer out) {
            char c;
            long j;
            int i;
            int i2;
            long j2;
            char c2;
            char charAt;
            long m53756k = dun.m53756k(out);
            long position = out.position() + m53756k;
            long limit = out.limit() + m53756k;
            int length = in.length();
            if (length > limit - position) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + in.charAt(length - 1) + " at index " + out.limit());
            }
            int i3 = 0;
            while (true) {
                c = 128;
                if (i3 >= length || (charAt = in.charAt(i3)) >= 128) {
                    break;
                }
                dun.m53745e0(position, (byte) charAt);
                i3++;
                position++;
            }
            if (i3 == length) {
                iri.m54775e(out, (int) (position - m53756k));
                return;
            }
            while (i3 < length) {
                char charAt2 = in.charAt(i3);
                if (charAt2 >= c || position >= limit) {
                    if (charAt2 >= 2048 || position > limit - 2) {
                        j = m53756k;
                        if ((charAt2 >= 55296 && 57343 >= charAt2) || position > limit - 3) {
                            if (position > limit - 4) {
                                if (55296 <= charAt2 && charAt2 <= 57343 && ((i = i3 + 1) == length || !Character.isSurrogatePair(charAt2, in.charAt(i)))) {
                                    throw new UnpairedSurrogateException(i3, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + position);
                            }
                            i2 = i3 + 1;
                            if (i2 != length) {
                                char charAt3 = in.charAt(i2);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    j2 = limit;
                                    long j3 = position + 1;
                                    dun.m53745e0(position, (byte) ((codePoint >>> 18) | 240));
                                    long j4 = j3 + 1;
                                    c2 = 128;
                                    dun.m53745e0(j3, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j5 = j4 + 1;
                                    dun.m53745e0(j4, (byte) (((codePoint >>> 6) & 63) | 128));
                                    dun.m53745e0(j5, (byte) ((codePoint & 63) | 128));
                                    position = j5 + 1;
                                } else {
                                    i3 = i2;
                                }
                            }
                            throw new UnpairedSurrogateException(i3 - 1, length);
                        }
                        long j6 = position + 1;
                        dun.m53745e0(position, (byte) ((charAt2 >>> '\f') | JsonParser.DUPLICATES_SPECIFIED));
                        long j7 = j6 + 1;
                        dun.m53745e0(j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                        dun.m53745e0(j7, (byte) ((charAt2 & '?') | 128));
                        position = j7 + 1;
                    } else {
                        j = m53756k;
                        long j8 = position + 1;
                        dun.m53745e0(position, (byte) ((charAt2 >>> 6) | HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT));
                        dun.m53745e0(j8, (byte) ((charAt2 & '?') | 128));
                        position = j8 + 1;
                    }
                    j2 = limit;
                    i2 = i3;
                    c2 = 128;
                } else {
                    dun.m53745e0(position, (byte) charAt2);
                    j2 = limit;
                    i2 = i3;
                    c2 = c;
                    position++;
                    j = m53756k;
                }
                c = c2;
                m53756k = j;
                limit = j2;
                i3 = i2 + 1;
            }
            iri.m54775e(out, (int) (position - m53756k));
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0058, code lost:
        
            if (com.sunia.HTREnginev2.dun.m53712C(r11, r0) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x009e, code lost:
        
            if (com.sunia.HTREnginev2.dun.m53712C(r11, r0) > (-65)) goto L59;
         */
        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo29705l(int r10, byte[] r11, final int r12, final int r13) {
            /*
                Method dump skipped, instructions count: 197
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C6842d.mo29705l(int, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0062, code lost:
        
            if (com.sunia.HTREnginev2.dun.m53710A(r0) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00a8, code lost:
        
            if (com.sunia.HTREnginev2.dun.m53710A(r0) > (-65)) goto L59;
         */
        @Override // com.google.protobuf.Utf8.AbstractC6840b
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo29707o(final int r9, java.nio.ByteBuffer r10, final int r11, final int r12) {
            /*
                Method dump skipped, instructions count: 210
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.C6842d.mo29707o(int, java.nio.ByteBuffer, int, int):int");
        }
    }

    static {
        f37946a = (!C6842d.m29710p() || C13917ja.m54903c()) ? new C6841c() : new C6842d();
    }

    /* renamed from: g */
    public static String m29658g(ByteBuffer buffer, int index, int size) throws InvalidProtocolBufferException {
        return f37946a.m29694a(buffer, index, size);
    }

    /* renamed from: h */
    public static String m29659h(byte[] bytes, int index, int size) throws InvalidProtocolBufferException {
        return f37946a.mo29695b(bytes, index, size);
    }

    /* renamed from: i */
    public static int m29660i(CharSequence in, byte[] out, int offset, int length) {
        return f37946a.mo29698e(in, out, offset, length);
    }

    /* renamed from: j */
    public static void m29661j(CharSequence in, ByteBuffer out) {
        f37946a.m29699f(in, out);
    }

    /* renamed from: k */
    public static int m29662k(CharSequence sequence) {
        int length = sequence.length();
        int i = 0;
        while (i < length && sequence.charAt(i) < 128) {
            i++;
        }
        int i2 = length;
        while (true) {
            if (i < length) {
                char charAt = sequence.charAt(i);
                if (charAt >= 2048) {
                    i2 += m29663l(sequence, i);
                    break;
                }
                i2 += (127 - charAt) >>> 31;
                i++;
            } else {
                break;
            }
        }
        if (i2 >= length) {
            return i2;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i2 + 4294967296L));
    }

    /* renamed from: l */
    public static int m29663l(CharSequence sequence, int start) {
        int length = sequence.length();
        int i = 0;
        while (start < length) {
            char charAt = sequence.charAt(start);
            if (charAt < 2048) {
                i += (127 - charAt) >>> 31;
            } else {
                i += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(sequence, start) < 65536) {
                        throw new UnpairedSurrogateException(start, length);
                    }
                    start++;
                }
            }
            start++;
        }
        return i;
    }

    /* renamed from: m */
    public static int m29664m(ByteBuffer buffer, int index, int limit) {
        int i = limit - 7;
        int i2 = index;
        while (i2 < i && (buffer.getLong(i2) & f37947b) == 0) {
            i2 += 8;
        }
        return i2 - index;
    }

    /* renamed from: n */
    public static int m29665n(int byte1) {
        if (byte1 > -12) {
            return -1;
        }
        return byte1;
    }

    /* renamed from: o */
    public static int m29666o(int byte1, int byte2) {
        if (byte1 > -12 || byte2 > -65) {
            return -1;
        }
        return byte1 ^ (byte2 << 8);
    }

    /* renamed from: p */
    public static int m29667p(int byte1, int byte2, int byte3) {
        if (byte1 > -12 || byte2 > -65 || byte3 > -65) {
            return -1;
        }
        return (byte1 ^ (byte2 << 8)) ^ (byte3 << 16);
    }

    /* renamed from: q */
    public static int m29668q(final ByteBuffer buffer, final int byte1, final int index, final int remaining) {
        if (remaining == 0) {
            return m29665n(byte1);
        }
        if (remaining == 1) {
            return m29666o(byte1, buffer.get(index));
        }
        if (remaining == 2) {
            return m29667p(byte1, buffer.get(index), buffer.get(index + 1));
        }
        throw new AssertionError();
    }

    /* renamed from: r */
    public static int m29669r(byte[] bytes, int index, int limit) {
        byte b = bytes[index - 1];
        int i = limit - index;
        if (i == 0) {
            return m29665n(b);
        }
        if (i == 1) {
            return m29666o(b, bytes[index]);
        }
        if (i == 2) {
            return m29667p(b, bytes[index], bytes[index + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: s */
    public static boolean m29670s(ByteBuffer buffer) {
        return f37946a.m29702i(buffer, buffer.position(), buffer.remaining());
    }

    /* renamed from: t */
    public static boolean m29671t(byte[] bytes) {
        return f37946a.m29703j(bytes, 0, bytes.length);
    }

    /* renamed from: u */
    public static boolean m29672u(byte[] bytes, int index, int limit) {
        return f37946a.m29703j(bytes, index, limit);
    }

    /* renamed from: v */
    public static int m29673v(int state, ByteBuffer buffer, int index, int limit) {
        return f37946a.m29704k(state, buffer, index, limit);
    }

    /* renamed from: w */
    public static int m29674w(int state, byte[] bytes, int index, int limit) {
        return f37946a.mo29705l(state, bytes, index, limit);
    }
}
