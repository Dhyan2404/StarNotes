package com.sunia.HTREnginev2;

import com.google.android.odml.image.ImageProperties;

/* loaded from: classes6.dex */
public final class rip extends ImageProperties {

    /* renamed from: a */
    public final int f83135a;

    /* renamed from: b */
    public final int f83136b;

    public /* synthetic */ rip(int i, int i2, xep xepVar) {
        this.f83135a = i;
        this.f83136b = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImageProperties) {
            ImageProperties imageProperties = (ImageProperties) obj;
            if (this.f83135a == imageProperties.getImageFormat() && this.f83136b == imageProperties.getStorageType()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.odml.image.ImageProperties
    public final int getImageFormat() {
        return this.f83135a;
    }

    @Override // com.google.android.odml.image.ImageProperties
    public final int getStorageType() {
        return this.f83136b;
    }

    public final int hashCode() {
        return this.f83136b ^ ((this.f83135a ^ 1000003) * 1000003);
    }

    public final String toString() {
        int i = this.f83135a;
        int i2 = this.f83136b;
        StringBuilder sb = new StringBuilder(65);
        sb.append("ImageProperties{imageFormat=");
        sb.append(i);
        sb.append(", storageType=");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }
}
