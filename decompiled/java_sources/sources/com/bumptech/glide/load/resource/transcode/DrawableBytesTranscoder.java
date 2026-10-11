package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;

/* loaded from: classes3.dex */
public final class DrawableBytesTranscoder implements ResourceTranscoder<Drawable, byte[]> {

    /* renamed from: a */
    public final BitmapPool f15189a;

    /* renamed from: b */
    public final ResourceTranscoder<Bitmap, byte[]> f15190b;

    /* renamed from: c */
    public final ResourceTranscoder<GifDrawable, byte[]> f15191c;

    public DrawableBytesTranscoder(@NonNull BitmapPool bitmapPool, @NonNull ResourceTranscoder<Bitmap, byte[]> resourceTranscoder, @NonNull ResourceTranscoder<GifDrawable, byte[]> resourceTranscoder2) {
        this.f15189a = bitmapPool;
        this.f15190b = resourceTranscoder;
        this.f15191c = resourceTranscoder2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: a */
    public static Resource<GifDrawable> m9039a(@NonNull Resource<Drawable> resource) {
        return resource;
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    @Nullable
    public Resource<byte[]> transcode(@NonNull Resource<Drawable> resource, @NonNull Options options) {
        Drawable drawable = resource.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f15190b.transcode(BitmapResource.obtain(((BitmapDrawable) drawable).getBitmap(), this.f15189a), options);
        }
        if (drawable instanceof GifDrawable) {
            return this.f15191c.transcode(m9039a(resource), options);
        }
        return null;
    }
}
