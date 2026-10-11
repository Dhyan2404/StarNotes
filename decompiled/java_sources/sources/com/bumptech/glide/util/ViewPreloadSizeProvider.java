package com.bumptech.glide.util;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.transition.Transition;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class ViewPreloadSizeProvider<T> implements ListPreloader.PreloadSizeProvider<T>, SizeReadyCallback {

    /* renamed from: a */
    public int[] f15503a;

    /* renamed from: b */
    public C2042a f15504b;

    /* renamed from: com.bumptech.glide.util.ViewPreloadSizeProvider$a */
    /* loaded from: classes3.dex */
    public static final class C2042a extends CustomViewTarget<View, Object> {
        public C2042a(@NonNull View view) {
            super(view);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.CustomViewTarget
        public void onResourceCleared(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }
    }

    public ViewPreloadSizeProvider() {
    }

    @Override // com.bumptech.glide.ListPreloader.PreloadSizeProvider
    @Nullable
    public int[] getPreloadSize(@NonNull T t, int i, int i2) {
        int[] iArr = this.f15503a;
        if (iArr == null) {
            return null;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int i, int i2) {
        this.f15503a = new int[]{i, i2};
        this.f15504b = null;
    }

    public void setView(@NonNull View view) {
        if (this.f15503a == null && this.f15504b == null) {
            C2042a c2042a = new C2042a(view);
            this.f15504b = c2042a;
            c2042a.getSize(this);
        }
    }

    public ViewPreloadSizeProvider(@NonNull View view) {
        C2042a c2042a = new C2042a(view);
        this.f15504b = c2042a;
        c2042a.getSize(this);
    }
}
