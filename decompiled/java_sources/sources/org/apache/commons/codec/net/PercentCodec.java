package org.apache.commons.codec.net;

import com.sunia.HTREnginev2.izn;
import java.nio.ByteBuffer;
import java.util.BitSet;
import org.apache.commons.codec.BinaryDecoder;
import org.apache.commons.codec.BinaryEncoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.EncoderException;

/* loaded from: classes9.dex */
public class PercentCodec implements BinaryEncoder, BinaryDecoder {

    /* renamed from: e */
    public static final byte f104868e = 37;

    /* renamed from: a */
    public final BitSet f104869a;

    /* renamed from: b */
    public final boolean f104870b;

    /* renamed from: c */
    public int f104871c;

    /* renamed from: d */
    public int f104872d;

    public PercentCodec() {
        this.f104869a = new BitSet();
        this.f104871c = Integer.MAX_VALUE;
        this.f104872d = Integer.MIN_VALUE;
        this.f104870b = false;
        m65859g((byte) 37);
    }

    /* renamed from: a */
    public final boolean m65853a(byte b) {
        return !m65861i(b) || (m65858f(b) && this.f104869a.get(b));
    }

    /* renamed from: b */
    public final boolean m65854b(byte[] bArr) {
        for (byte b : bArr) {
            if (b == 32) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final byte[] m65855c(byte[] bArr, int i, boolean z) {
        ByteBuffer allocate = ByteBuffer.allocate(i);
        for (byte b : bArr) {
            if (z && m65853a(b)) {
                if (b < 0) {
                    b = (byte) (b + 256);
                }
                char m54845b = izn.m54845b(b >> 4);
                char m54845b2 = izn.m54845b(b);
                allocate.put((byte) 37);
                allocate.put((byte) m54845b);
                allocate.put((byte) m54845b2);
            } else if (this.f104870b && b == 32) {
                allocate.put((byte) 43);
            } else {
                allocate.put(b);
            }
        }
        return allocate.array();
    }

    /* renamed from: d */
    public final int m65856d(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            i += bArr[i] == 37 ? 3 : 1;
            i2++;
        }
        return i2;
    }

    @Override // org.apache.commons.codec.BinaryDecoder
    public byte[] decode(byte[] bArr) throws DecoderException {
        if (bArr == null) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(m65856d(bArr));
        int i = 0;
        while (i < bArr.length) {
            byte b = bArr[i];
            if (b == 37) {
                int i2 = i + 1;
                try {
                    int m54844a = izn.m54844a(bArr[i2]);
                    i = i2 + 1;
                    allocate.put((byte) ((m54844a << 4) + izn.m54844a(bArr[i])));
                } catch (ArrayIndexOutOfBoundsException e) {
                    throw new DecoderException("Invalid percent decoding: ", e);
                }
            } else if (this.f104870b && b == 43) {
                allocate.put((byte) 32);
            } else {
                allocate.put(b);
            }
            i++;
        }
        return allocate.array();
    }

    /* renamed from: e */
    public final int m65857e(byte[] bArr) {
        int i = 0;
        for (byte b : bArr) {
            i += m65853a(b) ? 3 : 1;
        }
        return i;
    }

    @Override // org.apache.commons.codec.BinaryEncoder
    public byte[] encode(byte[] bArr) throws EncoderException {
        if (bArr == null) {
            return null;
        }
        int m65857e = m65857e(bArr);
        boolean z = m65857e != bArr.length;
        return (z || (this.f104870b && m65854b(bArr))) ? m65855c(bArr, m65857e, z) : bArr;
    }

    /* renamed from: f */
    public final boolean m65858f(byte b) {
        return b >= this.f104871c && b <= this.f104872d;
    }

    /* renamed from: g */
    public final void m65859g(byte b) {
        this.f104869a.set(b);
        if (b < this.f104871c) {
            this.f104871c = b;
        }
        if (b > this.f104872d) {
            this.f104872d = b;
        }
    }

    /* renamed from: h */
    public final void m65860h(byte[] bArr) {
        if (bArr != null) {
            for (byte b : bArr) {
                m65859g(b);
            }
        }
        m65859g((byte) 37);
    }

    /* renamed from: i */
    public final boolean m65861i(byte b) {
        return b >= 0;
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            return encode((byte[]) obj);
        }
        throw new EncoderException("Objects of type " + obj.getClass().getName() + " cannot be Percent encoded");
    }

    public PercentCodec(byte[] bArr, boolean z) {
        this.f104869a = new BitSet();
        this.f104871c = Integer.MAX_VALUE;
        this.f104872d = Integer.MIN_VALUE;
        this.f104870b = z;
        m65860h(bArr);
    }

    @Override // org.apache.commons.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            return decode((byte[]) obj);
        }
        throw new DecoderException("Objects of type " + obj.getClass().getName() + " cannot be Percent decoded");
    }
}
