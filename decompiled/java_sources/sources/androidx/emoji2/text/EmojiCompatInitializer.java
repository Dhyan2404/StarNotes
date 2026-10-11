package androidx.emoji2.text;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.WorkerThread;
import androidx.core.os.TraceCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import com.sunia.HTREnginev2.c8e;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {

    /* renamed from: a */
    public static final long f6964a = 500;

    /* renamed from: b */
    public static final String f6965b = "EmojiCompatInitializer";

    @RequiresApi(19)
    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$a */
    /* loaded from: classes3.dex */
    public static class C1036a extends EmojiCompat.Config {
        public C1036a(Context context) {
            super(new C1037b(context));
            setMetadataLoadStrategy(1);
        }
    }

    @RequiresApi(19)
    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$b */
    /* loaded from: classes3.dex */
    public static class C1037b implements EmojiCompat.MetadataRepoLoader {

        /* renamed from: a */
        public final Context f6968a;

        /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$b$a */
        /* loaded from: classes3.dex */
        public class a extends EmojiCompat.MetadataRepoLoaderCallback {

            /* renamed from: a */
            public final /* synthetic */ EmojiCompat.MetadataRepoLoaderCallback f6969a;

            /* renamed from: b */
            public final /* synthetic */ ThreadPoolExecutor f6970b;

            public a(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback, ThreadPoolExecutor threadPoolExecutor) {
                this.f6969a = metadataRepoLoaderCallback;
                this.f6970b = threadPoolExecutor;
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public void onFailed(@Nullable Throwable th) {
                try {
                    this.f6969a.onFailed(th);
                } finally {
                    this.f6970b.shutdown();
                }
            }

            @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
            public void onLoaded(@NonNull MetadataRepo metadataRepo) {
                try {
                    this.f6969a.onLoaded(metadataRepo);
                } finally {
                    this.f6970b.shutdown();
                }
            }
        }

        public C1037b(Context context) {
            this.f6968a = context.getApplicationContext();
        }

        @WorkerThread
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void m4236c(@NonNull EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback, @NonNull ThreadPoolExecutor threadPoolExecutor) {
            try {
                FontRequestEmojiCompatConfig create = DefaultEmojiCompatConfig.create(this.f6968a);
                if (create == null) {
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                }
                create.setLoadingExecutor(threadPoolExecutor);
                create.getMetadataRepoLoader().load(new a(metadataRepoLoaderCallback, threadPoolExecutor));
            } catch (Throwable th) {
                metadataRepoLoaderCallback.onFailed(th);
                threadPoolExecutor.shutdown();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public void load(@NonNull final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            final ThreadPoolExecutor m53408c = c8e.m53408c(EmojiCompatInitializer.f6965b);
            m53408c.execute(new Runnable() { // from class: com.sunia.HTREnginev2.rof
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompatInitializer.C1037b.this.m4236c(metadataRepoLoaderCallback, m53408c);
                }
            });
        }
    }

    /* renamed from: androidx.emoji2.text.EmojiCompatInitializer$c */
    /* loaded from: classes3.dex */
    public static class RunnableC1038c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                TraceCompat.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.isConfigured()) {
                    EmojiCompat.get().load();
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    @RequiresApi(19)
    /* renamed from: a */
    public void m4233a(@NonNull Context context) {
        final Lifecycle lifecycle = ((LifecycleOwner) AppInitializer.getInstance(context).initializeComponent(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(@NonNull LifecycleOwner lifecycleOwner) {
                EmojiCompatInitializer.this.m4234b();
                lifecycle.removeObserver(this);
            }
        });
    }

    @RequiresApi(19)
    /* renamed from: b */
    public void m4234b() {
        c8e.m53410e().postDelayed(new RunnableC1038c(), 500L);
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NonNull
    public Boolean create(@NonNull Context context) {
        EmojiCompat.init(new C1036a(context));
        m4233a(context);
        return Boolean.TRUE;
    }
}
