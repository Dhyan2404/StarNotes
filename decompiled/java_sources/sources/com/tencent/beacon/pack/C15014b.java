package com.tencent.beacon.pack;

import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.base.ParserBase;
import com.onyx.android.sdk.base.data.font.TTFFont;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.tencent.beacon.pack.b */
/* loaded from: classes10.dex */
public class C15014b {

    /* renamed from: a */
    public static final byte[] f93260a = new byte[0];

    /* renamed from: b */
    private static final char[] f93261b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: c */
    protected String f93262c;

    /* renamed from: d */
    private ByteBuffer f93263d;

    public C15014b(int i) {
        this.f93262c = TTFFont.CHARSET_GBK;
        this.f93263d = ByteBuffer.allocate(i);
    }

    /* renamed from: a */
    public ByteBuffer m59739a() {
        return this.f93263d;
    }

    /* renamed from: b */
    public byte[] m59761b() {
        byte[] bArr = new byte[this.f93263d.position()];
        System.arraycopy(this.f93263d.array(), 0, bArr, 0, this.f93263d.position());
        return bArr;
    }

    /* renamed from: a */
    public void m59743a(int i) {
        if (this.f93263d.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.f93263d.capacity() + i) * 2);
            allocate.put(this.f93263d.array(), 0, this.f93263d.position());
            this.f93263d = allocate;
        }
    }

    /* renamed from: b */
    public void m59760b(byte b, int i) {
        if (i < 15) {
            this.f93263d.put((byte) (b | (i << 4)));
        } else if (i < 256) {
            this.f93263d.put((byte) (b | JSONB.Constants.BC_INT32_NUM_MIN));
            this.f93263d.put((byte) i);
        } else {
            throw new RuntimeException("tag is too large: " + i);
        }
    }

    public C15014b() {
        this(128);
    }

    /* renamed from: a */
    public void m59752a(boolean z, int i) {
        m59740a(z ? (byte) 1 : (byte) 0, i);
    }

    /* renamed from: a */
    public void m59740a(byte b, int i) {
        m59743a(3);
        if (b == 0) {
            m59760b((byte) 12, i);
        } else {
            m59760b((byte) 0, i);
            this.f93263d.put(b);
        }
    }

    /* renamed from: a */
    public void m59751a(short s, int i) {
        m59743a(4);
        if (s >= -128 && s <= 127) {
            m59740a((byte) s, i);
        } else {
            m59760b((byte) 1, i);
            this.f93263d.putShort(s);
        }
    }

    /* renamed from: a */
    public void m59744a(int i, int i2) {
        m59743a(6);
        if (i >= -32768 && i <= 32767) {
            m59751a((short) i, i2);
        } else {
            m59760b((byte) 2, i2);
            this.f93263d.putInt(i);
        }
    }

    /* renamed from: a */
    public void m59745a(long j, int i) {
        m59743a(10);
        if (j >= ParserBase.f21225q && j <= 2147483647L) {
            m59744a((int) j, i);
        } else {
            m59760b((byte) 3, i);
            this.f93263d.putLong(j);
        }
    }

    /* renamed from: a */
    public void m59742a(float f, int i) {
        m59743a(6);
        m59760b((byte) 4, i);
        this.f93263d.putFloat(f);
    }

    /* renamed from: a */
    public void m59741a(double d, int i) {
        m59743a(10);
        m59760b((byte) 5, i);
        this.f93263d.putDouble(d);
    }

    /* renamed from: a */
    public void m59748a(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f93262c);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes(Charset.forName("UTF-8"));
        }
        m59743a(bytes.length + 10);
        if (bytes.length > 255) {
            m59760b((byte) 7, i);
            this.f93263d.putInt(bytes.length);
            this.f93263d.put(bytes);
        } else {
            m59760b((byte) 6, i);
            this.f93263d.put((byte) bytes.length);
            this.f93263d.put(bytes);
        }
    }

    /* renamed from: a */
    public <K, V> void m59750a(Map<K, V> map, int i) {
        m59743a(8);
        m59760b((byte) 8, i);
        m59744a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                m59747a(entry.getKey(), 0);
                m59747a(entry.getValue(), 1);
            }
        }
    }

    /* renamed from: a */
    public void m59759a(boolean[] zArr, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(zArr.length, 0);
        for (boolean z : zArr) {
            m59752a(z, 0);
        }
    }

    /* renamed from: a */
    public void m59753a(byte[] bArr, int i) {
        m59743a(bArr.length + 8);
        m59760b((byte) 13, i);
        m59760b((byte) 0, 0);
        m59744a(bArr.length, 0);
        this.f93263d.put(bArr);
    }

    /* renamed from: a */
    public void m59758a(short[] sArr, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(sArr.length, 0);
        for (short s : sArr) {
            m59751a(s, 0);
        }
    }

    /* renamed from: a */
    public void m59756a(int[] iArr, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(iArr.length, 0);
        for (int i2 : iArr) {
            m59744a(i2, 0);
        }
    }

    /* renamed from: a */
    public void m59757a(long[] jArr, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(jArr.length, 0);
        for (long j : jArr) {
            m59745a(j, 0);
        }
    }

    /* renamed from: a */
    public void m59755a(float[] fArr, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(fArr.length, 0);
        for (float f : fArr) {
            m59742a(f, 0);
        }
    }

    /* renamed from: a */
    public void m59754a(double[] dArr, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(dArr.length, 0);
        for (double d : dArr) {
            m59741a(d, 0);
        }
    }

    /* renamed from: a */
    public <T> void m59749a(Collection<T> collection, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            Iterator<T> it2 = collection.iterator();
            while (it2.hasNext()) {
                m59747a(it2.next(), 0);
            }
        }
    }

    /* renamed from: a */
    public void m59746a(AbstractJceStruct abstractJceStruct, int i) {
        m59743a(2);
        m59760b((byte) 10, i);
        abstractJceStruct.writeTo(this);
        m59743a(2);
        m59760b((byte) 11, 0);
    }

    /* renamed from: a */
    public void m59747a(Object obj, int i) {
        if (obj == null) {
            obj = "";
        }
        if (obj instanceof Byte) {
            m59740a(((Byte) obj).byteValue(), i);
            return;
        }
        if (obj instanceof Boolean) {
            m59752a(((Boolean) obj).booleanValue(), i);
            return;
        }
        if (obj instanceof Short) {
            m59751a(((Short) obj).shortValue(), i);
            return;
        }
        if (obj instanceof Integer) {
            m59744a(((Integer) obj).intValue(), i);
            return;
        }
        if (obj instanceof Long) {
            m59745a(((Long) obj).longValue(), i);
            return;
        }
        if (obj instanceof Float) {
            m59742a(((Float) obj).floatValue(), i);
            return;
        }
        if (obj instanceof Double) {
            m59741a(((Double) obj).doubleValue(), i);
            return;
        }
        if (obj instanceof String) {
            m59748a((String) obj, i);
            return;
        }
        if (obj instanceof Map) {
            m59750a((Map) obj, i);
            return;
        }
        if (obj instanceof List) {
            m59749a((Collection) obj, i);
            return;
        }
        if (obj instanceof AbstractJceStruct) {
            m59746a((AbstractJceStruct) obj, i);
            return;
        }
        if (obj instanceof byte[]) {
            m59753a((byte[]) obj, i);
            return;
        }
        if (obj instanceof boolean[]) {
            m59759a((boolean[]) obj, i);
            return;
        }
        if (obj instanceof short[]) {
            m59758a((short[]) obj, i);
            return;
        }
        if (obj instanceof int[]) {
            m59756a((int[]) obj, i);
            return;
        }
        if (obj instanceof long[]) {
            m59757a((long[]) obj, i);
            return;
        }
        if (obj instanceof float[]) {
            m59755a((float[]) obj, i);
            return;
        }
        if (obj instanceof double[]) {
            m59754a((double[]) obj, i);
            return;
        }
        if (obj.getClass().isArray()) {
            m59737a((Object[]) obj, i);
        } else {
            if (obj instanceof Collection) {
                m59749a((Collection) obj, i);
                return;
            }
            throw new RuntimeException("write object error: unsupport type. " + obj.getClass());
        }
    }

    /* renamed from: a */
    private void m59737a(Object[] objArr, int i) {
        m59743a(8);
        m59760b((byte) 9, i);
        m59744a(objArr.length, 0);
        for (Object obj : objArr) {
            m59747a(obj, 0);
        }
    }

    /* renamed from: a */
    public int m59738a(String str) {
        this.f93262c = str;
        return 0;
    }
}
