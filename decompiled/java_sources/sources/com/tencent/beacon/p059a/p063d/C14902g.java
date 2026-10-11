package com.tencent.beacon.p059a.p063d;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.beacon.base.net.p066b.C14934c;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.base.util.C14960i;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14891f;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.beacon.a.d.g */
/* loaded from: classes10.dex */
public class C14902g {

    /* renamed from: b */
    private FileChannel f92650b;

    /* renamed from: d */
    private MappedByteBuffer f92652d;

    /* renamed from: e */
    private long f92653e;

    /* renamed from: f */
    private Runnable f92654f;

    /* renamed from: g */
    private boolean f92655g;

    /* renamed from: h */
    private boolean f92656h;

    /* renamed from: a */
    private final Object f92649a = new Object();

    /* renamed from: c */
    private JSONObject f92651c = new JSONObject();

    private C14902g(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.f92650b = randomAccessFile.getChannel();
        this.f92653e = randomAccessFile.length();
        C14954c.m59391a("[properties]", "file size: " + this.f92653e, new Object[0]);
        m59106e();
    }

    /* renamed from: c */
    private Object m59101c(@NonNull String str) {
        Object obj = null;
        try {
            synchronized (this.f92649a) {
                try {
                    Object obj2 = this.f92651c.get(str);
                    try {
                        return obj2;
                    } catch (Throwable th) {
                        obj = obj2;
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            throw th;
        } catch (Exception unused) {
            C14954c.m59391a("[properties]", "current jsonObject not exist key: " + str, new Object[0]);
            return obj;
        }
    }

    /* renamed from: d */
    private Runnable m59103d() {
        if (this.f92654f == null) {
            this.f92654f = new RunnableC14900e(this);
        }
        return this.f92654f;
    }

    /* renamed from: e */
    private void m59106e() throws IOException {
        if (this.f92653e <= 10) {
            this.f92656h = true;
            this.f92653e = 4L;
        }
        MappedByteBuffer map = this.f92650b.map(FileChannel.MapMode.READ_WRITE, 0L, this.f92653e);
        this.f92652d = map;
        map.rewind();
        if (this.f92656h) {
            this.f92652d.putInt(0, 1);
            m59093a(m59103d());
            return;
        }
        byte[] m59094a = m59094a(this.f92652d);
        if (m59094a == null) {
            return;
        }
        try {
            this.f92651c = new JSONObject(new String(m59099b(m59094a), "ISO8859-1"));
        } catch (Exception e) {
            C14954c.m59391a("[properties]", "init error" + e.getMessage(), new Object[0]);
            C14882j.m58961e().m58954a("504", "[properties] init error! msg: " + e.getMessage() + ". file size: " + this.f92653e, e);
        }
        C14954c.m59391a("[properties]", "init json: " + this.f92651c.toString(), new Object[0]);
    }

    /* renamed from: a */
    public static C14902g m59090a(Context context, String str) throws IOException {
        File file = new File(context.getFilesDir(), "beacon");
        if (!(!file.exists() ? file.mkdirs() : true)) {
            C14959h.m59413a("mkdir " + file.getName() + " exception!");
        }
        return new C14902g(new File(file, str + "V1"));
    }

    /* renamed from: b */
    public static byte[] m59099b(byte[] bArr) {
        byte[] m59096a = m59096a(bArr, "BEACONDEFAULTAES");
        if (m59096a != null) {
            return m59096a;
        }
        C14882j.m58961e().m58953a("517", "default aesKey unEncryption failed");
        byte[] m59096a2 = m59096a(bArr, C14891f.m59045e().m59046a());
        return m59096a2 != null ? m59096a2 : m59096a(bArr, "");
    }

    /* renamed from: c */
    private boolean m59102c() {
        if (!this.f92655g) {
            return false;
        }
        C14954c.m59391a("[properties]", "File is close!", new Object[0]);
        return true;
    }

    /* renamed from: b */
    public synchronized void m59113b(@NonNull String str, @NonNull Object obj) {
        Object m59101c;
        if (m59102c()) {
            return;
        }
        try {
            m59101c = m59101c(str);
        } catch (Exception e) {
            C14882j.m58961e().m58954a("504", "[properties] JSON put error!", e);
            C14954c.m59395b("[properties] JSON put error!" + e.getMessage(), new Object[0]);
        }
        if (m59101c == null || !m59101c.equals(obj)) {
            if (obj instanceof String) {
                if (TextUtils.isEmpty((String) obj)) {
                    return;
                }
                if (!C14960i.m59417a((String) obj)) {
                    C14954c.m59395b("[properties] JSON put value not english ! !", new Object[0]);
                    return;
                }
            }
            synchronized (this.f92649a) {
                this.f92651c.put(str, obj);
            }
            m59093a(m59103d());
        }
    }

    /* renamed from: a */
    private static byte[] m59096a(byte[] bArr, String str) {
        try {
            return C14934c.m59288a(3, str, bArr);
        } catch (Throwable th) {
            C14954c.m59393a(th);
            C14882j.m58961e().m58954a("513", "unEncrypt error: key=" + str, th);
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m59095a(byte[] bArr) throws Exception {
        return C14934c.m59291b(3, "BEACONDEFAULTAES", bArr);
    }

    /* renamed from: a */
    private byte[] m59094a(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt(0);
        if (i <= 1 || i > 2097152 || byteBuffer.capacity() <= 10) {
            return null;
        }
        byteBuffer.position(10);
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr, 0, i);
        return bArr;
    }

    /* renamed from: a */
    public synchronized <T> T m59107a(@NonNull String str, @NonNull T t) {
        if (m59102c()) {
            return t;
        }
        Object m59101c = m59101c(str);
        if (m59101c != null) {
            t = (T) m59101c;
        }
        return t;
    }

    /* renamed from: b */
    public synchronized <T> void m59114b(@NonNull String str, @NonNull Set<T> set) {
        if (m59102c()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            Iterator<T> it2 = set.iterator();
            for (int i = 0; i < set.size(); i++) {
                if (it2.hasNext()) {
                    jSONObject.put(String.valueOf(i), it2.next());
                }
            }
            m59113b(str, jSONObject);
        } catch (JSONException e) {
            C14954c.m59393a(e);
            C14882j.m58961e().m58954a("504", "[properties] JSON put set error!", e);
        }
    }

    /* renamed from: a */
    public synchronized <T> Set<T> m59108a(@NonNull String str, @Nullable Set<T> set) {
        JSONObject jSONObject;
        if (m59102c()) {
            return set;
        }
        try {
            HashSet hashSet = new HashSet();
            synchronized (this.f92649a) {
                jSONObject = this.f92651c.getJSONObject(str);
            }
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    hashSet.add(jSONObject.get(keys.next()));
                }
            }
            if (!hashSet.isEmpty()) {
                set = hashSet;
            }
        } catch (JSONException e) {
            C14882j.m58961e().m58954a("504", "[properties] JSON getSet error!", e);
            C14954c.m59395b("[properties] JSON get error!" + e.getMessage(), new Object[0]);
        }
        return set;
    }

    /* renamed from: b */
    public synchronized void m59112b(String str) {
        synchronized (this.f92649a) {
            this.f92651c.remove(str);
        }
        m59093a(m59103d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m59092a(long j) throws IOException {
        if (j <= 2097152) {
            this.f92652d.rewind();
            this.f92652d = this.f92650b.map(FileChannel.MapMode.READ_WRITE, 0L, j);
            return;
        }
        throw new IllegalArgumentException("file size to reach maximum!");
    }

    /* renamed from: b */
    public Map<String, ?> m59111b() {
        synchronized (this.f92649a) {
            JSONObject jSONObject = this.f92651c;
            if (jSONObject == null) {
                return null;
            }
            Iterator<String> keys = jSONObject.keys();
            HashMap hashMap = new HashMap();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    hashMap.put(next, this.f92651c.get(next));
                } catch (JSONException e) {
                    C14954c.m59393a(e);
                }
            }
            return hashMap;
        }
    }

    /* renamed from: a */
    private void m59093a(Runnable runnable) {
        AbstractC14874b.m58931a().mo58941a(new RunnableC14901f(this, runnable));
    }

    /* renamed from: a */
    public synchronized void m59109a() {
        this.f92651c = new JSONObject();
        m59093a(m59103d());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
    
        if (r2 != null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        if (r2.hasNext() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r3.equals(r2.next()) == false) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m59110a(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.Object r0 = r2.f92649a
            monitor-enter(r0)
            org.json.JSONObject r2 = r2.f92651c     // Catch: java.lang.Throwable -> L21
            java.util.Iterator r2 = r2.keys()     // Catch: java.lang.Throwable -> L21
            if (r2 == 0) goto L1e
        Lb:
            boolean r1 = r2.hasNext()     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r2.next()     // Catch: java.lang.Throwable -> L21
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto Lb
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            r2 = 1
            return r2
        L1e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            r2 = 0
            return r2
        L21:
            r2 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.p059a.p063d.C14902g.m59110a(java.lang.String):boolean");
    }
}
