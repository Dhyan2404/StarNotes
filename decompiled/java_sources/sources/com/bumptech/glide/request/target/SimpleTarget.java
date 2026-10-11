package com.bumptech.glide.request.target;

import androidx.annotation.NonNull;
import com.bumptech.glide.util.Util;

@Deprecated
/* loaded from: classes3.dex */
public abstract class SimpleTarget<Z> extends BaseTarget<Z> {

    /* renamed from: f */
    public final int f15415f;

    /* renamed from: g */
    public final int f15416g;

    public SimpleTarget() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        if (Util.isValidDimensions(this.f15415f, this.f15416g)) {
            sizeReadyCallback.onSizeReady(this.f15415f, this.f15416g);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f15415f + " and height: " + this.f15416g + ", either provide dimensions in the constructor or call override()");
    }

    @Override // com.bumptech.glide.request.target.Target
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }

    public SimpleTarget(int i, int i2) {
        this.f15415f = i;
        this.f15416g = i2;
    }
}
