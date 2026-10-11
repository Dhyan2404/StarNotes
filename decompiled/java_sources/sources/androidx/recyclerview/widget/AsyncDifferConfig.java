package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public final class AsyncDifferConfig<T> {

    /* renamed from: a */
    @Nullable
    public final Executor f9165a;

    /* renamed from: b */
    @NonNull
    public final Executor f9166b;

    /* renamed from: c */
    @NonNull
    public final DiffUtil.ItemCallback<T> f9167c;

    /* loaded from: classes3.dex */
    public static final class Builder<T> {

        /* renamed from: d */
        public static final Object f9168d = new Object();

        /* renamed from: e */
        public static Executor f9169e;

        /* renamed from: a */
        @Nullable
        public Executor f9170a;

        /* renamed from: b */
        public Executor f9171b;

        /* renamed from: c */
        public final DiffUtil.ItemCallback<T> f9172c;

        public Builder(@NonNull DiffUtil.ItemCallback<T> itemCallback) {
            this.f9172c = itemCallback;
        }

        @NonNull
        public AsyncDifferConfig<T> build() {
            if (this.f9171b == null) {
                synchronized (f9168d) {
                    if (f9169e == null) {
                        f9169e = Executors.newFixedThreadPool(2);
                    }
                }
                this.f9171b = f9169e;
            }
            return new AsyncDifferConfig<>(this.f9170a, this.f9171b, this.f9172c);
        }

        @NonNull
        public Builder<T> setBackgroundThreadExecutor(@Nullable Executor executor) {
            this.f9171b = executor;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder<T> setMainThreadExecutor(@Nullable Executor executor) {
            this.f9170a = executor;
            return this;
        }
    }

    public AsyncDifferConfig(@Nullable Executor executor, @NonNull Executor executor2, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this.f9165a = executor;
        this.f9166b = executor2;
        this.f9167c = itemCallback;
    }

    @NonNull
    public Executor getBackgroundThreadExecutor() {
        return this.f9166b;
    }

    @NonNull
    public DiffUtil.ItemCallback<T> getDiffCallback() {
        return this.f9167c;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Executor getMainThreadExecutor() {
        return this.f9165a;
    }
}
