package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.c8e;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {

    /* renamed from: k */
    public static final FontProviderHelper f6977k = new FontProviderHelper();

    /* loaded from: classes3.dex */
    public static class ExponentialBackoffRetryPolicy extends RetryPolicy {

        /* renamed from: a */
        public final long f6978a;

        /* renamed from: b */
        public long f6979b;

        public ExponentialBackoffRetryPolicy(long j) {
            this.f6978a = j;
        }

        @Override // androidx.emoji2.text.FontRequestEmojiCompatConfig.RetryPolicy
        public long getRetryDelay() {
            if (this.f6979b == 0) {
                this.f6979b = SystemClock.uptimeMillis();
                return 0L;
            }
            long uptimeMillis = SystemClock.uptimeMillis() - this.f6979b;
            if (uptimeMillis > this.f6978a) {
                return -1L;
            }
            return Math.min(Math.max(uptimeMillis, 1000L), this.f6978a - uptimeMillis);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public static class FontProviderHelper {
        @Nullable
        public Typeface buildTypeface(@NonNull Context context, @NonNull FontsContractCompat.FontInfo fontInfo) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.buildTypeface(context, null, new FontsContractCompat.FontInfo[]{fontInfo});
        }

        @NonNull
        public FontsContractCompat.FontFamilyResult fetchFonts(@NonNull Context context, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.fetchFonts(context, null, fontRequest);
        }

        public void registerObserver(@NonNull Context context, @NonNull Uri uri, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void unregisterObserver(@NonNull Context context, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class RetryPolicy {
        public abstract long getRetryDelay();
    }

    /* renamed from: androidx.emoji2.text.FontRequestEmojiCompatConfig$a */
    /* loaded from: classes3.dex */
    public static class C1039a implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: l */
        public static final String f6980l = "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface";

        /* renamed from: a */
        @NonNull
        public final Context f6981a;

        /* renamed from: b */
        @NonNull
        public final FontRequest f6982b;

        /* renamed from: c */
        @NonNull
        public final FontProviderHelper f6983c;

        /* renamed from: d */
        @NonNull
        public final Object f6984d = new Object();

        /* renamed from: e */
        @Nullable
        @GuardedBy("mLock")
        public Handler f6985e;

        /* renamed from: f */
        @Nullable
        @GuardedBy("mLock")
        public Executor f6986f;

        /* renamed from: g */
        @Nullable
        @GuardedBy("mLock")
        public ThreadPoolExecutor f6987g;

        /* renamed from: h */
        @Nullable
        @GuardedBy("mLock")
        public RetryPolicy f6988h;

        /* renamed from: i */
        @Nullable
        @GuardedBy("mLock")
        public EmojiCompat.MetadataRepoLoaderCallback f6989i;

        /* renamed from: j */
        @Nullable
        @GuardedBy("mLock")
        public ContentObserver f6990j;

        /* renamed from: k */
        @Nullable
        @GuardedBy("mLock")
        public Runnable f6991k;

        /* renamed from: androidx.emoji2.text.FontRequestEmojiCompatConfig$a$a */
        /* loaded from: classes3.dex */
        public class a extends ContentObserver {
            public a(Handler handler) {
                super(handler);
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                C1039a.this.m4242c();
            }
        }

        public C1039a(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontProviderHelper fontProviderHelper) {
            Preconditions.checkNotNull(context, "Context cannot be null");
            Preconditions.checkNotNull(fontRequest, "FontRequest cannot be null");
            this.f6981a = context.getApplicationContext();
            this.f6982b = fontRequest;
            this.f6983c = fontProviderHelper;
        }

        /* renamed from: a */
        public final void m4240a() {
            synchronized (this.f6984d) {
                this.f6989i = null;
                ContentObserver contentObserver = this.f6990j;
                if (contentObserver != null) {
                    this.f6983c.unregisterObserver(this.f6981a, contentObserver);
                    this.f6990j = null;
                }
                Handler handler = this.f6985e;
                if (handler != null) {
                    handler.removeCallbacks(this.f6991k);
                }
                this.f6985e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f6987g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f6986f = null;
                this.f6987g = null;
            }
        }

        @RequiresApi(19)
        @WorkerThread
        /* renamed from: b */
        public void m4241b() {
            synchronized (this.f6984d) {
                if (this.f6989i == null) {
                    return;
                }
                try {
                    FontsContractCompat.FontInfo m4243d = m4243d();
                    int resultCode = m4243d.getResultCode();
                    if (resultCode == 2) {
                        synchronized (this.f6984d) {
                            RetryPolicy retryPolicy = this.f6988h;
                            if (retryPolicy != null) {
                                long retryDelay = retryPolicy.getRetryDelay();
                                if (retryDelay >= 0) {
                                    m4244e(m4243d.getUri(), retryDelay);
                                    return;
                                }
                            }
                        }
                    }
                    if (resultCode != 0) {
                        throw new RuntimeException("fetchFonts result is not OK. (" + resultCode + MotionUtils.f31762d);
                    }
                    try {
                        TraceCompat.beginSection(f6980l);
                        Typeface buildTypeface = this.f6983c.buildTypeface(this.f6981a, m4243d);
                        ByteBuffer mmap = TypefaceCompatUtil.mmap(this.f6981a, null, m4243d.getUri());
                        if (mmap == null || buildTypeface == null) {
                            throw new RuntimeException("Unable to open file.");
                        }
                        MetadataRepo create = MetadataRepo.create(buildTypeface, mmap);
                        TraceCompat.endSection();
                        synchronized (this.f6984d) {
                            EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback = this.f6989i;
                            if (metadataRepoLoaderCallback != null) {
                                metadataRepoLoaderCallback.onLoaded(create);
                            }
                        }
                        m4240a();
                    } catch (Throwable th) {
                        TraceCompat.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    synchronized (this.f6984d) {
                        EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = this.f6989i;
                        if (metadataRepoLoaderCallback2 != null) {
                            metadataRepoLoaderCallback2.onFailed(th2);
                        }
                        m4240a();
                    }
                }
            }
        }

        @RequiresApi(19)
        /* renamed from: c */
        public void m4242c() {
            synchronized (this.f6984d) {
                if (this.f6989i == null) {
                    return;
                }
                if (this.f6986f == null) {
                    ThreadPoolExecutor m53408c = c8e.m53408c("emojiCompat");
                    this.f6987g = m53408c;
                    this.f6986f = m53408c;
                }
                this.f6986f.execute(new Runnable() { // from class: com.sunia.HTREnginev2.fsg
                    @Override // java.lang.Runnable
                    public final void run() {
                        FontRequestEmojiCompatConfig.C1039a.this.m4241b();
                    }
                });
            }
        }

        @WorkerThread
        /* renamed from: d */
        public final FontsContractCompat.FontInfo m4243d() {
            try {
                FontsContractCompat.FontFamilyResult fetchFonts = this.f6983c.fetchFonts(this.f6981a, this.f6982b);
                if (fetchFonts.getStatusCode() == 0) {
                    FontsContractCompat.FontInfo[] fonts = fetchFonts.getFonts();
                    if (fonts == null || fonts.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return fonts[0];
                }
                throw new RuntimeException("fetchFonts failed (" + fetchFonts.getStatusCode() + MotionUtils.f31762d);
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("provider not found", e);
            }
        }

        @RequiresApi(19)
        @WorkerThread
        /* renamed from: e */
        public final void m4244e(Uri uri, long j) {
            synchronized (this.f6984d) {
                Handler handler = this.f6985e;
                if (handler == null) {
                    handler = c8e.m53410e();
                    this.f6985e = handler;
                }
                if (this.f6990j == null) {
                    a aVar = new a(handler);
                    this.f6990j = aVar;
                    this.f6983c.registerObserver(this.f6981a, uri, aVar);
                }
                if (this.f6991k == null) {
                    this.f6991k = new Runnable() { // from class: com.sunia.HTREnginev2.gsg
                        @Override // java.lang.Runnable
                        public final void run() {
                            FontRequestEmojiCompatConfig.C1039a.this.m4242c();
                        }
                    };
                }
                handler.postDelayed(this.f6991k, j);
            }
        }

        /* renamed from: f */
        public void m4245f(@NonNull Executor executor) {
            synchronized (this.f6984d) {
                this.f6986f = executor;
            }
        }

        /* renamed from: g */
        public void m4246g(@Nullable RetryPolicy retryPolicy) {
            synchronized (this.f6984d) {
                this.f6988h = retryPolicy;
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        @RequiresApi(19)
        public void load(@NonNull EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            Preconditions.checkNotNull(metadataRepoLoaderCallback, "LoaderCallback cannot be null");
            synchronized (this.f6984d) {
                this.f6989i = metadataRepoLoaderCallback;
            }
            m4242c();
        }
    }

    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest) {
        super(new C1039a(context, fontRequest, f6977k));
    }

    @NonNull
    @Deprecated
    public FontRequestEmojiCompatConfig setHandler(@Nullable Handler handler) {
        if (handler == null) {
            return this;
        }
        setLoadingExecutor(c8e.m53407b(handler));
        return this;
    }

    @NonNull
    public FontRequestEmojiCompatConfig setLoadingExecutor(@NonNull Executor executor) {
        ((C1039a) getMetadataRepoLoader()).m4245f(executor);
        return this;
    }

    @NonNull
    public FontRequestEmojiCompatConfig setRetryPolicy(@Nullable RetryPolicy retryPolicy) {
        ((C1039a) getMetadataRepoLoader()).m4246g(retryPolicy);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontProviderHelper fontProviderHelper) {
        super(new C1039a(context, fontRequest, fontProviderHelper));
    }
}
