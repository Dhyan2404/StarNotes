package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.cache.CacheSpan;
import com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations;
import com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

/* loaded from: classes5.dex */
public final class omd {

    /* renamed from: f */
    public static final String f79926f = "CachedContent";

    /* renamed from: a */
    public final int f79927a;

    /* renamed from: b */
    public final String f79928b;

    /* renamed from: c */
    public final TreeSet<esm> f79929c;

    /* renamed from: d */
    public final ArrayList<C14201a> f79930d;

    /* renamed from: e */
    public DefaultContentMetadata f79931e;

    /* renamed from: com.sunia.HTREnginev2.omd$a */
    /* loaded from: classes5.dex */
    public static final class C14201a {

        /* renamed from: a */
        public final long f79932a;

        /* renamed from: b */
        public final long f79933b;

        public C14201a(long j, long j2) {
            this.f79932a = j;
            this.f79933b = j2;
        }

        /* renamed from: a */
        public boolean m56098a(long j, long j2) {
            long j3 = this.f79933b;
            if (j3 == -1) {
                return j >= this.f79932a;
            }
            if (j2 == -1) {
                return false;
            }
            long j4 = this.f79932a;
            return j4 <= j && j + j2 <= j4 + j3;
        }

        /* renamed from: b */
        public boolean m56099b(long j, long j2) {
            long j3 = this.f79932a;
            if (j3 > j) {
                return j2 == -1 || j + j2 > j3;
            }
            long j4 = this.f79933b;
            return j4 == -1 || j3 + j4 > j;
        }
    }

    public omd(int i, String str) {
        this(i, str, DefaultContentMetadata.EMPTY);
    }

    /* renamed from: a */
    public void m56085a(esm esmVar) {
        this.f79929c.add(esmVar);
    }

    /* renamed from: b */
    public boolean m56086b(ContentMetadataMutations contentMetadataMutations) {
        this.f79931e = this.f79931e.copyWithMutationsApplied(contentMetadataMutations);
        return !r2.equals(r0);
    }

    /* renamed from: c */
    public long m56087c(long j, long j2) {
        Assertions.checkArgument(j >= 0);
        Assertions.checkArgument(j2 >= 0);
        esm m56089e = m56089e(j, j2);
        if (m56089e.isHoleSpan()) {
            return -Math.min(m56089e.isOpenEnded() ? Long.MAX_VALUE : m56089e.length, j2);
        }
        long j3 = j + j2;
        long j4 = j3 >= 0 ? j3 : Long.MAX_VALUE;
        long j5 = m56089e.position + m56089e.length;
        if (j5 < j4) {
            for (esm esmVar : this.f79929c.tailSet(m56089e, false)) {
                long j6 = esmVar.position;
                if (j6 > j5) {
                    break;
                }
                j5 = Math.max(j5, j6 + esmVar.length);
                if (j5 >= j4) {
                    break;
                }
            }
        }
        return Math.min(j5 - j, j2);
    }

    /* renamed from: d */
    public DefaultContentMetadata m56088d() {
        return this.f79931e;
    }

    /* renamed from: e */
    public esm m56089e(long j, long j2) {
        esm m54030e = esm.m54030e(this.f79928b, j);
        esm floor = this.f79929c.floor(m54030e);
        if (floor != null && floor.position + floor.length > j) {
            return floor;
        }
        esm ceiling = this.f79929c.ceiling(m54030e);
        if (ceiling != null) {
            long j3 = ceiling.position - j;
            j2 = j2 == -1 ? j3 : Math.min(j3, j2);
        }
        return esm.m54029d(this.f79928b, j, j2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || omd.class != obj.getClass()) {
            return false;
        }
        omd omdVar = (omd) obj;
        return this.f79927a == omdVar.f79927a && this.f79928b.equals(omdVar.f79928b) && this.f79929c.equals(omdVar.f79929c) && this.f79931e.equals(omdVar.f79931e);
    }

    /* renamed from: f */
    public TreeSet<esm> m56090f() {
        return this.f79929c;
    }

    /* renamed from: g */
    public boolean m56091g() {
        return this.f79929c.isEmpty();
    }

    /* renamed from: h */
    public boolean m56092h(long j, long j2) {
        for (int i = 0; i < this.f79930d.size(); i++) {
            if (this.f79930d.get(i).m56098a(j, j2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f79927a * 31) + this.f79928b.hashCode()) * 31) + this.f79931e.hashCode();
    }

    /* renamed from: i */
    public boolean m56093i() {
        return this.f79930d.isEmpty();
    }

    /* renamed from: j */
    public boolean m56094j(long j, long j2) {
        for (int i = 0; i < this.f79930d.size(); i++) {
            if (this.f79930d.get(i).m56099b(j, j2)) {
                return false;
            }
        }
        this.f79930d.add(new C14201a(j, j2));
        return true;
    }

    /* renamed from: k */
    public boolean m56095k(CacheSpan cacheSpan) {
        if (!this.f79929c.remove(cacheSpan)) {
            return false;
        }
        File file = cacheSpan.file;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    /* renamed from: l */
    public esm m56096l(esm esmVar, long j, boolean z) {
        Assertions.checkState(this.f79929c.remove(esmVar));
        File file = (File) Assertions.checkNotNull(esmVar.file);
        if (z) {
            File m54031f = esm.m54031f((File) Assertions.checkNotNull(file.getParentFile()), this.f79927a, esmVar.position, j);
            if (file.renameTo(m54031f)) {
                file = m54031f;
            } else {
                String valueOf = String.valueOf(file);
                String valueOf2 = String.valueOf(m54031f);
                StringBuilder sb = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
                sb.append("Failed to rename ");
                sb.append(valueOf);
                sb.append(" to ");
                sb.append(valueOf2);
                Log.m21493w(f79926f, sb.toString());
            }
        }
        esm m54033a = esmVar.m54033a(file, j);
        this.f79929c.add(m54033a);
        return m54033a;
    }

    /* renamed from: m */
    public void m56097m(long j) {
        for (int i = 0; i < this.f79930d.size(); i++) {
            if (this.f79930d.get(i).f79932a == j) {
                this.f79930d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public omd(int i, String str, DefaultContentMetadata defaultContentMetadata) {
        this.f79927a = i;
        this.f79928b = str;
        this.f79931e = defaultContentMetadata;
        this.f79929c = new TreeSet<>();
        this.f79930d = new ArrayList<>();
    }
}
