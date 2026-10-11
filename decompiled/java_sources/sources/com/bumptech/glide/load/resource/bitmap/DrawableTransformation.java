package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.sunia.HTREnginev2.kif;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class DrawableTransformation implements Transformation<Drawable> {

    /* renamed from: a */
    public final Transformation<Bitmap> f15042a;

    /* renamed from: b */
    public final boolean f15043b;

    public DrawableTransformation(Transformation<Bitmap> transformation, boolean z) {
        this.f15042a = transformation;
        this.f15043b = z;
    }

    /* renamed from: a */
    public final Resource<Drawable> m8964a(Context context, Resource<Bitmap> resource) {
        return LazyBitmapDrawableResource.obtain(context.getResources(), resource);
    }

    public Transformation<BitmapDrawable> asBitmapDrawable() {
        return this;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof DrawableTransformation) {
            return this.f15042a.equals(((DrawableTransformation) obj).f15042a);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f15042a.hashCode();
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<Drawable> transform(@NonNull Context context, @NonNull Resource<Drawable> resource, int i, int i2) {
        BitmapPool bitmapPool = Glide.get(context).getBitmapPool();
        Drawable drawable = resource.get();
        Resource<Bitmap> m55223a = kif.m55223a(bitmapPool, drawable, i, i2);
        if (m55223a != null) {
            Resource<Bitmap> transform = this.f15042a.transform(context, m55223a, i, i2);
            if (!transform.equals(m55223a)) {
                return m8964a(context, transform);
            }
            transform.recycle();
            return resource;
        }
        if (!this.f15043b) {
            return resource;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f15042a.updateDiskCacheKey(messageDigest);
    }
}
