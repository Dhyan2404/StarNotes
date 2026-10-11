package com.tencent.qimei.p091l;

import android.content.Context;
import androidx.annotation.NonNull;
import com.tencent.qimei.p078a.C16733a;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p092m.C16804e;
import com.tencent.qimei.p093n.C16806a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.l.f */
/* loaded from: classes10.dex */
public class C16798f {

    /* renamed from: a */
    public RandomAccessFile f93526a;

    /* renamed from: b */
    public FileChannel f93527b;

    /* renamed from: c */
    public JSONObject f93528c;

    /* renamed from: d */
    public MappedByteBuffer f93529d;

    /* renamed from: e */
    public long f93530e;

    /* renamed from: f */
    public Runnable f93531f;

    /* renamed from: g */
    public final Object f93532g = new Object();

    /* renamed from: h */
    public boolean f93533h;

    /* renamed from: i */
    public boolean f93534i;

    public C16798f(File file) throws IOException {
        byte[] bArr;
        this.f93528c = new JSONObject();
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.f93526a = randomAccessFile;
        this.f93527b = randomAccessFile.getChannel();
        long length = this.f93526a.length();
        this.f93530e = length;
        if (length <= 10) {
            this.f93534i = true;
            this.f93530e = 4L;
        }
        MappedByteBuffer map = this.f93527b.map(FileChannel.MapMode.READ_WRITE, 0L, this.f93530e);
        this.f93529d = map;
        map.rewind();
        if (this.f93534i) {
            this.f93529d.putInt(0, 1);
            if (this.f93531f == null) {
                this.f93531f = new RunnableC16796d(this);
            }
            AbstractC16769a.m59895a().mo59897a(new RunnableC16797e(this, this.f93531f));
            return;
        }
        MappedByteBuffer mappedByteBuffer = this.f93529d;
        int i = mappedByteBuffer.getInt(0);
        if (i <= 1 || i > 2097152 || mappedByteBuffer.capacity() <= 10 || mappedByteBuffer.capacity() < i + 10) {
            bArr = null;
        } else {
            mappedByteBuffer.position(10);
            bArr = new byte[i];
            mappedByteBuffer.get(bArr, 0, i);
        }
        if (bArr == null) {
            return;
        }
        try {
            byte[] m59963a = m59963a(bArr, "BEACONDEFAULTAES");
            if (m59963a == null && (m59963a = m59963a(bArr, C16775c.m59907j().m59909b())) == null) {
                m59963a = m59963a(bArr, "");
            }
            this.f93528c = new JSONObject(new String(m59963a, "ISO8859-1"));
        } catch (Exception e) {
            e.getMessage();
        }
        this.f93528c.toString();
    }

    /* renamed from: a */
    public static C16798f m59957a(Context context, String str) throws IOException {
        File file = new File(context.getFilesDir(), "beacon");
        if (!(!file.exists() ? file.mkdirs() : true)) {
            StringBuilder m59796a = C16733a.m59796a("mkdir ");
            m59796a.append(file.getName());
            m59796a.append(" exception!");
            C16804e.m59986a(m59796a.toString());
        }
        File file2 = new File(file, str + "V1");
        if (file2.exists()) {
            return new C16798f(file2);
        }
        return null;
    }

    /* renamed from: a */
    public final Object m59958a(@NonNull String str) {
        Object obj = null;
        try {
            synchronized (this.f93532g) {
                obj = this.f93528c.get(str);
            }
        } catch (Exception unused) {
        }
        return obj;
    }

    /* renamed from: a */
    public synchronized void m59960a() {
        try {
            this.f93528c = null;
            this.f93533h = true;
            this.f93529d.clear();
            this.f93526a.close();
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    public final void m59961a(long j) throws IOException {
        if (j > 2097152) {
            throw new IllegalArgumentException("file size to reach maximum!");
        }
        this.f93529d.rewind();
        this.f93529d = this.f93527b.map(FileChannel.MapMode.READ_WRITE, 0L, j);
    }

    /* renamed from: a */
    public final byte[] m59962a(byte[] bArr) throws Exception {
        return C16762a.m59878a(bArr, C16762a.m59869a("BEACONDEFAULTAES").getBytes(), 1);
    }

    /* renamed from: a */
    public synchronized <T> T m59959a(@NonNull String str, @NonNull T t) {
        if (this.f93533h) {
            return t;
        }
        Object m59958a = m59958a(str);
        if (m59958a != null) {
            t = (T) m59958a;
        }
        return t;
    }

    /* renamed from: a */
    public final byte[] m59963a(byte[] bArr, String str) {
        try {
            return C16762a.m59878a(bArr, C16762a.m59869a(str).getBytes(), 2);
        } catch (Throwable th) {
            C16806a.m59992a(th);
            return null;
        }
    }
}
