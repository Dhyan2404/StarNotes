package com.twelvemonkeys.image;

import java.awt.image.ReplicateScaleFilter;

/* loaded from: classes10.dex */
public class SubsamplingFilter extends ReplicateScaleFilter {

    /* renamed from: e */
    public int f93989e;

    /* renamed from: f */
    public int f93990f;

    public SubsamplingFilter(int i, int i2) {
        super(1, 1);
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("Subsampling factors must be positive.");
        }
        this.f93989e = i;
        this.f93990f = i2;
    }

    @Override // java.awt.image.ReplicateScaleFilter, java.awt.image.ImageFilter, java.awt.image.ImageConsumer
    public void setDimensions(int i, int i2) {
        this.destWidth = ((i + r0) - 1) / this.f93989e;
        this.destHeight = ((i2 + r0) - 1) / this.f93990f;
        super.setDimensions(i, i2);
    }
}
