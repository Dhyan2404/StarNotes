package com.bumptech.glide;

import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.List;
import java.util.Queue;

/* loaded from: classes3.dex */
public class ListPreloader<T> implements AbsListView.OnScrollListener {

    /* renamed from: e */
    public final int f14294e;

    /* renamed from: f */
    public final C1895b f14295f;

    /* renamed from: g */
    public final RequestManager f14296g;

    /* renamed from: h */
    public final PreloadModelProvider<T> f14297h;

    /* renamed from: i */
    public final PreloadSizeProvider<T> f14298i;

    /* renamed from: j */
    public int f14299j;

    /* renamed from: k */
    public int f14300k;

    /* renamed from: m */
    public int f14302m;

    /* renamed from: l */
    public int f14301l = -1;

    /* renamed from: n */
    public boolean f14303n = true;

    /* loaded from: classes3.dex */
    public interface PreloadModelProvider<U> {
        @NonNull
        List<U> getPreloadItems(int i);

        @Nullable
        RequestBuilder<?> getPreloadRequestBuilder(@NonNull U u);
    }

    /* loaded from: classes3.dex */
    public interface PreloadSizeProvider<T> {
        @Nullable
        int[] getPreloadSize(@NonNull T t, int i, int i2);
    }

    /* renamed from: com.bumptech.glide.ListPreloader$a */
    /* loaded from: classes3.dex */
    public static final class C1894a implements Target<Object> {

        /* renamed from: e */
        public int f14304e;

        /* renamed from: f */
        public int f14305f;

        /* renamed from: g */
        @Nullable
        public Request f14306g;

        @Override // com.bumptech.glide.request.target.Target
        @Nullable
        public Request getRequest() {
            return this.f14306g;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.onSizeReady(this.f14305f, this.f14304e);
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onDestroy() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadStarted(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStart() {
        }

        @Override // com.bumptech.glide.manager.LifecycleListener
        public void onStop() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void setRequest(@Nullable Request request) {
            this.f14306g = request;
        }
    }

    /* renamed from: com.bumptech.glide.ListPreloader$b */
    /* loaded from: classes3.dex */
    public static final class C1895b {

        /* renamed from: a */
        public final Queue<C1894a> f14307a;

        public C1895b(int i) {
            this.f14307a = Util.createQueue(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f14307a.offer(new C1894a());
            }
        }

        /* renamed from: a */
        public C1894a m8578a(int i, int i2) {
            C1894a poll = this.f14307a.poll();
            this.f14307a.offer(poll);
            poll.f14305f = i;
            poll.f14304e = i2;
            return poll;
        }
    }

    public ListPreloader(@NonNull RequestManager requestManager, @NonNull PreloadModelProvider<T> preloadModelProvider, @NonNull PreloadSizeProvider<T> preloadSizeProvider, int i) {
        this.f14296g = requestManager;
        this.f14297h = preloadModelProvider;
        this.f14298i = preloadSizeProvider;
        this.f14294e = i;
        this.f14295f = new C1895b(i + 1);
    }

    /* renamed from: a */
    public final void m8573a() {
        for (int i = 0; i < this.f14295f.f14307a.size(); i++) {
            this.f14296g.clear(this.f14295f.m8578a(0, 0));
        }
    }

    /* renamed from: b */
    public final void m8574b(int i, int i2) {
        int min;
        int i3;
        if (i < i2) {
            i3 = Math.max(this.f14299j, i);
            min = i2;
        } else {
            min = Math.min(this.f14300k, i);
            i3 = i2;
        }
        int min2 = Math.min(this.f14302m, min);
        int min3 = Math.min(this.f14302m, Math.max(0, i3));
        if (i < i2) {
            for (int i4 = min3; i4 < min2; i4++) {
                m8576d(this.f14297h.getPreloadItems(i4), i4, true);
            }
        } else {
            for (int i5 = min2 - 1; i5 >= min3; i5--) {
                m8576d(this.f14297h.getPreloadItems(i5), i5, false);
            }
        }
        this.f14300k = min3;
        this.f14299j = min2;
    }

    /* renamed from: c */
    public final void m8575c(int i, boolean z) {
        if (this.f14303n != z) {
            this.f14303n = z;
            m8573a();
        }
        m8574b(i, (z ? this.f14294e : -this.f14294e) + i);
    }

    /* renamed from: d */
    public final void m8576d(List<T> list, int i, boolean z) {
        int size = list.size();
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                m8577e(list.get(i2), i, i2);
            }
            return;
        }
        for (int i3 = size - 1; i3 >= 0; i3--) {
            m8577e(list.get(i3), i, i3);
        }
    }

    /* renamed from: e */
    public final void m8577e(@Nullable T t, int i, int i2) {
        int[] preloadSize;
        RequestBuilder<?> preloadRequestBuilder;
        if (t == null || (preloadSize = this.f14298i.getPreloadSize(t, i, i2)) == null || (preloadRequestBuilder = this.f14297h.getPreloadRequestBuilder(t)) == null) {
            return;
        }
        preloadRequestBuilder.into((RequestBuilder<?>) this.f14295f.m8578a(preloadSize[0], preloadSize[1]));
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.f14302m = i3;
        int i4 = this.f14301l;
        if (i > i4) {
            m8575c(i2 + i, true);
        } else if (i < i4) {
            m8575c(i, false);
        }
        this.f14301l = i;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
