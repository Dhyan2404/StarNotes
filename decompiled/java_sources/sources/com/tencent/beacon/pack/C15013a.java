package com.tencent.beacon.pack;

import com.alibaba.fastjson2.JSONB;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.tencent.beacon.base.util.C14954c;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.tencent.beacon.pack.a */
/* loaded from: classes10.dex */
public final class C15013a {

    /* renamed from: a */
    protected String f93256a = TTFFont.CHARSET_GBK;

    /* renamed from: b */
    private ByteBuffer f93257b;

    /* renamed from: com.tencent.beacon.pack.a$a */
    /* loaded from: classes10.dex */
    public static class a {

        /* renamed from: a */
        public byte f93258a;

        /* renamed from: b */
        public int f93259b;
    }

    public C15013a() {
    }

    /* renamed from: a */
    public static int m59705a(a aVar, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        aVar.f93258a = (byte) (b & 15);
        int i = (b & JSONB.Constants.BC_INT32_NUM_MIN) >> 4;
        aVar.f93259b = i;
        if (i != 15) {
            return 1;
        }
        aVar.f93259b = byteBuffer.get() & 255;
        return 2;
    }

    /* renamed from: b */
    private int m59708b(a aVar) {
        return m59705a(aVar, this.f93257b.duplicate());
    }

    /* renamed from: b */
    private void m59710b(int i) {
        ByteBuffer byteBuffer = this.f93257b;
        byteBuffer.position(byteBuffer.position() + i);
    }

    public C15013a(byte[] bArr) {
        this.f93257b = ByteBuffer.wrap(bArr);
    }

    /* renamed from: b */
    private void m59709b() {
        a aVar = new a();
        m59725a(aVar);
        m59707a(aVar.f93258a);
    }

    /* renamed from: a */
    public void m59725a(a aVar) {
        m59705a(aVar, this.f93257b);
    }

    public C15013a(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.f93257b = wrap;
        wrap.position(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <T> T[] m59711b(T t, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        if (aVar.f93258a == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0) {
                T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), m59715a));
                for (int i2 = 0; i2 < m59715a; i2++) {
                    tArr[i2] = m59719a((C15013a) t, 0, true);
                }
                return tArr;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public void m59726a(byte[] bArr) {
        this.f93257b = ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    public boolean m59727a(int i) {
        try {
            a aVar = new a();
            while (true) {
                int m59708b = m59708b(aVar);
                if (aVar.f93258a == 11) {
                    return false;
                }
                int i2 = aVar.f93259b;
                if (i <= i2) {
                    return i == i2;
                }
                m59710b(m59708b);
                m59707a(aVar.f93258a);
            }
        } catch (BufferUnderflowException e) {
            C14954c.m59393a(e);
            return false;
        } catch (RuntimeException e2) {
            C14954c.m59393a(e2);
            return false;
        }
    }

    /* renamed from: a */
    public void m59724a() {
        a aVar = new a();
        do {
            m59725a(aVar);
            m59707a(aVar.f93258a);
        } while (aVar.f93258a != 11);
    }

    /* renamed from: a */
    private void m59707a(byte b) {
        int i = 0;
        switch (b) {
            case 0:
                m59710b(1);
                return;
            case 1:
                m59710b(2);
                return;
            case 2:
                m59710b(4);
                return;
            case 3:
                m59710b(8);
                return;
            case 4:
                m59710b(4);
                return;
            case 5:
                m59710b(8);
                return;
            case 6:
                int i2 = this.f93257b.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                m59710b(i2);
                return;
            case 7:
                m59710b(this.f93257b.getInt());
                return;
            case 8:
                int m59715a = m59715a(0, 0, true);
                while (i < m59715a * 2) {
                    m59709b();
                    i++;
                }
                return;
            case 9:
                int m59715a2 = m59715a(0, 0, true);
                while (i < m59715a2) {
                    m59709b();
                    i++;
                }
                return;
            case 10:
                m59724a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar = new a();
                m59725a(aVar);
                if (aVar.f93258a == 0) {
                    m59710b(m59715a(0, 0, true));
                    return;
                }
                throw new RuntimeException("skipField with invalid type, type value: " + ((int) b) + ", " + ((int) aVar.f93258a));
            default:
                throw new RuntimeException("invalid type.");
        }
    }

    /* renamed from: a */
    public boolean m59728a(boolean z, int i, boolean z2) {
        return m59712a((byte) 0, i, z2) != 0;
    }

    /* renamed from: a */
    public byte m59712a(byte b, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return b;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b2 = aVar.f93258a;
        if (b2 == 0) {
            return this.f93257b.get();
        }
        if (b2 == 12) {
            return (byte) 0;
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public short m59723a(short s, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return s;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b = aVar.f93258a;
        if (b == 0) {
            return this.f93257b.get();
        }
        if (b == 1) {
            return this.f93257b.getShort();
        }
        if (b == 12) {
            return (short) 0;
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public int m59715a(int i, int i2, boolean z) {
        if (!m59727a(i2)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return i;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b = aVar.f93258a;
        if (b == 0) {
            return this.f93257b.get();
        }
        if (b == 1) {
            return this.f93257b.getShort();
        }
        if (b == 2) {
            return this.f93257b.getInt();
        }
        if (b == 12) {
            return 0;
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public long m59717a(long j, int i, boolean z) {
        int i2;
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return j;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b = aVar.f93258a;
        if (b == 12) {
            return 0L;
        }
        if (b == 0) {
            i2 = this.f93257b.get();
        } else if (b == 1) {
            i2 = this.f93257b.getShort();
        } else {
            if (b != 2) {
                if (b == 3) {
                    return this.f93257b.getLong();
                }
                throw new RuntimeException("type mismatch.");
            }
            i2 = this.f93257b.getInt();
        }
        return i2;
    }

    /* renamed from: a */
    public float m59714a(float f, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return f;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b = aVar.f93258a;
        if (b == 4) {
            return this.f93257b.getFloat();
        }
        if (b == 12) {
            return 0.0f;
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public double m59713a(double d, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return d;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b = aVar.f93258a;
        if (b == 4) {
            return this.f93257b.getFloat();
        }
        if (b == 5) {
            return this.f93257b.getDouble();
        }
        if (b == 12) {
            return 0.0d;
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public boolean[] m59736a(boolean[] zArr, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        if (aVar.f93258a == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0) {
                boolean[] zArr2 = new boolean[m59715a];
                for (int i2 = 0; i2 < m59715a; i2++) {
                    zArr2[i2] = m59728a(zArr2[0], 0, true);
                }
                return zArr2;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public byte[] m59729a(byte[] bArr, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b = aVar.f93258a;
        if (b == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0 && m59715a <= this.f93257b.capacity()) {
                byte[] bArr2 = new byte[m59715a];
                for (int i2 = 0; i2 < m59715a; i2++) {
                    bArr2[i2] = m59712a(bArr2[0], 0, true);
                }
                return bArr2;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        if (b == 13) {
            a aVar2 = new a();
            m59725a(aVar2);
            if (aVar2.f93258a == 0) {
                int m59715a2 = m59715a(0, 0, true);
                if (m59715a2 >= 0 && m59715a2 <= this.f93257b.capacity()) {
                    byte[] bArr3 = new byte[m59715a2];
                    this.f93257b.get(bArr3);
                    return bArr3;
                }
                throw new RuntimeException("invalid size, tag: " + i + ", type: " + ((int) aVar.f93258a) + ", " + ((int) aVar2.f93258a) + ", size: " + m59715a2);
            }
            throw new RuntimeException("type mismatch, tag: " + i + ", type: " + ((int) aVar.f93258a) + ", " + ((int) aVar2.f93258a));
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public short[] m59735a(short[] sArr, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        if (aVar.f93258a == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0) {
                short[] sArr2 = new short[m59715a];
                for (int i2 = 0; i2 < m59715a; i2++) {
                    sArr2[i2] = m59723a(sArr2[0], 0, true);
                }
                return sArr2;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public int[] m59732a(int[] iArr, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        if (aVar.f93258a == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0) {
                int[] iArr2 = new int[m59715a];
                for (int i2 = 0; i2 < m59715a; i2++) {
                    iArr2[i2] = m59715a(iArr2[0], 0, true);
                }
                return iArr2;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public long[] m59733a(long[] jArr, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        if (aVar.f93258a == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0) {
                long[] jArr2 = new long[m59715a];
                for (int i2 = 0; i2 < m59715a; i2++) {
                    jArr2[i2] = m59717a(jArr2[0], 0, true);
                }
                return jArr2;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public float[] m59731a(float[] fArr, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        if (aVar.f93258a == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0) {
                float[] fArr2 = new float[m59715a];
                for (int i2 = 0; i2 < m59715a; i2++) {
                    fArr2[i2] = m59714a(fArr2[0], 0, true);
                }
                return fArr2;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public double[] m59730a(double[] dArr, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        if (aVar.f93258a == 9) {
            int m59715a = m59715a(0, 0, true);
            if (m59715a >= 0) {
                double[] dArr2 = new double[m59715a];
                for (int i2 = 0; i2 < m59715a; i2++) {
                    dArr2[i2] = m59713a(dArr2[0], 0, true);
                }
                return dArr2;
            }
            throw new RuntimeException("size invalid: " + m59715a);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public AbstractJceStruct m59718a(AbstractJceStruct abstractJceStruct, int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        try {
            AbstractJceStruct abstractJceStruct2 = (AbstractJceStruct) abstractJceStruct.getClass().newInstance();
            a aVar = new a();
            m59725a(aVar);
            if (aVar.f93258a == 10) {
                abstractJceStruct2.readFrom(this);
                m59724a();
                return abstractJceStruct2;
            }
            throw new RuntimeException("type mismatch.");
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> Object m59719a(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(m59712a((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(m59728a(false, i, z));
        }
        if (t instanceof Short) {
            return Short.valueOf(m59723a((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(m59715a(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(m59717a(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(m59714a(0.0f, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(m59713a(0.0d, i, z));
        }
        if (t instanceof String) {
            return m59720a(i, z);
        }
        if (t instanceof Map) {
            return m59721a((Map) t, i, z);
        }
        if (t instanceof List) {
            return m59722a((List) t, i, z);
        }
        if (t instanceof AbstractJceStruct) {
            return m59718a((AbstractJceStruct) t, i, z);
        }
        if (t.getClass().isArray()) {
            if (!(t instanceof byte[]) && !(t instanceof Byte[])) {
                if (t instanceof boolean[]) {
                    return m59736a((boolean[]) null, i, z);
                }
                if (t instanceof short[]) {
                    return m59735a((short[]) null, i, z);
                }
                if (t instanceof int[]) {
                    return m59732a((int[]) null, i, z);
                }
                if (t instanceof long[]) {
                    return m59733a((long[]) null, i, z);
                }
                if (t instanceof float[]) {
                    return m59731a((float[]) null, i, z);
                }
                if (t instanceof double[]) {
                    return m59730a((double[]) null, i, z);
                }
                return m59734a((Object[]) t, i, z);
            }
            return m59729a((byte[]) null, i, z);
        }
        throw new RuntimeException("read object error: unsupport type.");
    }

    /* renamed from: a */
    public String m59720a(int i, boolean z) {
        if (!m59727a(i)) {
            if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        m59725a(aVar);
        byte b = aVar.f93258a;
        if (b == 6) {
            int i2 = this.f93257b.get();
            if (i2 < 0) {
                i2 += 256;
            }
            byte[] bArr = new byte[i2];
            this.f93257b.get(bArr);
            try {
                return new String(bArr, this.f93256a);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr, Charset.forName("UTF-8"));
            }
        }
        if (b == 7) {
            int i3 = this.f93257b.getInt();
            if (i3 <= 104857600 && i3 >= 0 && i3 <= this.f93257b.capacity()) {
                byte[] bArr2 = new byte[i3];
                this.f93257b.get(bArr2);
                try {
                    return new String(bArr2, this.f93256a);
                } catch (UnsupportedEncodingException unused2) {
                    return new String(bArr2, Charset.forName("UTF-8"));
                }
            }
            throw new RuntimeException("String too long: " + i3);
        }
        throw new RuntimeException("type mismatch.");
    }

    /* renamed from: a */
    public <K, V> HashMap<K, V> m59721a(Map<K, V> map, int i, boolean z) {
        return (HashMap) m59706a(new HashMap(), map, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K, V> Map<K, V> m59706a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 != null && !map2.isEmpty()) {
            Map.Entry<K, V> next = map2.entrySet().iterator().next();
            K key = next.getKey();
            V value = next.getValue();
            if (m59727a(i)) {
                a aVar = new a();
                m59725a(aVar);
                if (aVar.f93258a == 8) {
                    int m59715a = m59715a(0, 0, true);
                    if (m59715a < 0) {
                        throw new RuntimeException("size invalid: " + m59715a);
                    }
                    for (int i2 = 0; i2 < m59715a; i2++) {
                        map.put(m59719a((C15013a) key, 0, true), m59719a((C15013a) value, 1, true));
                    }
                } else {
                    throw new RuntimeException("type mismatch.");
                }
            } else if (z) {
                throw new RuntimeException("require field not exist.");
            }
            return map;
        }
        return new HashMap();
    }

    /* renamed from: a */
    public <T> T[] m59734a(T[] tArr, int i, boolean z) {
        if (tArr != null && tArr.length != 0) {
            return (T[]) m59711b(tArr[0], i, z);
        }
        throw new RuntimeException("unable to get type of key and value.");
    }

    /* renamed from: a */
    public <T> List<T> m59722a(List<T> list, int i, boolean z) {
        if (list != null && !list.isEmpty()) {
            Object[] m59711b = m59711b(list.get(0), i, z);
            if (m59711b == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : m59711b) {
                arrayList.add(obj);
            }
            return arrayList;
        }
        return new ArrayList();
    }

    /* renamed from: a */
    public int m59716a(String str) {
        this.f93256a = str;
        return 0;
    }
}
