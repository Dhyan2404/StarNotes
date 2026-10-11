package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class GranularRoundedCorners extends BitmapTransformation {

    /* renamed from: e */
    public static final String f15046e = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners";

    /* renamed from: f */
    public static final byte[] f15047f = f15046e.getBytes(Key.CHARSET);

    /* renamed from: a */
    public final float f15048a;

    /* renamed from: b */
    public final float f15049b;

    /* renamed from: c */
    public final float f15050c;

    /* renamed from: d */
    public final float f15051d;

    public GranularRoundedCorners(float f, float f2, float f3, float f4) {
        this.f15048a = f;
        this.f15049b = f2;
        this.f15050c = f3;
        this.f15051d = f4;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (!(obj instanceof GranularRoundedCorners)) {
            return false;
        }
        GranularRoundedCorners granularRoundedCorners = (GranularRoundedCorners) obj;
        return this.f15048a == granularRoundedCorners.f15048a && this.f15049b == granularRoundedCorners.f15049b && this.f15050c == granularRoundedCorners.f15050c && this.f15051d == granularRoundedCorners.f15051d;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.hashCode(this.f15051d, Util.hashCode(this.f15050c, Util.hashCode(this.f15049b, Util.hashCode(-2013597734, Util.hashCode(this.f15048a)))));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public Bitmap transform(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.roundedCorners(bitmapPool, bitmap, this.f15048a, this.f15049b, this.f15050c, this.f15051d);
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f15047f);
        messageDigest.update(ByteBuffer.allocate(16).putFloat(this.f15048a).putFloat(this.f15049b).putFloat(this.f15050c).putFloat(this.f15051d).array());
    }
}
