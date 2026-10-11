package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;

/* loaded from: classes3.dex */
public final class UnitBitmapDecoder implements ResourceDecoder<Bitmap, Bitmap> {

    /* renamed from: com.bumptech.glide.load.resource.bitmap.UnitBitmapDecoder$a */
    /* loaded from: classes3.dex */
    public static final class C2003a implements Resource<Bitmap> {

        /* renamed from: e */
        public final Bitmap f15107e;

        public C2003a(@NonNull Bitmap bitmap) {
            this.f15107e = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Bitmap get() {
            return this.f15107e;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        public Class<Bitmap> getResourceClass() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public int getSize() {
            return Util.getBitmapByteSize(this.f15107e);
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public void recycle() {
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull Bitmap bitmap, @NonNull Options options) {
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<Bitmap> decode(@NonNull Bitmap bitmap, int i, int i2, @NonNull Options options) {
        return new C2003a(bitmap);
    }
}
