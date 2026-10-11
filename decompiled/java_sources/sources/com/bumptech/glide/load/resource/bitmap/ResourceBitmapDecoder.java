package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.sunia.HTREnginev2.kif;

/* loaded from: classes3.dex */
public class ResourceBitmapDecoder implements ResourceDecoder<Uri, Bitmap> {

    /* renamed from: a */
    public final ResourceDrawableDecoder f15083a;

    /* renamed from: b */
    public final BitmapPool f15084b;

    public ResourceBitmapDecoder(ResourceDrawableDecoder resourceDrawableDecoder, BitmapPool bitmapPool) {
        this.f15083a = resourceDrawableDecoder;
        this.f15084b = bitmapPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    public Resource<Bitmap> decode(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        Resource<Drawable> decode = this.f15083a.decode(uri, i, i2, options);
        if (decode == null) {
            return null;
        }
        return kif.m55223a(this.f15084b, decode.get(), i, i2);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull Uri uri, @NonNull Options options) {
        return DefaultDataSource.f28026s.equals(uri.getScheme());
    }
}
