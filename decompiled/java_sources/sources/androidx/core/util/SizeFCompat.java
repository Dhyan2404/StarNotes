package androidx.core.util;

import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class SizeFCompat {

    /* renamed from: a */
    public final float f5757a;

    /* renamed from: b */
    public final float f5758b;

    @RequiresApi(21)
    /* renamed from: androidx.core.util.SizeFCompat$a */
    /* loaded from: classes3.dex */
    public static final class C0752a {
        @NonNull
        @DoNotInline
        /* renamed from: a */
        public static SizeF m3269a(@NonNull SizeFCompat sizeFCompat) {
            Preconditions.checkNotNull(sizeFCompat);
            return new SizeF(sizeFCompat.getWidth(), sizeFCompat.getHeight());
        }

        @NonNull
        @DoNotInline
        /* renamed from: b */
        public static SizeFCompat m3270b(@NonNull SizeF sizeF) {
            Preconditions.checkNotNull(sizeF);
            return new SizeFCompat(sizeF.getWidth(), sizeF.getHeight());
        }
    }

    public SizeFCompat(float f, float f2) {
        this.f5757a = Preconditions.checkArgumentFinite(f, "width");
        this.f5758b = Preconditions.checkArgumentFinite(f2, "height");
    }

    @NonNull
    @RequiresApi(21)
    public static SizeFCompat toSizeFCompat(@NonNull SizeF sizeF) {
        return C0752a.m3270b(sizeF);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeFCompat)) {
            return false;
        }
        SizeFCompat sizeFCompat = (SizeFCompat) obj;
        return sizeFCompat.f5757a == this.f5757a && sizeFCompat.f5758b == this.f5758b;
    }

    public float getHeight() {
        return this.f5758b;
    }

    public float getWidth() {
        return this.f5757a;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f5758b) ^ Float.floatToIntBits(this.f5757a);
    }

    @NonNull
    @RequiresApi(21)
    public SizeF toSizeF() {
        return C0752a.m3269a(this);
    }

    @NonNull
    public String toString() {
        return this.f5757a + "x" + this.f5758b;
    }
}
