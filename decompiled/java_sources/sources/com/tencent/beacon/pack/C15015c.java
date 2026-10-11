package com.tencent.beacon.pack;

import com.onyx.android.sdk.base.data.font.TTFFont;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* renamed from: com.tencent.beacon.pack.c */
/* loaded from: classes10.dex */
public class C15015c {

    /* renamed from: a */
    private static HashMap<String, byte[]> f93264a;

    /* renamed from: b */
    public final RequestPacket f93265b = new RequestPacket();

    /* renamed from: c */
    public HashMap<String, byte[]> f93266c = new HashMap<>();

    /* renamed from: d */
    public String f93267d = TTFFont.CHARSET_GBK;

    /* renamed from: e */
    C15013a f93268e = new C15013a();

    static {
        HashMap<String, byte[]> hashMap = new HashMap<>();
        f93264a = hashMap;
        hashMap.put("", new byte[0]);
    }

    /* renamed from: a */
    public void m59766a(int i) {
        this.f93265b.iRequestId = i;
    }

    /* renamed from: b */
    public void m59770b(String str) {
        this.f93265b.sServantName = str;
    }

    /* renamed from: a */
    public void m59767a(String str) {
        this.f93265b.sFuncName = str;
    }

    /* renamed from: b */
    public <T> void m59771b(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t != null) {
            if (!(t instanceof Set)) {
                C15014b c15014b = new C15014b();
                c15014b.m59738a(this.f93267d);
                c15014b.m59747a(t, 0);
                this.f93266c.put(str, m59763a(c15014b.m59739a()));
                return;
            }
            throw new IllegalArgumentException("can not support Set");
        }
        throw new IllegalArgumentException("put value can not is null");
    }

    /* renamed from: a */
    public byte[] m59769a() {
        C15014b c15014b = new C15014b(0);
        c15014b.m59738a(this.f93267d);
        c15014b.m59750a((Map) this.f93266c, 0);
        RequestPacket requestPacket = this.f93265b;
        requestPacket.iVersion = (short) 3;
        requestPacket.sBuffer = m59763a(c15014b.m59739a());
        C15014b c15014b2 = new C15014b(0);
        c15014b2.m59738a(this.f93267d);
        this.f93265b.writeTo(c15014b2);
        byte[] m59763a = m59763a(c15014b2.m59739a());
        int length = m59763a.length + 4;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length).put(m59763a).flip();
        return allocate.array();
    }

    /* renamed from: b */
    private void m59764b() {
        C15013a c15013a = new C15013a(this.f93265b.sBuffer);
        c15013a.m59716a(this.f93267d);
        this.f93266c = c15013a.m59721a((Map) f93264a, 0, false);
    }

    /* renamed from: a */
    public void m59768a(byte[] bArr) {
        if (bArr.length >= 4) {
            try {
                C15013a c15013a = new C15013a(bArr, 4);
                c15013a.m59716a(this.f93267d);
                this.f93265b.readFrom(c15013a);
                m59764b();
                return;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        throw new IllegalArgumentException("decode package must include size head");
    }

    /* renamed from: a */
    public <T> T m59765a(String str, T t) throws Exception {
        if (!this.f93266c.containsKey(str)) {
            return null;
        }
        try {
            return (T) m59762a(this.f93266c.get(str), t);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }

    /* renamed from: a */
    private Object m59762a(byte[] bArr, Object obj) {
        this.f93268e.m59726a(bArr);
        this.f93268e.m59716a(this.f93267d);
        return this.f93268e.m59719a((C15013a) obj, 0, true);
    }

    /* renamed from: a */
    private byte[] m59763a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        byte[] bArr = new byte[position];
        System.arraycopy(byteBuffer.array(), 0, bArr, 0, position);
        return bArr;
    }
}
