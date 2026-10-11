package com.blankj.utilcode.util;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import com.blankj.utilcode.constant.CacheConstants;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.FilenameFilter;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class CacheDiskUtils implements CacheConstants {

    /* renamed from: f */
    public static final long f13656f = Long.MAX_VALUE;

    /* renamed from: g */
    public static final int f13657g = Integer.MAX_VALUE;

    /* renamed from: h */
    public static final String f13658h = "cdu_";

    /* renamed from: i */
    public static final String f13659i = "by_";

    /* renamed from: j */
    public static final String f13660j = "st_";

    /* renamed from: k */
    public static final String f13661k = "jo_";

    /* renamed from: l */
    public static final String f13662l = "ja_";

    /* renamed from: m */
    public static final String f13663m = "bi_";

    /* renamed from: n */
    public static final String f13664n = "dr_";

    /* renamed from: o */
    public static final String f13665o = "pa_";

    /* renamed from: p */
    public static final String f13666p = "se_";

    /* renamed from: q */
    public static final Map<String, CacheDiskUtils> f13667q = new HashMap();

    /* renamed from: a */
    public final String f13668a;

    /* renamed from: b */
    public final File f13669b;

    /* renamed from: c */
    public final long f13670c;

    /* renamed from: d */
    public final int f13671d;

    /* renamed from: e */
    public C1803c f13672e;

    /* renamed from: com.blankj.utilcode.util.CacheDiskUtils$b */
    /* loaded from: classes3.dex */
    public static final class C1802b {

        /* renamed from: a */
        public static final int f13673a = 14;

        /* renamed from: d */
        public static byte[] m8010d(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + CloudStorageConstants.OPERATION_GREATER + i2);
        }

        /* renamed from: e */
        public static String m8011e(int i) {
            return String.format(Locale.getDefault(), "_$%010d$_", Long.valueOf((System.currentTimeMillis() / 1000) + i));
        }

        /* renamed from: f */
        public static byte[] m8012f(byte[] bArr) {
            return m8014h(bArr) ? m8010d(bArr, 14, bArr.length) : bArr;
        }

        /* renamed from: g */
        public static long m8013g(byte[] bArr) {
            if (m8014h(bArr)) {
                try {
                    return Long.parseLong(new String(m8010d(bArr, 2, 12))) * 1000;
                } catch (NumberFormatException unused) {
                }
            }
            return -1L;
        }

        /* renamed from: h */
        public static boolean m8014h(byte[] bArr) {
            return bArr != null && bArr.length >= 14 && bArr[0] == 95 && bArr[1] == 36 && bArr[12] == 36 && bArr[13] == 95;
        }

        /* renamed from: i */
        public static boolean m8015i(byte[] bArr) {
            long m8013g = m8013g(bArr);
            return m8013g != -1 && System.currentTimeMillis() > m8013g;
        }

        /* renamed from: j */
        public static byte[] m8016j(int i, byte[] bArr) {
            byte[] bytes = m8011e(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }
    }

    /* renamed from: com.blankj.utilcode.util.CacheDiskUtils$c */
    /* loaded from: classes3.dex */
    public static final class C1803c {

        /* renamed from: a */
        public final AtomicLong f13674a;

        /* renamed from: b */
        public final AtomicInteger f13675b;

        /* renamed from: c */
        public final long f13676c;

        /* renamed from: d */
        public final int f13677d;

        /* renamed from: e */
        public final Map<File, Long> f13678e;

        /* renamed from: f */
        public final File f13679f;

        /* renamed from: g */
        public final Thread f13680g;

        /* renamed from: com.blankj.utilcode.util.CacheDiskUtils$c$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ File f13681e;

            /* renamed from: com.blankj.utilcode.util.CacheDiskUtils$c$a$a, reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C20571a implements FilenameFilter {
                public C20571a() {
                }

                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return str.startsWith(CacheDiskUtils.f13658h);
                }
            }

            public a(File file) {
                this.f13681e = file;
            }

            @Override // java.lang.Runnable
            public void run() {
                File[] listFiles = this.f13681e.listFiles(new C20571a());
                if (listFiles != null) {
                    int i = 0;
                    int i2 = 0;
                    for (File file : listFiles) {
                        i = (int) (i + file.length());
                        i2++;
                        C1803c.this.f13678e.put(file, Long.valueOf(file.lastModified()));
                    }
                    C1803c.this.f13674a.getAndAdd(i);
                    C1803c.this.f13675b.getAndAdd(i2);
                }
            }
        }

        /* renamed from: com.blankj.utilcode.util.CacheDiskUtils$c$b */
        /* loaded from: classes3.dex */
        public class b implements FilenameFilter {
            public b() {
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.startsWith(CacheDiskUtils.f13658h);
            }
        }

        /* renamed from: l */
        public final boolean m8028l() {
            File[] listFiles = this.f13679f.listFiles(new b());
            boolean z = true;
            if (listFiles != null && listFiles.length > 0) {
                for (File file : listFiles) {
                    if (file.delete()) {
                        this.f13674a.addAndGet(-file.length());
                        this.f13675b.addAndGet(-1);
                        this.f13678e.remove(file);
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    this.f13678e.clear();
                    this.f13674a.set(0L);
                    this.f13675b.set(0);
                }
            }
            return z;
        }

        /* renamed from: m */
        public final int m8029m() {
            m8038v();
            return this.f13675b.get();
        }

        /* renamed from: n */
        public final String m8030n(String str) {
            return CacheDiskUtils.f13658h + str.substring(0, 3) + str.substring(3).hashCode();
        }

        /* renamed from: o */
        public final long m8031o() {
            m8038v();
            return this.f13674a.get();
        }

        /* renamed from: p */
        public final File m8032p(String str) {
            m8038v();
            File file = new File(this.f13679f, m8030n(str));
            if (file.exists()) {
                this.f13675b.addAndGet(-1);
                this.f13674a.addAndGet(-file.length());
            }
            return file;
        }

        /* renamed from: q */
        public final File m8033q(String str) {
            File file = new File(this.f13679f, m8030n(str));
            if (file.exists()) {
                return file;
            }
            return null;
        }

        /* renamed from: r */
        public final void m8034r(File file) {
            this.f13675b.addAndGet(1);
            this.f13674a.addAndGet(file.length());
            while (true) {
                if (this.f13675b.get() <= this.f13677d && this.f13674a.get() <= this.f13676c) {
                    return;
                }
                this.f13674a.addAndGet(-m8036t());
                this.f13675b.addAndGet(-1);
            }
        }

        /* renamed from: s */
        public final boolean m8035s(String str) {
            File m8033q = m8033q(str);
            if (m8033q == null) {
                return true;
            }
            if (!m8033q.delete()) {
                return false;
            }
            this.f13674a.addAndGet(-m8033q.length());
            this.f13675b.addAndGet(-1);
            this.f13678e.remove(m8033q);
            return true;
        }

        /* renamed from: t */
        public final long m8036t() {
            File file;
            if (this.f13678e.isEmpty()) {
                return 0L;
            }
            Long l = Long.MAX_VALUE;
            Set<Map.Entry<File, Long>> entrySet = this.f13678e.entrySet();
            synchronized (this.f13678e) {
                file = null;
                for (Map.Entry<File, Long> entry : entrySet) {
                    Long value = entry.getValue();
                    if (value.longValue() < l.longValue()) {
                        file = entry.getKey();
                        l = value;
                    }
                }
            }
            if (file == null) {
                return 0L;
            }
            long length = file.length();
            if (!file.delete()) {
                return 0L;
            }
            this.f13678e.remove(file);
            return length;
        }

        /* renamed from: u */
        public final void m8037u(File file) {
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.f13678e.put(file, valueOf);
        }

        /* renamed from: v */
        public final void m8038v() {
            try {
                this.f13680g.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        public C1803c(File file, long j, int i) {
            this.f13678e = Collections.synchronizedMap(new HashMap());
            this.f13679f = file;
            this.f13676c = j;
            this.f13677d = i;
            this.f13674a = new AtomicLong();
            this.f13675b = new AtomicInteger();
            Thread thread = new Thread(new a(file));
            this.f13680g = thread;
            thread.start();
        }
    }

    public CacheDiskUtils(String str, File file, long j, int i) {
        this.f13668a = str;
        this.f13669b = file;
        this.f13670c = j;
        this.f13671d = i;
    }

    public static CacheDiskUtils getInstance() {
        return getInstance("", Long.MAX_VALUE, Integer.MAX_VALUE);
    }

    /* renamed from: a */
    public final C1803c m8003a() {
        if (this.f13669b.exists()) {
            if (this.f13672e == null) {
                this.f13672e = new C1803c(this.f13669b, this.f13670c, this.f13671d);
            }
        } else if (this.f13669b.mkdirs()) {
            this.f13672e = new C1803c(this.f13669b, this.f13670c, this.f13671d);
        } else {
            Log.e("CacheDiskUtils", "can't make dirs in " + this.f13669b.getAbsolutePath());
        }
        return this.f13672e;
    }

    /* renamed from: b */
    public final byte[] m8004b(@NonNull String str) {
        return m8005c(str, null);
    }

    /* renamed from: c */
    public final byte[] m8005c(@NonNull String str, byte[] bArr) {
        File m8033q;
        C1803c m8003a = m8003a();
        if (m8003a == null || (m8033q = m8003a.m8033q(str)) == null) {
            return bArr;
        }
        byte[] m8462P0 = C1887b.m8462P0(m8033q);
        if (C1802b.m8015i(m8462P0)) {
            m8003a.m8035s(str);
            return bArr;
        }
        m8003a.m8037u(m8033q);
        return C1802b.m8012f(m8462P0);
    }

    public boolean clear() {
        C1803c m8003a = m8003a();
        if (m8003a == null) {
            return true;
        }
        return m8003a.m8028l();
    }

    /* renamed from: d */
    public final void m8006d(String str, byte[] bArr, int i) {
        C1803c m8003a;
        if (bArr == null || (m8003a = m8003a()) == null) {
            return;
        }
        if (i >= 0) {
            bArr = C1802b.m8016j(i, bArr);
        }
        File m8032p = m8003a.m8032p(str);
        C1887b.m8506h1(m8032p, bArr);
        m8003a.m8037u(m8032p);
        m8003a.m8034r(m8032p);
    }

    public Bitmap getBitmap(@NonNull String str) {
        return getBitmap(str, null);
    }

    public byte[] getBytes(@NonNull String str) {
        return getBytes(str, null);
    }

    public int getCacheCount() {
        C1803c m8003a = m8003a();
        if (m8003a == null) {
            return 0;
        }
        return m8003a.m8029m();
    }

    public long getCacheSize() {
        C1803c m8003a = m8003a();
        if (m8003a == null) {
            return 0L;
        }
        return m8003a.m8031o();
    }

    public Drawable getDrawable(@NonNull String str) {
        return getDrawable(str, null);
    }

    public JSONArray getJSONArray(@NonNull String str) {
        return getJSONArray(str, null);
    }

    public JSONObject getJSONObject(@NonNull String str) {
        return getJSONObject(str, null);
    }

    public <T> T getParcelable(@NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return (T) getParcelable(str, creator, null);
    }

    public Object getSerializable(@NonNull String str) {
        return getSerializable(str, null);
    }

    public String getString(@NonNull String str) {
        return getString(str, null);
    }

    public void put(@NonNull String str, byte[] bArr) {
        put(str, bArr, -1);
    }

    public boolean remove(@NonNull String str) {
        C1803c m8003a = m8003a();
        if (m8003a == null) {
            return true;
        }
        if (m8003a.m8035s(f13659i + str)) {
            if (m8003a.m8035s(f13660j + str)) {
                if (m8003a.m8035s(f13661k + str)) {
                    if (m8003a.m8035s(f13662l + str)) {
                        if (m8003a.m8035s(f13663m + str)) {
                            if (m8003a.m8035s(f13664n + str)) {
                                if (m8003a.m8035s(f13665o + str)) {
                                    if (m8003a.m8035s(f13666p + str)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public String toString() {
        return this.f13668a + "@" + Integer.toHexString(hashCode());
    }

    public static CacheDiskUtils getInstance(String str) {
        return getInstance(str, Long.MAX_VALUE, Integer.MAX_VALUE);
    }

    public Bitmap getBitmap(@NonNull String str, Bitmap bitmap) {
        byte[] m8004b = m8004b(f13663m + str);
        return m8004b == null ? bitmap : C1887b.m8510j(m8004b);
    }

    public byte[] getBytes(@NonNull String str, byte[] bArr) {
        return m8005c(f13659i + str, bArr);
    }

    public Drawable getDrawable(@NonNull String str, Drawable drawable) {
        byte[] m8004b = m8004b(f13664n + str);
        return m8004b == null ? drawable : C1887b.m8513k(m8004b);
    }

    public JSONArray getJSONArray(@NonNull String str, JSONArray jSONArray) {
        byte[] m8004b = m8004b(f13662l + str);
        return m8004b == null ? jSONArray : C1887b.m8517m(m8004b);
    }

    public JSONObject getJSONObject(@NonNull String str, JSONObject jSONObject) {
        byte[] m8004b = m8004b(f13661k + str);
        return m8004b == null ? jSONObject : C1887b.m8519n(m8004b);
    }

    public <T> T getParcelable(@NonNull String str, @NonNull Parcelable.Creator<T> creator, T t) {
        byte[] m8004b = m8004b(f13665o + str);
        return m8004b == null ? t : (T) C1887b.m8523p(m8004b, creator);
    }

    public Object getSerializable(@NonNull String str, Object obj) {
        byte[] m8004b = m8004b(f13666p + str);
        return m8004b == null ? obj : C1887b.m8521o(m8004b);
    }

    public String getString(@NonNull String str, String str2) {
        byte[] m8004b = m8004b(f13660j + str);
        return m8004b == null ? str2 : C1887b.m8525q(m8004b);
    }

    public void put(@NonNull String str, byte[] bArr, int i) {
        m8006d(f13659i + str, bArr, i);
    }

    public static CacheDiskUtils getInstance(long j, int i) {
        return getInstance("", j, i);
    }

    public void put(@NonNull String str, String str2) {
        put(str, str2, -1);
    }

    public static CacheDiskUtils getInstance(String str, long j, int i) {
        if (C1887b.m8438D0(str)) {
            str = "cacheUtils";
        }
        return getInstance(new File(Utils.getApp().getCacheDir(), str), j, i);
    }

    public void put(@NonNull String str, String str2, int i) {
        m8006d(f13660j + str, C1887b.m8485a1(str2), i);
    }

    public void put(@NonNull String str, JSONObject jSONObject) {
        put(str, jSONObject, -1);
    }

    public void put(@NonNull String str, JSONObject jSONObject, int i) {
        m8006d(f13661k + str, C1887b.m8444G0(jSONObject), i);
    }

    public static CacheDiskUtils getInstance(@NonNull File file) {
        return getInstance(file, Long.MAX_VALUE, Integer.MAX_VALUE);
    }

    public void put(@NonNull String str, JSONArray jSONArray) {
        put(str, jSONArray, -1);
    }

    public static CacheDiskUtils getInstance(@NonNull File file, long j, int i) {
        String str = file.getAbsoluteFile() + "_" + j + "_" + i;
        Map<String, CacheDiskUtils> map = f13667q;
        CacheDiskUtils cacheDiskUtils = map.get(str);
        if (cacheDiskUtils == null) {
            synchronized (CacheDiskUtils.class) {
                cacheDiskUtils = map.get(str);
                if (cacheDiskUtils == null) {
                    CacheDiskUtils cacheDiskUtils2 = new CacheDiskUtils(str, file, j, i);
                    map.put(str, cacheDiskUtils2);
                    cacheDiskUtils = cacheDiskUtils2;
                }
            }
        }
        return cacheDiskUtils;
    }

    public void put(@NonNull String str, JSONArray jSONArray, int i) {
        m8006d(f13662l + str, C1887b.m8442F0(jSONArray), i);
    }

    public void put(@NonNull String str, Bitmap bitmap) {
        put(str, bitmap, -1);
    }

    public void put(@NonNull String str, Bitmap bitmap, int i) {
        m8006d(f13663m + str, C1887b.m8498f(bitmap), i);
    }

    public void put(@NonNull String str, Drawable drawable) {
        put(str, drawable, -1);
    }

    public void put(@NonNull String str, Drawable drawable, int i) {
        m8006d(f13664n + str, C1887b.m8541y(drawable), i);
    }

    public void put(@NonNull String str, Parcelable parcelable) {
        put(str, parcelable, -1);
    }

    public void put(@NonNull String str, Parcelable parcelable, int i) {
        m8006d(f13665o + str, C1887b.m8452K0(parcelable), i);
    }

    public void put(@NonNull String str, Serializable serializable) {
        put(str, serializable, -1);
    }

    public void put(@NonNull String str, Serializable serializable, int i) {
        m8006d(f13666p + str, C1887b.m8478X0(serializable), i);
    }
}
