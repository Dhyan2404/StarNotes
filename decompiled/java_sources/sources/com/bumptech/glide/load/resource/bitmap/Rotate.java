package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class Rotate extends BitmapTransformation {

    /* renamed from: b */
    public static final String f15085b = "com.bumptech.glide.load.resource.bitmap.Rotate";

    /* renamed from: c */
    public static final byte[] f15086c = f15085b.getBytes(Key.CHARSET);

    /* renamed from: a */
    public final int f15087a;

    public Rotate(int i) {
        this.f15087a = i;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return (obj instanceof Rotate) && this.f15087a == ((Rotate) obj).f15087a;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.hashCode(-950519196, Util.hashCode(this.f15087a));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public Bitmap transform(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.rotateImage(bitmap, this.f15087a);
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f15086c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f15087a).array());
    }
}
