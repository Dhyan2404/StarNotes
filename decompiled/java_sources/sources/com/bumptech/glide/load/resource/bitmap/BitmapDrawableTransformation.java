package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

@Deprecated
/* loaded from: classes3.dex */
public class BitmapDrawableTransformation implements Transformation<BitmapDrawable> {

    /* renamed from: a */
    public final Transformation<Drawable> f14987a;

    public BitmapDrawableTransformation(Transformation<Bitmap> transformation) {
        this.f14987a = (Transformation) Preconditions.checkNotNull(new DrawableTransformation(transformation, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static Resource<BitmapDrawable> m8925a(Resource<Drawable> resource) {
        if (resource.get() instanceof BitmapDrawable) {
            return resource;
        }
        throw new IllegalArgumentException("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: " + resource.get());
    }

    /* renamed from: b */
    public static Resource<Drawable> m8926b(Resource<BitmapDrawable> resource) {
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof BitmapDrawableTransformation) {
            return this.f14987a.equals(((BitmapDrawableTransformation) obj).f14987a);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f14987a.hashCode();
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<BitmapDrawable> transform(@NonNull Context context, @NonNull Resource<BitmapDrawable> resource, int i, int i2) {
        return m8925a(this.f14987a.transform(context, m8926b(resource), i, i2));
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f14987a.updateDiskCacheKey(messageDigest);
    }
}
