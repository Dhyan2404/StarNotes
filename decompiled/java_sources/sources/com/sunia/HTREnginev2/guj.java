package com.sunia.HTREnginev2;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.drawable.DrawableResource;

/* loaded from: classes3.dex */
public final class guj extends DrawableResource<Drawable> {
    public guj(Drawable drawable) {
        super(drawable);
    }

    @Nullable
    /* renamed from: a */
    public static Resource<Drawable> m54350a(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new guj(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Drawable> getResourceClass() {
        return this.drawable.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return Math.max(1, this.drawable.getIntrinsicWidth() * this.drawable.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }
}
