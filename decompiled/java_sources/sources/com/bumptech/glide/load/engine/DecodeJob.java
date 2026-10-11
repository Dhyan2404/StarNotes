package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.GlideTrace;
import com.bumptech.glide.util.pool.StateVerifier;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.lse;
import com.sunia.HTREnginev2.mse;
import com.sunia.HTREnginev2.qll;
import com.sunia.HTREnginev2.u2j;
import com.sunia.HTREnginev2.uqf;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class DecodeJob<R> implements DataFetcherGenerator.FetcherReadyCallback, Runnable, Comparable<DecodeJob<?>>, FactoryPools.Poolable {

    /* renamed from: x0 */
    public static final String f14530x0 = "DecodeJob";

    /* renamed from: J */
    public Thread f14531J;

    /* renamed from: O */
    public Key f14532O;

    /* renamed from: Q */
    public Key f14533Q;

    /* renamed from: Z */
    public Object f14534Z;

    /* renamed from: h */
    public final InterfaceC1924e f14538h;

    /* renamed from: i */
    public final Pools.Pool<DecodeJob<?>> f14539i;

    /* renamed from: k0 */
    public DataSource f14542k0;

    /* renamed from: l */
    public GlideContext f14543l;

    /* renamed from: m */
    public Key f14544m;

    /* renamed from: n */
    public Priority f14545n;

    /* renamed from: o */
    public uqf f14546o;

    /* renamed from: p */
    public int f14547p;

    /* renamed from: q */
    public int f14548q;

    /* renamed from: q0 */
    public DataFetcher<?> f14549q0;

    /* renamed from: r */
    public DiskCacheStrategy f14550r;

    /* renamed from: s */
    public Options f14551s;

    /* renamed from: t */
    public InterfaceC1921b<R> f14552t;

    /* renamed from: t0 */
    public volatile DataFetcherGenerator f14553t0;

    /* renamed from: u */
    public int f14554u;

    /* renamed from: u0 */
    public volatile boolean f14555u0;

    /* renamed from: v */
    public Stage f14556v;

    /* renamed from: v0 */
    public volatile boolean f14557v0;

    /* renamed from: w */
    public RunReason f14558w;

    /* renamed from: w0 */
    public boolean f14559w0;

    /* renamed from: x */
    public long f14560x;

    /* renamed from: y */
    public boolean f14561y;

    /* renamed from: z */
    public Object f14562z;

    /* renamed from: e */
    public final C1947c<R> f14535e = new C1947c<>();

    /* renamed from: f */
    public final List<Throwable> f14536f = new ArrayList();

    /* renamed from: g */
    public final StateVerifier f14537g = StateVerifier.newInstance();

    /* renamed from: j */
    public final C1923d<?> f14540j = new C1923d<>();

    /* renamed from: k */
    public final C1925f f14541k = new C1925f();

    /* loaded from: classes3.dex */
    public enum RunReason {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* loaded from: classes3.dex */
    public enum Stage {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1920a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14563a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f14564b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f14565c;

        static {
            int[] iArr = new int[EncodeStrategy.values().length];
            f14565c = iArr;
            try {
                iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14565c[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Stage.values().length];
            f14564b = iArr2;
            try {
                iArr2[Stage.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14564b[Stage.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14564b[Stage.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14564b[Stage.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14564b[Stage.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[RunReason.values().length];
            f14563a = iArr3;
            try {
                iArr3[RunReason.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14563a[RunReason.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14563a[RunReason.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1921b<R> {
        /* renamed from: a */
        void mo8715a(DecodeJob<?> decodeJob);

        void onLoadFailed(GlideException glideException);

        void onResourceReady(Resource<R> resource, DataSource dataSource, boolean z);
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$c */
    /* loaded from: classes3.dex */
    public final class C1922c<Z> implements DecodePath.InterfaceC1926a<Z> {

        /* renamed from: a */
        public final DataSource f14566a;

        public C1922c(DataSource dataSource) {
            this.f14566a = dataSource;
        }

        @Override // com.bumptech.glide.load.engine.DecodePath.InterfaceC1926a
        @NonNull
        /* renamed from: a */
        public Resource<Z> mo8716a(@NonNull Resource<Z> resource) {
            return DecodeJob.this.m8707r(this.f14566a, resource);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$d */
    /* loaded from: classes3.dex */
    public static class C1923d<Z> {

        /* renamed from: a */
        public Key f14568a;

        /* renamed from: b */
        public ResourceEncoder<Z> f14569b;

        /* renamed from: c */
        public u2j<Z> f14570c;

        /* renamed from: a */
        public void m8717a() {
            this.f14568a = null;
            this.f14569b = null;
            this.f14570c = null;
        }

        /* renamed from: b */
        public void m8718b(InterfaceC1924e interfaceC1924e, Options options) {
            GlideTrace.beginSection("DecodeJob.encode");
            try {
                interfaceC1924e.mo8721a().put(this.f14568a, new mse(this.f14569b, this.f14570c, options));
            } finally {
                this.f14570c.m57524d();
                GlideTrace.endSection();
            }
        }

        /* renamed from: c */
        public boolean m8719c() {
            return this.f14570c != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: d */
        public <X> void m8720d(Key key, ResourceEncoder<X> resourceEncoder, u2j<X> u2jVar) {
            this.f14568a = key;
            this.f14569b = resourceEncoder;
            this.f14570c = u2jVar;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$e */
    /* loaded from: classes3.dex */
    public interface InterfaceC1924e {
        /* renamed from: a */
        DiskCache mo8721a();
    }

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$f */
    /* loaded from: classes3.dex */
    public static class C1925f {

        /* renamed from: a */
        public boolean f14571a;

        /* renamed from: b */
        public boolean f14572b;

        /* renamed from: c */
        public boolean f14573c;

        /* renamed from: a */
        public final boolean m8722a(boolean z) {
            return (this.f14573c || z || this.f14572b) && this.f14571a;
        }

        /* renamed from: b */
        public synchronized boolean m8723b() {
            this.f14572b = true;
            return m8722a(false);
        }

        /* renamed from: c */
        public synchronized boolean m8724c() {
            this.f14573c = true;
            return m8722a(false);
        }

        /* renamed from: d */
        public synchronized boolean m8725d(boolean z) {
            this.f14571a = true;
            return m8722a(z);
        }

        /* renamed from: e */
        public synchronized void m8726e() {
            this.f14572b = false;
            this.f14571a = false;
            this.f14573c = false;
        }
    }

    public DecodeJob(InterfaceC1924e interfaceC1924e, Pools.Pool<DecodeJob<?>> pool) {
        this.f14538h = interfaceC1924e;
        this.f14539i = pool;
    }

    /* renamed from: a */
    public void m8690a() {
        this.f14557v0 = true;
        DataFetcherGenerator dataFetcherGenerator = this.f14553t0;
        if (dataFetcherGenerator != null) {
            dataFetcherGenerator.cancel();
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull DecodeJob<?> decodeJob) {
        int m8698i = m8698i() - decodeJob.m8698i();
        return m8698i == 0 ? this.f14554u - decodeJob.f14554u : m8698i;
    }

    /* renamed from: c */
    public final <Data> Resource<R> m8692c(DataFetcher<?> dataFetcher, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            dataFetcher.cleanup();
            return null;
        }
        try {
            long logTime = LogTime.getLogTime();
            Resource<R> m8693d = m8693d(data, dataSource);
            if (Log.isLoggable(f14530x0, 2)) {
                m8700k("Decoded result " + m8693d, logTime);
            }
            return m8693d;
        } finally {
            dataFetcher.cleanup();
        }
    }

    /* renamed from: d */
    public final <Data> Resource<R> m8693d(Data data, DataSource dataSource) throws GlideException {
        return m8711v(data, dataSource, this.f14535e.m8805h(data.getClass()));
    }

    /* renamed from: e */
    public final void m8694e() {
        Resource<R> resource;
        if (Log.isLoggable(f14530x0, 2)) {
            m8701l("Retrieved data", this.f14560x, "data: " + this.f14534Z + ", cache key: " + this.f14532O + ", fetcher: " + this.f14549q0);
        }
        try {
            resource = m8692c(this.f14549q0, this.f14534Z, this.f14542k0);
        } catch (GlideException e) {
            e.setLoggingDetails(this.f14533Q, this.f14542k0);
            this.f14536f.add(e);
            resource = null;
        }
        if (resource != null) {
            m8703n(resource, this.f14542k0, this.f14559w0);
        } else {
            m8710u();
        }
    }

    /* renamed from: f */
    public final DataFetcherGenerator m8695f() {
        int i = C1920a.f14564b[this.f14556v.ordinal()];
        if (i == 1) {
            return new C1963f(this.f14535e, this);
        }
        if (i == 2) {
            return new C1937b(this.f14535e, this);
        }
        if (i == 3) {
            return new C1964g(this.f14535e, this);
        }
        if (i == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.f14556v);
    }

    /* renamed from: g */
    public final Stage m8696g(Stage stage) {
        int i = C1920a.f14564b[stage.ordinal()];
        if (i == 1) {
            return this.f14550r.decodeCachedData() ? Stage.DATA_CACHE : m8696g(Stage.DATA_CACHE);
        }
        if (i == 2) {
            return this.f14561y ? Stage.FINISHED : Stage.SOURCE;
        }
        if (i == 3 || i == 4) {
            return Stage.FINISHED;
        }
        if (i == 5) {
            return this.f14550r.decodeCachedResource() ? Stage.RESOURCE_CACHE : m8696g(Stage.RESOURCE_CACHE);
        }
        throw new IllegalArgumentException("Unrecognized stage: " + stage);
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public StateVerifier getVerifier() {
        return this.f14537g;
    }

    @NonNull
    /* renamed from: h */
    public final Options m8697h(DataSource dataSource) {
        Options options = this.f14551s;
        boolean z = dataSource == DataSource.RESOURCE_DISK_CACHE || this.f14535e.m8820w();
        Option<Boolean> option = Downsampler.ALLOW_HARDWARE_CONFIG;
        Boolean bool = (Boolean) options.get(option);
        if (bool != null && (!bool.booleanValue() || z)) {
            return options;
        }
        Options options2 = new Options();
        options2.putAll(this.f14551s);
        options2.set(option, Boolean.valueOf(z));
        return options2;
    }

    /* renamed from: i */
    public final int m8698i() {
        return this.f14545n.ordinal();
    }

    /* renamed from: j */
    public DecodeJob<R> m8699j(GlideContext glideContext, Object obj, uqf uqfVar, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, Options options, InterfaceC1921b<R> interfaceC1921b, int i3) {
        this.f14535e.m8818u(glideContext, obj, key, i, i2, diskCacheStrategy, cls, cls2, priority, options, map, z, z2, this.f14538h);
        this.f14543l = glideContext;
        this.f14544m = key;
        this.f14545n = priority;
        this.f14546o = uqfVar;
        this.f14547p = i;
        this.f14548q = i2;
        this.f14550r = diskCacheStrategy;
        this.f14561y = z3;
        this.f14551s = options;
        this.f14552t = interfaceC1921b;
        this.f14554u = i3;
        this.f14558w = RunReason.INITIALIZE;
        this.f14562z = obj;
        return this;
    }

    /* renamed from: k */
    public final void m8700k(String str, long j) {
        m8701l(str, j, null);
    }

    /* renamed from: l */
    public final void m8701l(String str, long j, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(CloudStorageConstants.OPERATION_IN);
        sb.append(LogTime.getElapsedMillis(j));
        sb.append(", load key: ");
        sb.append(this.f14546o);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v(f14530x0, sb.toString());
    }

    /* renamed from: m */
    public final void m8702m(Resource<R> resource, DataSource dataSource, boolean z) {
        m8713x();
        this.f14552t.onResourceReady(resource, dataSource, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public final void m8703n(Resource<R> resource, DataSource dataSource, boolean z) {
        u2j u2jVar;
        if (resource instanceof Initializable) {
            ((Initializable) resource).initialize();
        }
        if (this.f14540j.m8719c()) {
            resource = u2j.m57521b(resource);
            u2jVar = resource;
        } else {
            u2jVar = 0;
        }
        m8702m(resource, dataSource, z);
        this.f14556v = Stage.ENCODE;
        try {
            if (this.f14540j.m8719c()) {
                this.f14540j.m8718b(this.f14538h, this.f14551s);
            }
            m8705p();
        } finally {
            if (u2jVar != 0) {
                u2jVar.m57524d();
            }
        }
    }

    /* renamed from: o */
    public final void m8704o() {
        m8713x();
        this.f14552t.onLoadFailed(new GlideException("Failed to load resource", new ArrayList(this.f14536f)));
        m8706q();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource) {
        dataFetcher.cleanup();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.setLoggingDetails(key, dataSource, dataFetcher.getDataClass());
        this.f14536f.add(glideException);
        if (Thread.currentThread() == this.f14531J) {
            m8710u();
        } else {
            this.f14558w = RunReason.SWITCH_TO_SOURCE_SERVICE;
            this.f14552t.mo8715a(this);
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherReady(Key key, Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2) {
        this.f14532O = key;
        this.f14534Z = obj;
        this.f14549q0 = dataFetcher;
        this.f14542k0 = dataSource;
        this.f14533Q = key2;
        this.f14559w0 = key != this.f14535e.m8800c().get(0);
        if (Thread.currentThread() != this.f14531J) {
            this.f14558w = RunReason.DECODE_DATA;
            this.f14552t.mo8715a(this);
        } else {
            GlideTrace.beginSection("DecodeJob.decodeFromRetrievedData");
            try {
                m8694e();
            } finally {
                GlideTrace.endSection();
            }
        }
    }

    /* renamed from: p */
    public final void m8705p() {
        if (this.f14541k.m8723b()) {
            m8709t();
        }
    }

    /* renamed from: q */
    public final void m8706q() {
        if (this.f14541k.m8724c()) {
            m8709t();
        }
    }

    @NonNull
    /* renamed from: r */
    public <Z> Resource<Z> m8707r(DataSource dataSource, @NonNull Resource<Z> resource) {
        Resource<Z> resource2;
        Transformation<Z> transformation;
        EncodeStrategy encodeStrategy;
        Key lseVar;
        Class<?> cls = resource.get().getClass();
        ResourceEncoder<Z> resourceEncoder = null;
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            Transformation<Z> m8815r = this.f14535e.m8815r(cls);
            transformation = m8815r;
            resource2 = m8815r.transform(this.f14543l, resource, this.f14547p, this.f14548q);
        } else {
            resource2 = resource;
            transformation = null;
        }
        if (!resource.equals(resource2)) {
            resource.recycle();
        }
        if (this.f14535e.m8819v(resource2)) {
            resourceEncoder = this.f14535e.m8811n(resource2);
            encodeStrategy = resourceEncoder.getEncodeStrategy(this.f14551s);
        } else {
            encodeStrategy = EncodeStrategy.NONE;
        }
        ResourceEncoder resourceEncoder2 = resourceEncoder;
        if (!this.f14550r.isResourceCacheable(!this.f14535e.m8821x(this.f14532O), dataSource, encodeStrategy)) {
            return resource2;
        }
        if (resourceEncoder2 == null) {
            throw new Registry.NoResultEncoderAvailableException(resource2.get().getClass());
        }
        int i = C1920a.f14565c[encodeStrategy.ordinal()];
        if (i == 1) {
            lseVar = new lse(this.f14532O, this.f14544m);
        } else {
            if (i != 2) {
                throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
            }
            lseVar = new qll(this.f14535e.m8799b(), this.f14532O, this.f14544m, this.f14547p, this.f14548q, transformation, cls, this.f14551s);
        }
        u2j m57521b = u2j.m57521b(resource2);
        this.f14540j.m8720d(lseVar, resourceEncoder2, m57521b);
        return m57521b;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void reschedule() {
        this.f14558w = RunReason.SWITCH_TO_SOURCE_SERVICE;
        this.f14552t.mo8715a(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        GlideTrace.beginSectionFormat("DecodeJob#run(model=%s)", this.f14562z);
        DataFetcher<?> dataFetcher = this.f14549q0;
        try {
            try {
                try {
                    if (this.f14557v0) {
                        m8704o();
                        if (dataFetcher != null) {
                            dataFetcher.cleanup();
                        }
                        GlideTrace.endSection();
                        return;
                    }
                    m8712w();
                    if (dataFetcher != null) {
                        dataFetcher.cleanup();
                    }
                    GlideTrace.endSection();
                } catch (CallbackException e) {
                    throw e;
                }
            } catch (Throwable th) {
                if (Log.isLoggable(f14530x0, 3)) {
                    Log.d(f14530x0, "DecodeJob threw unexpectedly, isCancelled: " + this.f14557v0 + ", stage: " + this.f14556v, th);
                }
                if (this.f14556v != Stage.ENCODE) {
                    this.f14536f.add(th);
                    m8704o();
                }
                if (!this.f14557v0) {
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (dataFetcher != null) {
                dataFetcher.cleanup();
            }
            GlideTrace.endSection();
            throw th2;
        }
    }

    /* renamed from: s */
    public void m8708s(boolean z) {
        if (this.f14541k.m8725d(z)) {
            m8709t();
        }
    }

    /* renamed from: t */
    public final void m8709t() {
        this.f14541k.m8726e();
        this.f14540j.m8717a();
        this.f14535e.m8798a();
        this.f14555u0 = false;
        this.f14543l = null;
        this.f14544m = null;
        this.f14551s = null;
        this.f14545n = null;
        this.f14546o = null;
        this.f14552t = null;
        this.f14556v = null;
        this.f14553t0 = null;
        this.f14531J = null;
        this.f14532O = null;
        this.f14534Z = null;
        this.f14542k0 = null;
        this.f14549q0 = null;
        this.f14560x = 0L;
        this.f14557v0 = false;
        this.f14562z = null;
        this.f14536f.clear();
        this.f14539i.release(this);
    }

    /* renamed from: u */
    public final void m8710u() {
        this.f14531J = Thread.currentThread();
        this.f14560x = LogTime.getLogTime();
        boolean z = false;
        while (!this.f14557v0 && this.f14553t0 != null && !(z = this.f14553t0.mo8689a())) {
            this.f14556v = m8696g(this.f14556v);
            this.f14553t0 = m8695f();
            if (this.f14556v == Stage.SOURCE) {
                reschedule();
                return;
            }
        }
        if ((this.f14556v == Stage.FINISHED || this.f14557v0) && !z) {
            m8704o();
        }
    }

    /* renamed from: v */
    public final <Data, ResourceType> Resource<R> m8711v(Data data, DataSource dataSource, LoadPath<Data, ResourceType, R> loadPath) throws GlideException {
        Options m8697h = m8697h(dataSource);
        DataRewinder<Data> rewinder = this.f14543l.getRegistry().getRewinder(data);
        try {
            return loadPath.load(rewinder, m8697h, this.f14547p, this.f14548q, new C1922c(dataSource));
        } finally {
            rewinder.cleanup();
        }
    }

    /* renamed from: w */
    public final void m8712w() {
        int i = C1920a.f14563a[this.f14558w.ordinal()];
        if (i == 1) {
            this.f14556v = m8696g(Stage.INITIALIZE);
            this.f14553t0 = m8695f();
            m8710u();
        } else if (i == 2) {
            m8710u();
        } else {
            if (i == 3) {
                m8694e();
                return;
            }
            throw new IllegalStateException("Unrecognized run reason: " + this.f14558w);
        }
    }

    /* renamed from: x */
    public final void m8713x() {
        Throwable th;
        this.f14537g.throwIfRecycled();
        if (!this.f14555u0) {
            this.f14555u0 = true;
            return;
        }
        if (this.f14536f.isEmpty()) {
            th = null;
        } else {
            List<Throwable> list = this.f14536f;
            th = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    /* renamed from: y */
    public boolean m8714y() {
        Stage m8696g = m8696g(Stage.INITIALIZE);
        return m8696g == Stage.RESOURCE_CACHE || m8696g == Stage.DATA_CACHE;
    }
}
