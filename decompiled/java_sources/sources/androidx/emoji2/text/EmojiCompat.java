package androidx.emoji2.text;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.CheckResult;
import androidx.annotation.ColorInt;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.DefaultEmojiCompatConfig;
import com.sunia.HTREnginev2.tof;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@AnyThread
/* loaded from: classes3.dex */
public class EmojiCompat {
    public static final String EDITOR_INFO_METAVERSION_KEY = "android.support.text.emoji.emojiCompat_metadataVersion";
    public static final String EDITOR_INFO_REPLACE_ALL_KEY = "android.support.text.emoji.emojiCompat_replaceAll";
    public static final int EMOJI_FALLBACK = 2;
    public static final int EMOJI_SUPPORTED = 1;
    public static final int EMOJI_UNSUPPORTED = 0;
    public static final int LOAD_STATE_DEFAULT = 3;
    public static final int LOAD_STATE_FAILED = 2;
    public static final int LOAD_STATE_LOADING = 0;
    public static final int LOAD_STATE_SUCCEEDED = 1;
    public static final int LOAD_STRATEGY_DEFAULT = 0;
    public static final int LOAD_STRATEGY_MANUAL = 1;
    public static final int REPLACE_STRATEGY_ALL = 1;
    public static final int REPLACE_STRATEGY_DEFAULT = 0;
    public static final int REPLACE_STRATEGY_NON_EXISTENT = 2;

    /* renamed from: o */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int f6927o = Integer.MAX_VALUE;

    /* renamed from: p */
    public static final Object f6928p = new Object();

    /* renamed from: q */
    public static final Object f6929q = new Object();

    /* renamed from: r */
    @Nullable
    @GuardedBy("INSTANCE_LOCK")
    public static volatile EmojiCompat f6930r = null;

    /* renamed from: s */
    @GuardedBy("CONFIG_LOCK")
    public static volatile boolean f6931s = false;

    /* renamed from: t */
    public static final String f6932t = "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.";

    /* renamed from: b */
    @NonNull
    @GuardedBy("mInitLock")
    public final Set<InitCallback> f6934b;

    /* renamed from: e */
    @NonNull
    public final C1033b f6937e;

    /* renamed from: f */
    @NonNull
    public final MetadataRepoLoader f6938f;

    /* renamed from: g */
    @NonNull
    public final SpanFactory f6939g;

    /* renamed from: h */
    public final boolean f6940h;

    /* renamed from: i */
    public final boolean f6941i;

    /* renamed from: j */
    @Nullable
    public final int[] f6942j;

    /* renamed from: k */
    public final boolean f6943k;

    /* renamed from: l */
    public final int f6944l;

    /* renamed from: m */
    public final int f6945m;

    /* renamed from: n */
    public final GlyphChecker f6946n;

    /* renamed from: a */
    @NonNull
    public final ReadWriteLock f6933a = new ReentrantReadWriteLock();

    /* renamed from: c */
    @GuardedBy("mInitLock")
    public volatile int f6935c = 3;

    /* renamed from: d */
    @NonNull
    public final Handler f6936d = new Handler(Looper.getMainLooper());

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface CodepointSequenceMatchResult {
    }

    /* loaded from: classes3.dex */
    public static abstract class Config {

        /* renamed from: a */
        @NonNull
        public final MetadataRepoLoader f6947a;

        /* renamed from: b */
        public SpanFactory f6948b;

        /* renamed from: c */
        public boolean f6949c;

        /* renamed from: d */
        public boolean f6950d;

        /* renamed from: e */
        @Nullable
        public int[] f6951e;

        /* renamed from: f */
        @Nullable
        public Set<InitCallback> f6952f;

        /* renamed from: g */
        public boolean f6953g;

        /* renamed from: h */
        public int f6954h = -16711936;

        /* renamed from: i */
        public int f6955i = 0;

        /* renamed from: j */
        @NonNull
        public GlyphChecker f6956j = new C1042a();

        public Config(@NonNull MetadataRepoLoader metadataRepoLoader) {
            Preconditions.checkNotNull(metadataRepoLoader, "metadataLoader cannot be null.");
            this.f6947a = metadataRepoLoader;
        }

        @NonNull
        public final MetadataRepoLoader getMetadataRepoLoader() {
            return this.f6947a;
        }

        @NonNull
        public Config registerInitCallback(@NonNull InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
            if (this.f6952f == null) {
                this.f6952f = new ArraySet();
            }
            this.f6952f.add(initCallback);
            return this;
        }

        @NonNull
        public Config setEmojiSpanIndicatorColor(@ColorInt int i) {
            this.f6954h = i;
            return this;
        }

        @NonNull
        public Config setEmojiSpanIndicatorEnabled(boolean z) {
            this.f6953g = z;
            return this;
        }

        @NonNull
        public Config setGlyphChecker(@NonNull GlyphChecker glyphChecker) {
            Preconditions.checkNotNull(glyphChecker, "GlyphChecker cannot be null");
            this.f6956j = glyphChecker;
            return this;
        }

        @NonNull
        public Config setMetadataLoadStrategy(int i) {
            this.f6955i = i;
            return this;
        }

        @NonNull
        public Config setReplaceAll(boolean z) {
            this.f6949c = z;
            return this;
        }

        @NonNull
        public Config setSpanFactory(@NonNull SpanFactory spanFactory) {
            this.f6948b = spanFactory;
            return this;
        }

        @NonNull
        public Config setUseEmojiAsDefaultStyle(boolean z) {
            return setUseEmojiAsDefaultStyle(z, null);
        }

        @NonNull
        public Config unregisterInitCallback(@NonNull InitCallback initCallback) {
            Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
            Set<InitCallback> set = this.f6952f;
            if (set != null) {
                set.remove(initCallback);
            }
            return this;
        }

        @NonNull
        public Config setUseEmojiAsDefaultStyle(boolean z, @Nullable List<Integer> list) {
            this.f6950d = z;
            if (z && list != null) {
                this.f6951e = new int[list.size()];
                Iterator<Integer> it2 = list.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    this.f6951e[i] = it2.next().intValue();
                    i++;
                }
                Arrays.sort(this.f6951e);
            } else {
                this.f6951e = null;
            }
            return this;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public static class DefaultSpanFactory implements SpanFactory {
        @Override // androidx.emoji2.text.EmojiCompat.SpanFactory
        @NonNull
        @RequiresApi(19)
        public EmojiSpan createSpan(@NonNull TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            return new TypefaceEmojiSpan(typefaceEmojiRasterizer);
        }
    }

    /* loaded from: classes3.dex */
    public interface GlyphChecker {
        boolean hasGlyph(@NonNull CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3);
    }

    /* loaded from: classes3.dex */
    public static abstract class InitCallback {
        public void onFailed(@Nullable Throwable th) {
        }

        public void onInitialized() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface LoadStrategy {
    }

    /* loaded from: classes3.dex */
    public interface MetadataRepoLoader {
        void load(@NonNull MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    /* loaded from: classes3.dex */
    public static abstract class MetadataRepoLoaderCallback {
        public abstract void onFailed(@Nullable Throwable th);

        public abstract void onLoaded(@NonNull MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface ReplaceStrategy {
    }

    /* loaded from: classes3.dex */
    public interface SpanFactory {
        @NonNull
        @RequiresApi(19)
        EmojiSpan createSpan(@NonNull TypefaceEmojiRasterizer typefaceEmojiRasterizer);
    }

    @RequiresApi(19)
    /* renamed from: androidx.emoji2.text.EmojiCompat$a */
    /* loaded from: classes3.dex */
    public static final class C1032a extends C1033b {

        /* renamed from: b */
        public volatile C1043b f6957b;

        /* renamed from: c */
        public volatile MetadataRepo f6958c;

        /* renamed from: androidx.emoji2.text.EmojiCompat$a$a */
        /* loaded from: classes3.dex */
        public class a extends MetadataRepoLoaderCallback {
            public a() {
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public void onFailed(@Nullable Throwable th) {
                C1032a.this.f6960a.m4221e(th);
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public void onLoaded(@NonNull MetadataRepo metadataRepo) {
                C1032a.this.m4232j(metadataRepo);
            }
        }

        public C1032a(EmojiCompat emojiCompat) {
            super(emojiCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: a */
        public String mo4223a() {
            String sourceSha = this.f6958c.getMetadataList().sourceSha();
            return sourceSha == null ? "" : sourceSha;
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: b */
        public int mo4224b(@NonNull CharSequence charSequence, int i) {
            return this.f6957b.m4274b(charSequence, i);
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: c */
        public int mo4225c(CharSequence charSequence, int i) {
            return this.f6957b.m4276d(charSequence, i);
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: d */
        public int mo4226d(@NonNull CharSequence charSequence, int i) {
            return this.f6957b.m4277e(charSequence, i);
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: e */
        public boolean mo4227e(@NonNull CharSequence charSequence) {
            return this.f6957b.m4275c(charSequence) == 1;
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: f */
        public boolean mo4228f(@NonNull CharSequence charSequence, int i) {
            return this.f6957b.m4276d(charSequence, i) == 1;
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: g */
        public void mo4229g() {
            try {
                this.f6960a.f6938f.load(new a());
            } catch (Throwable th) {
                this.f6960a.m4221e(th);
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: h */
        public CharSequence mo4230h(@NonNull CharSequence charSequence, int i, int i2, int i3, boolean z) {
            return this.f6957b.m4280l(charSequence, i, i2, i3, z);
        }

        @Override // androidx.emoji2.text.EmojiCompat.C1033b
        /* renamed from: i */
        public void mo4231i(@NonNull EditorInfo editorInfo) {
            editorInfo.extras.putInt(EmojiCompat.EDITOR_INFO_METAVERSION_KEY, this.f6958c.m4248b());
            editorInfo.extras.putBoolean(EmojiCompat.EDITOR_INFO_REPLACE_ALL_KEY, this.f6960a.f6940h);
        }

        /* renamed from: j */
        public void m4232j(@NonNull MetadataRepo metadataRepo) {
            if (metadataRepo == null) {
                this.f6960a.m4221e(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f6958c = metadataRepo;
            MetadataRepo metadataRepo2 = this.f6958c;
            SpanFactory spanFactory = this.f6960a.f6939g;
            GlyphChecker glyphChecker = this.f6960a.f6946n;
            EmojiCompat emojiCompat = this.f6960a;
            this.f6957b = new C1043b(metadataRepo2, spanFactory, glyphChecker, emojiCompat.f6941i, emojiCompat.f6942j, tof.m57417a());
            this.f6960a.m4222f();
        }
    }

    /* renamed from: androidx.emoji2.text.EmojiCompat$b */
    /* loaded from: classes3.dex */
    public static class C1033b {

        /* renamed from: a */
        public final EmojiCompat f6960a;

        public C1033b(EmojiCompat emojiCompat) {
            this.f6960a = emojiCompat;
        }

        /* renamed from: a */
        public String mo4223a() {
            return "";
        }

        /* renamed from: b */
        public int mo4224b(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
            return -1;
        }

        /* renamed from: c */
        public int mo4225c(CharSequence charSequence, int i) {
            return 0;
        }

        /* renamed from: d */
        public int mo4226d(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
            return -1;
        }

        /* renamed from: e */
        public boolean mo4227e(@NonNull CharSequence charSequence) {
            return false;
        }

        /* renamed from: f */
        public boolean mo4228f(@NonNull CharSequence charSequence, int i) {
            return false;
        }

        /* renamed from: g */
        public void mo4229g() {
            this.f6960a.m4222f();
        }

        /* renamed from: h */
        public CharSequence mo4230h(@NonNull CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3, boolean z) {
            return charSequence;
        }

        /* renamed from: i */
        public void mo4231i(@NonNull EditorInfo editorInfo) {
        }
    }

    /* renamed from: androidx.emoji2.text.EmojiCompat$c */
    /* loaded from: classes3.dex */
    public static class RunnableC1034c implements Runnable {

        /* renamed from: e */
        public final List<InitCallback> f6961e;

        /* renamed from: f */
        public final Throwable f6962f;

        /* renamed from: g */
        public final int f6963g;

        public RunnableC1034c(@NonNull InitCallback initCallback, int i) {
            this(Arrays.asList((InitCallback) Preconditions.checkNotNull(initCallback, "initCallback cannot be null")), i, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f6961e.size();
            int i = 0;
            if (this.f6963g != 1) {
                while (i < size) {
                    this.f6961e.get(i).onFailed(this.f6962f);
                    i++;
                }
            } else {
                while (i < size) {
                    this.f6961e.get(i).onInitialized();
                    i++;
                }
            }
        }

        public RunnableC1034c(@NonNull Collection<InitCallback> collection, int i) {
            this(collection, i, null);
        }

        public RunnableC1034c(@NonNull Collection<InitCallback> collection, int i, @Nullable Throwable th) {
            Preconditions.checkNotNull(collection, "initCallbacks cannot be null");
            this.f6961e = new ArrayList(collection);
            this.f6963g = i;
            this.f6962f = th;
        }
    }

    public EmojiCompat(@NonNull Config config) {
        this.f6940h = config.f6949c;
        this.f6941i = config.f6950d;
        this.f6942j = config.f6951e;
        this.f6943k = config.f6953g;
        this.f6944l = config.f6954h;
        this.f6938f = config.f6947a;
        this.f6945m = config.f6955i;
        this.f6946n = config.f6956j;
        ArraySet arraySet = new ArraySet();
        this.f6934b = arraySet;
        SpanFactory spanFactory = config.f6948b;
        this.f6939g = spanFactory == null ? new DefaultSpanFactory() : spanFactory;
        Set<InitCallback> set = config.f6952f;
        if (set != null && !set.isEmpty()) {
            arraySet.addAll(config.f6952f);
        }
        this.f6937e = new C1032a(this);
        m4220d();
    }

    @NonNull
    public static EmojiCompat get() {
        EmojiCompat emojiCompat;
        synchronized (f6928p) {
            emojiCompat = f6930r;
            Preconditions.checkState(emojiCompat != null, f6932t);
        }
        return emojiCompat;
    }

    public static boolean handleDeleteSurroundingText(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, boolean z) {
        return C1043b.m4270f(inputConnection, editable, i, i2, z);
    }

    public static boolean handleOnKeyDown(@NonNull Editable editable, int i, @NonNull KeyEvent keyEvent) {
        return C1043b.m4271g(editable, i, keyEvent);
    }

    @Nullable
    public static EmojiCompat init(@NonNull Context context) {
        return init(context, null);
    }

    public static boolean isConfigured() {
        return f6930r != null;
    }

    @NonNull
    public static EmojiCompat reset(@NonNull Config config) {
        EmojiCompat emojiCompat;
        synchronized (f6928p) {
            emojiCompat = new EmojiCompat(config);
            f6930r = emojiCompat;
        }
        return emojiCompat;
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public static void skipDefaultConfigurationLookup(boolean z) {
        synchronized (f6929q) {
            f6931s = z;
        }
    }

    /* renamed from: c */
    public final boolean m4219c() {
        return getLoadState() == 1;
    }

    /* renamed from: d */
    public final void m4220d() {
        this.f6933a.writeLock().lock();
        try {
            if (this.f6945m == 0) {
                this.f6935c = 0;
            }
            this.f6933a.writeLock().unlock();
            if (getLoadState() == 0) {
                this.f6937e.mo4229g();
            }
        } catch (Throwable th) {
            this.f6933a.writeLock().unlock();
            throw th;
        }
    }

    /* renamed from: e */
    public void m4221e(@Nullable Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f6933a.writeLock().lock();
        try {
            this.f6935c = 2;
            arrayList.addAll(this.f6934b);
            this.f6934b.clear();
            this.f6933a.writeLock().unlock();
            this.f6936d.post(new RunnableC1034c(arrayList, this.f6935c, th));
        } catch (Throwable th2) {
            this.f6933a.writeLock().unlock();
            throw th2;
        }
    }

    /* renamed from: f */
    public void m4222f() {
        ArrayList arrayList = new ArrayList();
        this.f6933a.writeLock().lock();
        try {
            this.f6935c = 1;
            arrayList.addAll(this.f6934b);
            this.f6934b.clear();
            this.f6933a.writeLock().unlock();
            this.f6936d.post(new RunnableC1034c(arrayList, this.f6935c));
        } catch (Throwable th) {
            this.f6933a.writeLock().unlock();
            throw th;
        }
    }

    @NonNull
    public String getAssetSignature() {
        Preconditions.checkState(m4219c(), "Not initialized yet");
        return this.f6937e.mo4223a();
    }

    public int getEmojiEnd(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        return this.f6937e.mo4224b(charSequence, i);
    }

    public int getEmojiMatch(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        Preconditions.checkState(m4219c(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        return this.f6937e.mo4225c(charSequence, i);
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getEmojiSpanIndicatorColor() {
        return this.f6944l;
    }

    public int getEmojiStart(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        return this.f6937e.mo4226d(charSequence, i);
    }

    public int getLoadState() {
        this.f6933a.readLock().lock();
        try {
            return this.f6935c;
        } finally {
            this.f6933a.readLock().unlock();
        }
    }

    @Deprecated
    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence) {
        Preconditions.checkState(m4219c(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        return this.f6937e.mo4227e(charSequence);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isEmojiSpanIndicatorEnabled() {
        return this.f6943k;
    }

    public void load() {
        Preconditions.checkState(this.f6945m == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (m4219c()) {
            return;
        }
        this.f6933a.writeLock().lock();
        try {
            if (this.f6935c == 0) {
                return;
            }
            this.f6935c = 0;
            this.f6933a.writeLock().unlock();
            this.f6937e.mo4229g();
        } finally {
            this.f6933a.writeLock().unlock();
        }
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence) {
        return process(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public void registerInitCallback(@NonNull InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
        this.f6933a.writeLock().lock();
        try {
            if (this.f6935c != 1 && this.f6935c != 2) {
                this.f6934b.add(initCallback);
            }
            this.f6936d.post(new RunnableC1034c(initCallback, this.f6935c));
        } finally {
            this.f6933a.writeLock().unlock();
        }
    }

    public void unregisterInitCallback(@NonNull InitCallback initCallback) {
        Preconditions.checkNotNull(initCallback, "initCallback cannot be null");
        this.f6933a.writeLock().lock();
        try {
            this.f6934b.remove(initCallback);
        } finally {
            this.f6933a.writeLock().unlock();
        }
    }

    public void updateEditorInfo(@NonNull EditorInfo editorInfo) {
        if (!m4219c() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.f6937e.mo4231i(editorInfo);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static EmojiCompat init(@NonNull Context context, @Nullable DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory defaultEmojiCompatConfigFactory) {
        EmojiCompat emojiCompat;
        if (f6931s) {
            return f6930r;
        }
        if (defaultEmojiCompatConfigFactory == null) {
            defaultEmojiCompatConfigFactory = new DefaultEmojiCompatConfig.DefaultEmojiCompatConfigFactory(null);
        }
        Config create = defaultEmojiCompatConfigFactory.create(context);
        synchronized (f6929q) {
            if (!f6931s) {
                if (create != null) {
                    init(create);
                }
                f6931s = true;
            }
            emojiCompat = f6930r;
        }
        return emojiCompat;
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2) {
        return process(charSequence, i, i2, Integer.MAX_VALUE);
    }

    @Deprecated
    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence, @IntRange(from = 0) int i) {
        Preconditions.checkState(m4219c(), "Not initialized yet");
        Preconditions.checkNotNull(charSequence, "sequence cannot be null");
        return this.f6937e.mo4228f(charSequence, i);
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3) {
        return process(charSequence, i, i2, i3, 0);
    }

    @Nullable
    @CheckResult
    public CharSequence process(@Nullable CharSequence charSequence, @IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0) int i3, int i4) {
        boolean z;
        Preconditions.checkState(m4219c(), "Not initialized yet");
        Preconditions.checkArgumentNonnegative(i, "start cannot be negative");
        Preconditions.checkArgumentNonnegative(i2, "end cannot be negative");
        Preconditions.checkArgumentNonnegative(i3, "maxEmojiCount cannot be negative");
        Preconditions.checkArgument(i <= i2, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        Preconditions.checkArgument(i <= charSequence.length(), "start should be < than charSequence length");
        Preconditions.checkArgument(i2 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i == i2) {
            return charSequence;
        }
        if (i4 != 1) {
            z = i4 != 2 ? this.f6940h : false;
        } else {
            z = true;
        }
        return this.f6937e.mo4230h(charSequence, i, i2, i3, z);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.TESTS})
    public static EmojiCompat reset(@Nullable EmojiCompat emojiCompat) {
        EmojiCompat emojiCompat2;
        synchronized (f6928p) {
            f6930r = emojiCompat;
            emojiCompat2 = f6930r;
        }
        return emojiCompat2;
    }

    @NonNull
    public static EmojiCompat init(@NonNull Config config) {
        EmojiCompat emojiCompat = f6930r;
        if (emojiCompat == null) {
            synchronized (f6928p) {
                emojiCompat = f6930r;
                if (emojiCompat == null) {
                    emojiCompat = new EmojiCompat(config);
                    f6930r = emojiCompat;
                }
            }
        }
        return emojiCompat;
    }
}
