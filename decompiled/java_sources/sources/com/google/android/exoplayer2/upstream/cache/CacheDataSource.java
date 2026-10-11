package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.DataSink;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DummyDataSource;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.PriorityDataSource;
import com.google.android.exoplayer2.upstream.TeeDataSource;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class CacheDataSource implements DataSource {
    public static final int CACHE_IGNORED_REASON_ERROR = 0;
    public static final int CACHE_IGNORED_REASON_UNSET_LENGTH = 1;
    public static final int FLAG_BLOCK_ON_CACHE = 1;
    public static final int FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS = 4;
    public static final int FLAG_IGNORE_CACHE_ON_ERROR = 2;

    /* renamed from: v */
    public static final int f28184v = -1;

    /* renamed from: w */
    public static final long f28185w = 102400;

    /* renamed from: a */
    public final Cache f28186a;

    /* renamed from: b */
    public final DataSource f28187b;

    /* renamed from: c */
    @Nullable
    public final DataSource f28188c;

    /* renamed from: d */
    public final DataSource f28189d;

    /* renamed from: e */
    public final CacheKeyFactory f28190e;

    /* renamed from: f */
    @Nullable
    public final EventListener f28191f;

    /* renamed from: g */
    public final boolean f28192g;

    /* renamed from: h */
    public final boolean f28193h;

    /* renamed from: i */
    public final boolean f28194i;

    /* renamed from: j */
    @Nullable
    public Uri f28195j;

    /* renamed from: k */
    @Nullable
    public DataSpec f28196k;

    /* renamed from: l */
    @Nullable
    public DataSpec f28197l;

    /* renamed from: m */
    @Nullable
    public DataSource f28198m;

    /* renamed from: n */
    public long f28199n;

    /* renamed from: o */
    public long f28200o;

    /* renamed from: p */
    public long f28201p;

    /* renamed from: q */
    @Nullable
    public CacheSpan f28202q;

    /* renamed from: r */
    public boolean f28203r;

    /* renamed from: s */
    public boolean f28204s;

    /* renamed from: t */
    public long f28205t;

    /* renamed from: u */
    public long f28206u;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface CacheIgnoredReason {
    }

    /* loaded from: classes5.dex */
    public interface EventListener {
        void onCacheIgnored(int i);

        void onCachedBytesRead(long j, long j2);
    }

    /* loaded from: classes5.dex */
    public static final class Factory implements DataSource.Factory {

        /* renamed from: a */
        public Cache f28207a;

        /* renamed from: c */
        @Nullable
        public DataSink.Factory f28209c;

        /* renamed from: e */
        public boolean f28211e;

        /* renamed from: f */
        @Nullable
        public DataSource.Factory f28212f;

        /* renamed from: g */
        @Nullable
        public PriorityTaskManager f28213g;

        /* renamed from: h */
        public int f28214h;

        /* renamed from: i */
        public int f28215i;

        /* renamed from: j */
        @Nullable
        public EventListener f28216j;

        /* renamed from: b */
        public DataSource.Factory f28208b = new FileDataSource.Factory();

        /* renamed from: d */
        public CacheKeyFactory f28210d = CacheKeyFactory.DEFAULT;

        /* renamed from: a */
        public final CacheDataSource m21379a(@Nullable DataSource dataSource, int i, int i2) {
            DataSink dataSink;
            Cache cache = (Cache) Assertions.checkNotNull(this.f28207a);
            if (this.f28211e || dataSource == null) {
                dataSink = null;
            } else {
                DataSink.Factory factory = this.f28209c;
                dataSink = factory != null ? factory.createDataSink() : new CacheDataSink.Factory().setCache(cache).createDataSink();
            }
            return new CacheDataSource(cache, dataSource, this.f28208b.createDataSource(), dataSink, this.f28210d, i, this.f28213g, i2, this.f28216j);
        }

        public CacheDataSource createDataSourceForDownloading() {
            DataSource.Factory factory = this.f28212f;
            return m21379a(factory != null ? factory.createDataSource() : null, this.f28215i | 1, -1000);
        }

        public CacheDataSource createDataSourceForRemovingDownload() {
            return m21379a(null, this.f28215i | 1, -1000);
        }

        @Nullable
        public Cache getCache() {
            return this.f28207a;
        }

        public CacheKeyFactory getCacheKeyFactory() {
            return this.f28210d;
        }

        @Nullable
        public PriorityTaskManager getUpstreamPriorityTaskManager() {
            return this.f28213g;
        }

        public Factory setCache(Cache cache) {
            this.f28207a = cache;
            return this;
        }

        public Factory setCacheKeyFactory(CacheKeyFactory cacheKeyFactory) {
            this.f28210d = cacheKeyFactory;
            return this;
        }

        public Factory setCacheReadDataSourceFactory(DataSource.Factory factory) {
            this.f28208b = factory;
            return this;
        }

        public Factory setCacheWriteDataSinkFactory(@Nullable DataSink.Factory factory) {
            this.f28209c = factory;
            this.f28211e = factory == null;
            return this;
        }

        public Factory setEventListener(@Nullable EventListener eventListener) {
            this.f28216j = eventListener;
            return this;
        }

        public Factory setFlags(int i) {
            this.f28215i = i;
            return this;
        }

        public Factory setUpstreamDataSourceFactory(@Nullable DataSource.Factory factory) {
            this.f28212f = factory;
            return this;
        }

        public Factory setUpstreamPriority(int i) {
            this.f28214h = i;
            return this;
        }

        public Factory setUpstreamPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager) {
            this.f28213g = priorityTaskManager;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public CacheDataSource createDataSource() {
            DataSource.Factory factory = this.f28212f;
            return m21379a(factory != null ? factory.createDataSource() : null, this.f28215i, this.f28214h);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    /* renamed from: e */
    public static Uri m21367e(Cache cache, String str, Uri uri) {
        Uri redirectedUri = ContentMetadata.getRedirectedUri(cache.getContentMetadata(str));
        return redirectedUri != null ? redirectedUri : uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.f28187b.addTransferListener(transferListener);
        this.f28189d.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws IOException {
        this.f28196k = null;
        this.f28195j = null;
        this.f28200o = 0L;
        m21374k();
        try {
            m21368d();
        } catch (Throwable th) {
            m21369f(th);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final void m21368d() throws IOException {
        DataSource dataSource = this.f28198m;
        if (dataSource == null) {
            return;
        }
        try {
            dataSource.close();
        } finally {
            this.f28197l = null;
            this.f28198m = null;
            CacheSpan cacheSpan = this.f28202q;
            if (cacheSpan != null) {
                this.f28186a.releaseHoleSpan(cacheSpan);
                this.f28202q = null;
            }
        }
    }

    /* renamed from: f */
    public final void m21369f(Throwable th) {
        if (m21371h() || (th instanceof Cache.CacheException)) {
            this.f28203r = true;
        }
    }

    /* renamed from: g */
    public final boolean m21370g() {
        return this.f28198m == this.f28189d;
    }

    public Cache getCache() {
        return this.f28186a;
    }

    public CacheKeyFactory getCacheKeyFactory() {
        return this.f28190e;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return m21372i() ? this.f28189d.getResponseHeaders() : Collections.emptyMap();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f28195j;
    }

    /* renamed from: h */
    public final boolean m21371h() {
        return this.f28198m == this.f28187b;
    }

    /* renamed from: i */
    public final boolean m21372i() {
        return !m21371h();
    }

    /* renamed from: j */
    public final boolean m21373j() {
        return this.f28198m == this.f28188c;
    }

    /* renamed from: k */
    public final void m21374k() {
        EventListener eventListener = this.f28191f;
        if (eventListener == null || this.f28205t <= 0) {
            return;
        }
        eventListener.onCachedBytesRead(this.f28186a.getCacheSpace(), this.f28205t);
        this.f28205t = 0L;
    }

    /* renamed from: l */
    public final void m21375l(int i) {
        EventListener eventListener = this.f28191f;
        if (eventListener != null) {
            eventListener.onCacheIgnored(i);
        }
    }

    /* renamed from: m */
    public final void m21376m(DataSpec dataSpec, boolean z) throws IOException {
        CacheSpan startReadWrite;
        long j;
        DataSpec build;
        DataSource dataSource;
        String str = (String) Util.castNonNull(dataSpec.key);
        if (this.f28204s) {
            startReadWrite = null;
        } else if (this.f28192g) {
            try {
                startReadWrite = this.f28186a.startReadWrite(str, this.f28200o, this.f28201p);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            startReadWrite = this.f28186a.startReadWriteNonBlocking(str, this.f28200o, this.f28201p);
        }
        if (startReadWrite == null) {
            dataSource = this.f28189d;
            build = dataSpec.buildUpon().setPosition(this.f28200o).setLength(this.f28201p).build();
        } else if (startReadWrite.isCached) {
            Uri fromFile = Uri.fromFile((File) Util.castNonNull(startReadWrite.file));
            long j2 = startReadWrite.position;
            long j3 = this.f28200o - j2;
            long j4 = startReadWrite.length - j3;
            long j5 = this.f28201p;
            if (j5 != -1) {
                j4 = Math.min(j4, j5);
            }
            build = dataSpec.buildUpon().setUri(fromFile).setUriPositionOffset(j2).setPosition(j3).setLength(j4).build();
            dataSource = this.f28187b;
        } else {
            if (startReadWrite.isOpenEnded()) {
                j = this.f28201p;
            } else {
                j = startReadWrite.length;
                long j6 = this.f28201p;
                if (j6 != -1) {
                    j = Math.min(j, j6);
                }
            }
            build = dataSpec.buildUpon().setPosition(this.f28200o).setLength(j).build();
            dataSource = this.f28188c;
            if (dataSource == null) {
                dataSource = this.f28189d;
                this.f28186a.releaseHoleSpan(startReadWrite);
                startReadWrite = null;
            }
        }
        this.f28206u = (this.f28204s || dataSource != this.f28189d) ? Long.MAX_VALUE : this.f28200o + 102400;
        if (z) {
            Assertions.checkState(m21370g());
            if (dataSource == this.f28189d) {
                return;
            }
            try {
                m21368d();
            } finally {
            }
        }
        if (startReadWrite != null && startReadWrite.isHoleSpan()) {
            this.f28202q = startReadWrite;
        }
        this.f28198m = dataSource;
        this.f28197l = build;
        this.f28199n = 0L;
        long open = dataSource.open(build);
        ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
        if (build.length == -1 && open != -1) {
            this.f28201p = open;
            ContentMetadataMutations.setContentLength(contentMetadataMutations, this.f28200o + open);
        }
        if (m21372i()) {
            Uri uri = dataSource.getUri();
            this.f28195j = uri;
            ContentMetadataMutations.setRedirectedUri(contentMetadataMutations, dataSpec.uri.equals(uri) ^ true ? this.f28195j : null);
        }
        if (m21373j()) {
            this.f28186a.applyContentMetadataMutations(str, contentMetadataMutations);
        }
    }

    /* renamed from: n */
    public final void m21377n(String str) throws IOException {
        this.f28201p = 0L;
        if (m21373j()) {
            ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
            ContentMetadataMutations.setContentLength(contentMetadataMutations, this.f28200o);
            this.f28186a.applyContentMetadataMutations(str, contentMetadataMutations);
        }
    }

    /* renamed from: o */
    public final int m21378o(DataSpec dataSpec) {
        if (this.f28193h && this.f28203r) {
            return 0;
        }
        return (this.f28194i && dataSpec.length == -1) ? 1 : -1;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        try {
            String buildCacheKey = this.f28190e.buildCacheKey(dataSpec);
            DataSpec build = dataSpec.buildUpon().setKey(buildCacheKey).build();
            this.f28196k = build;
            this.f28195j = m21367e(this.f28186a, buildCacheKey, build.uri);
            this.f28200o = dataSpec.position;
            int m21378o = m21378o(dataSpec);
            boolean z = m21378o != -1;
            this.f28204s = z;
            if (z) {
                m21375l(m21378o);
            }
            if (this.f28204s) {
                this.f28201p = -1L;
            } else {
                long contentLength = ContentMetadata.getContentLength(this.f28186a.getContentMetadata(buildCacheKey));
                this.f28201p = contentLength;
                if (contentLength != -1) {
                    long j = contentLength - dataSpec.position;
                    this.f28201p = j;
                    if (j < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            long j2 = dataSpec.length;
            if (j2 != -1) {
                long j3 = this.f28201p;
                if (j3 != -1) {
                    j2 = Math.min(j3, j2);
                }
                this.f28201p = j2;
            }
            long j4 = this.f28201p;
            if (j4 > 0 || j4 == -1) {
                m21376m(build, false);
            }
            long j5 = dataSpec.length;
            return j5 != -1 ? j5 : this.f28201p;
        } catch (Throwable th) {
            m21369f(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f28201p == 0) {
            return -1;
        }
        DataSpec dataSpec = (DataSpec) Assertions.checkNotNull(this.f28196k);
        DataSpec dataSpec2 = (DataSpec) Assertions.checkNotNull(this.f28197l);
        try {
            if (this.f28200o >= this.f28206u) {
                m21376m(dataSpec, true);
            }
            int read = ((DataSource) Assertions.checkNotNull(this.f28198m)).read(bArr, i, i2);
            if (read == -1) {
                if (m21372i()) {
                    long j = dataSpec2.length;
                    if (j == -1 || this.f28199n < j) {
                        m21377n((String) Util.castNonNull(dataSpec.key));
                    }
                }
                long j2 = this.f28201p;
                if (j2 <= 0) {
                    if (j2 == -1) {
                    }
                }
                m21368d();
                m21376m(dataSpec, false);
                return read(bArr, i, i2);
            }
            if (m21371h()) {
                this.f28205t += read;
            }
            long j3 = read;
            this.f28200o += j3;
            this.f28199n += j3;
            long j4 = this.f28201p;
            if (j4 != -1) {
                this.f28201p = j4 - j3;
            }
            return read;
        } catch (Throwable th) {
            m21369f(th);
            throw th;
        }
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource) {
        this(cache, dataSource, 0);
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource, int i) {
        this(cache, dataSource, new FileDataSource(), new CacheDataSink(cache, 5242880L), i, null);
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource, DataSource dataSource2, @Nullable DataSink dataSink, int i, @Nullable EventListener eventListener) {
        this(cache, dataSource, dataSource2, dataSink, i, eventListener, null);
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource, DataSource dataSource2, @Nullable DataSink dataSink, int i, @Nullable EventListener eventListener, @Nullable CacheKeyFactory cacheKeyFactory) {
        this(cache, dataSource, dataSource2, dataSink, cacheKeyFactory, i, null, 0, eventListener);
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource, DataSource dataSource2, @Nullable DataSink dataSink, @Nullable CacheKeyFactory cacheKeyFactory, int i, @Nullable PriorityTaskManager priorityTaskManager, int i2, @Nullable EventListener eventListener) {
        this.f28186a = cache;
        this.f28187b = dataSource2;
        this.f28190e = cacheKeyFactory == null ? CacheKeyFactory.DEFAULT : cacheKeyFactory;
        this.f28192g = (i & 1) != 0;
        this.f28193h = (i & 2) != 0;
        this.f28194i = (i & 4) != 0;
        if (dataSource != null) {
            dataSource = priorityTaskManager != null ? new PriorityDataSource(dataSource, priorityTaskManager, i2) : dataSource;
            this.f28189d = dataSource;
            this.f28188c = dataSink != null ? new TeeDataSource(dataSource, dataSink) : null;
        } else {
            this.f28189d = DummyDataSource.INSTANCE;
            this.f28188c = null;
        }
        this.f28191f = eventListener;
    }
}
