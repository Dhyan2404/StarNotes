package com.google.android.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.database.DatabaseProvider;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.esm;
import com.sunia.HTREnginev2.lmd;
import com.sunia.HTREnginev2.mmd;
import com.sunia.HTREnginev2.omd;
import com.sunia.HTREnginev2.pmd;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes5.dex */
public final class SimpleCache implements Cache {

    /* renamed from: l */
    public static final String f28234l = "SimpleCache";

    /* renamed from: m */
    public static final int f28235m = 10;

    /* renamed from: n */
    public static final String f28236n = ".uid";

    /* renamed from: o */
    public static final HashSet<File> f28237o = new HashSet<>();

    /* renamed from: a */
    public final File f28238a;

    /* renamed from: b */
    public final CacheEvictor f28239b;

    /* renamed from: c */
    public final pmd f28240c;

    /* renamed from: d */
    @Nullable
    public final mmd f28241d;

    /* renamed from: e */
    public final HashMap<String, ArrayList<Cache.Listener>> f28242e;

    /* renamed from: f */
    public final Random f28243f;

    /* renamed from: g */
    public final boolean f28244g;

    /* renamed from: h */
    public long f28245h;

    /* renamed from: i */
    public long f28246i;

    /* renamed from: j */
    public boolean f28247j;

    /* renamed from: k */
    public Cache.CacheException f28248k;

    /* renamed from: com.google.android.exoplayer2.upstream.cache.SimpleCache$a */
    /* loaded from: classes5.dex */
    public class C5007a extends Thread {

        /* renamed from: e */
        public final /* synthetic */ ConditionVariable f28249e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5007a(String str, ConditionVariable conditionVariable) {
            super(str);
            this.f28249e = conditionVariable;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (SimpleCache.this) {
                this.f28249e.open();
                SimpleCache.this.m21406g();
                SimpleCache.this.f28239b.onCacheInitialized();
            }
        }
    }

    @Deprecated
    public SimpleCache(File file, CacheEvictor cacheEvictor) {
        this(file, cacheEvictor, (byte[]) null, false);
    }

    /* renamed from: d */
    public static void m21398d(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(valueOf.length() + 34);
        sb.append("Failed to create cache directory: ");
        sb.append(valueOf);
        String sb2 = sb.toString();
        Log.m21489e(f28234l, sb2);
        throw new Cache.CacheException(sb2);
    }

    @WorkerThread
    public static void delete(File file, @Nullable DatabaseProvider databaseProvider) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                file.delete();
                return;
            }
            if (databaseProvider != null) {
                long m21400i = m21400i(listFiles);
                if (m21400i != -1) {
                    try {
                        mmd.m55649a(databaseProvider, m21400i);
                    } catch (DatabaseIOException unused) {
                        StringBuilder sb = new StringBuilder(52);
                        sb.append("Failed to delete file metadata: ");
                        sb.append(m21400i);
                        Log.m21493w(f28234l, sb.toString());
                    }
                    try {
                        pmd.m56290g(databaseProvider, m21400i);
                    } catch (DatabaseIOException unused2) {
                        StringBuilder sb2 = new StringBuilder(52);
                        sb2.append("Failed to delete file metadata: ");
                        sb2.append(m21400i);
                        Log.m21493w(f28234l, sb2.toString());
                    }
                }
            }
            Util.recursiveDelete(file);
        }
    }

    /* renamed from: e */
    public static long m21399e(File file) throws IOException {
        long nextLong = new SecureRandom().nextLong();
        long abs = nextLong == Long.MIN_VALUE ? 0L : Math.abs(nextLong);
        String valueOf = String.valueOf(Long.toString(abs, 16));
        File file2 = new File(file, f28236n.length() != 0 ? valueOf.concat(f28236n) : new String(valueOf));
        if (file2.createNewFile()) {
            return abs;
        }
        String valueOf2 = String.valueOf(file2);
        StringBuilder sb = new StringBuilder(valueOf2.length() + 27);
        sb.append("Failed to create UID file: ");
        sb.append(valueOf2);
        throw new IOException(sb.toString());
    }

    /* renamed from: i */
    public static long m21400i(File[] fileArr) {
        int length = fileArr.length;
        for (int i = 0; i < length; i++) {
            File file = fileArr[i];
            String name = file.getName();
            if (name.endsWith(f28236n)) {
                try {
                    return m21402n(name);
                } catch (NumberFormatException unused) {
                    String valueOf = String.valueOf(file);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 20);
                    sb.append("Malformed UID file: ");
                    sb.append(valueOf);
                    Log.m21489e(f28234l, sb.toString());
                    file.delete();
                }
            }
        }
        return -1L;
    }

    public static synchronized boolean isCacheFolderLocked(File file) {
        boolean contains;
        synchronized (SimpleCache.class) {
            contains = f28237o.contains(file.getAbsoluteFile());
        }
        return contains;
    }

    /* renamed from: j */
    public static synchronized boolean m21401j(File file) {
        boolean add;
        synchronized (SimpleCache.class) {
            add = f28237o.add(file.getAbsoluteFile());
        }
        return add;
    }

    /* renamed from: n */
    public static long m21402n(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    /* renamed from: r */
    public static synchronized void m21403r(File file) {
        synchronized (SimpleCache.class) {
            f28237o.remove(file.getAbsoluteFile());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized NavigableSet<CacheSpan> addListener(String str, Cache.Listener listener) {
        Assertions.checkState(!this.f28247j);
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(listener);
        ArrayList<Cache.Listener> arrayList = this.f28242e.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f28242e.put(str, arrayList);
        }
        arrayList.add(listener);
        return getCachedSpans(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void applyContentMetadataMutations(String str, ContentMetadataMutations contentMetadataMutations) throws Cache.CacheException {
        Assertions.checkState(!this.f28247j);
        checkInitialization();
        this.f28240c.m56297e(str, contentMetadataMutations);
        try {
            this.f28240c.m56308u();
        } catch (IOException e) {
            throw new Cache.CacheException(e);
        }
    }

    /* renamed from: c */
    public final void m21404c(esm esmVar) {
        this.f28240c.m56304o(esmVar.key).m56085a(esmVar);
        this.f28246i += esmVar.length;
        m21408k(esmVar);
    }

    public synchronized void checkInitialization() throws Cache.CacheException {
        Cache.CacheException cacheException = this.f28248k;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void commitFile(File file, long j) throws Cache.CacheException {
        boolean z = true;
        Assertions.checkState(!this.f28247j);
        if (file.exists()) {
            if (j == 0) {
                file.delete();
                return;
            }
            esm esmVar = (esm) Assertions.checkNotNull(esm.m54028c(file, j, this.f28240c));
            omd omdVar = (omd) Assertions.checkNotNull(this.f28240c.m56299h(esmVar.key));
            Assertions.checkState(omdVar.m56092h(esmVar.position, esmVar.length));
            long contentLength = ContentMetadata.getContentLength(omdVar.m56088d());
            if (contentLength != -1) {
                if (esmVar.position + esmVar.length > contentLength) {
                    z = false;
                }
                Assertions.checkState(z);
            }
            if (this.f28241d != null) {
                try {
                    this.f28241d.m55657i(file.getName(), esmVar.length, esmVar.lastTouchTimestamp);
                } catch (IOException e) {
                    throw new Cache.CacheException(e);
                }
            }
            m21404c(esmVar);
            try {
                this.f28240c.m56308u();
                notifyAll();
            } catch (IOException e2) {
                throw new Cache.CacheException(e2);
            }
        }
    }

    /* renamed from: f */
    public final esm m21405f(String str, long j, long j2) {
        esm m56089e;
        omd m56299h = this.f28240c.m56299h(str);
        if (m56299h == null) {
            return esm.m54029d(str, j, j2);
        }
        while (true) {
            m56089e = m56299h.m56089e(j, j2);
            if (!m56089e.isCached || m56089e.file.length() == m56089e.length) {
                break;
            }
            m21412p();
        }
        return m56089e;
    }

    /* renamed from: g */
    public final void m21406g() {
        if (!this.f28238a.exists()) {
            try {
                m21398d(this.f28238a);
            } catch (Cache.CacheException e) {
                this.f28248k = e;
                return;
            }
        }
        File[] listFiles = this.f28238a.listFiles();
        if (listFiles == null) {
            String valueOf = String.valueOf(this.f28238a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 38);
            sb.append("Failed to list cache directory files: ");
            sb.append(valueOf);
            String sb2 = sb.toString();
            Log.m21489e(f28234l, sb2);
            this.f28248k = new Cache.CacheException(sb2);
            return;
        }
        long m21400i = m21400i(listFiles);
        this.f28245h = m21400i;
        if (m21400i == -1) {
            try {
                this.f28245h = m21399e(this.f28238a);
            } catch (IOException e2) {
                String valueOf2 = String.valueOf(this.f28238a);
                StringBuilder sb3 = new StringBuilder(valueOf2.length() + 28);
                sb3.append("Failed to create cache UID: ");
                sb3.append(valueOf2);
                String sb4 = sb3.toString();
                Log.m21490e(f28234l, sb4, e2);
                this.f28248k = new Cache.CacheException(sb4, e2);
                return;
            }
        }
        try {
            this.f28240c.m56305p(this.f28245h);
            mmd mmdVar = this.f28241d;
            if (mmdVar != null) {
                mmdVar.m55654f(this.f28245h);
                Map<String, lmd> m55652c = this.f28241d.m55652c();
                m21407h(this.f28238a, true, listFiles, m55652c);
                this.f28241d.m55656h(m55652c.keySet());
            } else {
                m21407h(this.f28238a, true, listFiles, null);
            }
            this.f28240c.m56307t();
            try {
                this.f28240c.m56308u();
            } catch (IOException e3) {
                Log.m21490e(f28234l, "Storing index file failed", e3);
            }
        } catch (IOException e4) {
            String valueOf3 = String.valueOf(this.f28238a);
            StringBuilder sb5 = new StringBuilder(valueOf3.length() + 36);
            sb5.append("Failed to initialize cache indices: ");
            sb5.append(valueOf3);
            String sb6 = sb5.toString();
            Log.m21490e(f28234l, sb6, e4);
            this.f28248k = new Cache.CacheException(sb6, e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getCacheSpace() {
        Assertions.checkState(!this.f28247j);
        return this.f28246i;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getCachedBytes(String str, long j, long j2) {
        long j3;
        long j4 = j2 == -1 ? Long.MAX_VALUE : j + j2;
        long j5 = j4 < 0 ? Long.MAX_VALUE : j4;
        long j6 = j;
        j3 = 0;
        while (j6 < j5) {
            long cachedLength = getCachedLength(str, j6, j5 - j6);
            if (cachedLength > 0) {
                j3 += cachedLength;
            } else {
                cachedLength = -cachedLength;
            }
            j6 += cachedLength;
        }
        return j3;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getCachedLength(String str, long j, long j2) {
        omd m56299h;
        Assertions.checkState(!this.f28247j);
        if (j2 == -1) {
            j2 = Long.MAX_VALUE;
        }
        m56299h = this.f28240c.m56299h(str);
        return m56299h != null ? m56299h.m56087c(j, j2) : -j2;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized NavigableSet<CacheSpan> getCachedSpans(String str) {
        TreeSet treeSet;
        Assertions.checkState(!this.f28247j);
        omd m56299h = this.f28240c.m56299h(str);
        if (m56299h != null && !m56299h.m56091g()) {
            treeSet = new TreeSet((Collection) m56299h.m56090f());
        }
        treeSet = new TreeSet();
        return treeSet;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized ContentMetadata getContentMetadata(String str) {
        Assertions.checkState(!this.f28247j);
        return this.f28240c.m56301k(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized Set<String> getKeys() {
        Assertions.checkState(!this.f28247j);
        return new HashSet(this.f28240c.m56303m());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getUid() {
        return this.f28245h;
    }

    /* renamed from: h */
    public final void m21407h(File file, boolean z, @Nullable File[] fileArr, @Nullable Map<String, lmd> map) {
        long j;
        long j2;
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                m21407h(file2, false, file2.listFiles(), map);
            } else if (!z || (!pmd.m56293q(name) && !name.endsWith(f28236n))) {
                lmd remove = map != null ? map.remove(name) : null;
                if (remove != null) {
                    j2 = remove.f76603a;
                    j = remove.f76604b;
                } else {
                    j = -9223372036854775807L;
                    j2 = -1;
                }
                esm m54027b = esm.m54027b(file2, j2, j, this.f28240c);
                if (m54027b != null) {
                    m21404c(m54027b);
                } else {
                    file2.delete();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001b, code lost:
    
        if (r4.m56087c(r5, r7) >= r7) goto L14;
     */
    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean isCached(java.lang.String r4, long r5, long r7) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.f28247j     // Catch: java.lang.Throwable -> L21
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L9
            r0 = r1
            goto La
        L9:
            r0 = r2
        La:
            com.google.android.exoplayer2.util.Assertions.checkState(r0)     // Catch: java.lang.Throwable -> L21
            com.sunia.HTREnginev2.pmd r0 = r3.f28240c     // Catch: java.lang.Throwable -> L21
            com.sunia.HTREnginev2.omd r4 = r0.m56299h(r4)     // Catch: java.lang.Throwable -> L21
            if (r4 == 0) goto L1e
            long r4 = r4.m56087c(r5, r7)     // Catch: java.lang.Throwable -> L21
            int r4 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r4 < 0) goto L1e
            goto L1f
        L1e:
            r1 = r2
        L1f:
            monitor-exit(r3)
            return r1
        L21:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.SimpleCache.isCached(java.lang.String, long, long):boolean");
    }

    /* renamed from: k */
    public final void m21408k(esm esmVar) {
        ArrayList<Cache.Listener> arrayList = this.f28242e.get(esmVar.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanAdded(this, esmVar);
            }
        }
        this.f28239b.onSpanAdded(this, esmVar);
    }

    /* renamed from: l */
    public final void m21409l(CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.f28242e.get(cacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanRemoved(this, cacheSpan);
            }
        }
        this.f28239b.onSpanRemoved(this, cacheSpan);
    }

    /* renamed from: m */
    public final void m21410m(esm esmVar, CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.f28242e.get(esmVar.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanTouched(this, esmVar, cacheSpan);
            }
        }
        this.f28239b.onSpanTouched(this, esmVar, cacheSpan);
    }

    /* renamed from: o */
    public final void m21411o(CacheSpan cacheSpan) {
        omd m56299h = this.f28240c.m56299h(cacheSpan.key);
        if (m56299h == null || !m56299h.m56095k(cacheSpan)) {
            return;
        }
        this.f28246i -= cacheSpan.length;
        if (this.f28241d != null) {
            String name = cacheSpan.file.getName();
            try {
                this.f28241d.m55655g(name);
            } catch (IOException unused) {
                String valueOf = String.valueOf(name);
                Log.m21493w(f28234l, valueOf.length() != 0 ? "Failed to remove file index entry for: ".concat(valueOf) : new String("Failed to remove file index entry for: "));
            }
        }
        this.f28240c.m56306r(m56299h.f79928b);
        m21409l(cacheSpan);
    }

    /* renamed from: p */
    public final void m21412p() {
        ArrayList arrayList = new ArrayList();
        Iterator<omd> it2 = this.f28240c.m56300i().iterator();
        while (it2.hasNext()) {
            Iterator<esm> it3 = it2.next().m56090f().iterator();
            while (it3.hasNext()) {
                esm next = it3.next();
                if (next.file.length() != next.length) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            m21411o((CacheSpan) arrayList.get(i));
        }
    }

    /* renamed from: q */
    public final esm m21413q(String str, esm esmVar) {
        boolean z;
        if (!this.f28244g) {
            return esmVar;
        }
        String name = ((File) Assertions.checkNotNull(esmVar.file)).getName();
        long j = esmVar.length;
        long currentTimeMillis = System.currentTimeMillis();
        mmd mmdVar = this.f28241d;
        if (mmdVar != null) {
            try {
                mmdVar.m55657i(name, j, currentTimeMillis);
            } catch (IOException unused) {
                Log.m21493w(f28234l, "Failed to update index with new touch timestamp.");
            }
            z = false;
        } else {
            z = true;
        }
        esm m56096l = this.f28240c.m56299h(str).m56096l(esmVar, currentTimeMillis, z);
        m21410m(esmVar, m56096l);
        return m56096l;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void release() {
        if (this.f28247j) {
            return;
        }
        this.f28242e.clear();
        m21412p();
        try {
            try {
                this.f28240c.m56308u();
                m21403r(this.f28238a);
            } catch (IOException e) {
                Log.m21490e(f28234l, "Storing index file failed", e);
                m21403r(this.f28238a);
            }
            this.f28247j = true;
        } catch (Throwable th) {
            m21403r(this.f28238a);
            this.f28247j = true;
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void releaseHoleSpan(CacheSpan cacheSpan) {
        Assertions.checkState(!this.f28247j);
        omd omdVar = (omd) Assertions.checkNotNull(this.f28240c.m56299h(cacheSpan.key));
        omdVar.m56097m(cacheSpan.position);
        this.f28240c.m56306r(omdVar.f79928b);
        notifyAll();
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void removeListener(String str, Cache.Listener listener) {
        if (this.f28247j) {
            return;
        }
        ArrayList<Cache.Listener> arrayList = this.f28242e.get(str);
        if (arrayList != null) {
            arrayList.remove(listener);
            if (arrayList.isEmpty()) {
                this.f28242e.remove(str);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void removeResource(String str) {
        Assertions.checkState(!this.f28247j);
        Iterator<CacheSpan> it2 = getCachedSpans(str).iterator();
        while (it2.hasNext()) {
            m21411o(it2.next());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void removeSpan(CacheSpan cacheSpan) {
        Assertions.checkState(!this.f28247j);
        m21411o(cacheSpan);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized File startFile(String str, long j, long j2) throws Cache.CacheException {
        omd m56299h;
        File file;
        Assertions.checkState(!this.f28247j);
        checkInitialization();
        m56299h = this.f28240c.m56299h(str);
        Assertions.checkNotNull(m56299h);
        Assertions.checkState(m56299h.m56092h(j, j2));
        if (!this.f28238a.exists()) {
            m21398d(this.f28238a);
            m21412p();
        }
        this.f28239b.onStartFile(this, str, j, j2);
        file = new File(this.f28238a, Integer.toString(this.f28243f.nextInt(10)));
        if (!file.exists()) {
            m21398d(file);
        }
        return esm.m54031f(file, m56299h.f79927a, j, System.currentTimeMillis());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized CacheSpan startReadWrite(String str, long j, long j2) throws InterruptedException, Cache.CacheException {
        CacheSpan startReadWriteNonBlocking;
        Assertions.checkState(!this.f28247j);
        checkInitialization();
        while (true) {
            startReadWriteNonBlocking = startReadWriteNonBlocking(str, j, j2);
            if (startReadWriteNonBlocking == null) {
                wait();
            }
        }
        return startReadWriteNonBlocking;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    @Nullable
    public synchronized CacheSpan startReadWriteNonBlocking(String str, long j, long j2) throws Cache.CacheException {
        Assertions.checkState(!this.f28247j);
        checkInitialization();
        esm m21405f = m21405f(str, j, j2);
        if (m21405f.isCached) {
            return m21413q(str, m21405f);
        }
        if (this.f28240c.m56304o(str).m56094j(j, m21405f.length)) {
            return m21405f;
        }
        return null;
    }

    @Deprecated
    public SimpleCache(File file, CacheEvictor cacheEvictor, @Nullable byte[] bArr) {
        this(file, cacheEvictor, bArr, bArr != null);
    }

    @Deprecated
    public SimpleCache(File file, CacheEvictor cacheEvictor, @Nullable byte[] bArr, boolean z) {
        this(file, cacheEvictor, null, bArr, z, true);
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, DatabaseProvider databaseProvider) {
        this(file, cacheEvictor, databaseProvider, null, false, false);
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, @Nullable DatabaseProvider databaseProvider, @Nullable byte[] bArr, boolean z, boolean z2) {
        this(file, cacheEvictor, new pmd(databaseProvider, file, bArr, z, z2), (databaseProvider == null || z2) ? null : new mmd(databaseProvider));
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, pmd pmdVar, @Nullable mmd mmdVar) {
        if (m21401j(file)) {
            this.f28238a = file;
            this.f28239b = cacheEvictor;
            this.f28240c = pmdVar;
            this.f28241d = mmdVar;
            this.f28242e = new HashMap<>();
            this.f28243f = new Random();
            this.f28244g = cacheEvictor.requiresCacheSpanTouches();
            this.f28245h = -1L;
            ConditionVariable conditionVariable = new ConditionVariable();
            new C5007a("ExoPlayer:SimpleCacheInit", conditionVariable).start();
            conditionVariable.block();
            return;
        }
        String valueOf = String.valueOf(file);
        StringBuilder sb = new StringBuilder(valueOf.length() + 46);
        sb.append("Another SimpleCache instance uses the folder: ");
        sb.append(valueOf);
        throw new IllegalStateException(sb.toString());
    }
}
