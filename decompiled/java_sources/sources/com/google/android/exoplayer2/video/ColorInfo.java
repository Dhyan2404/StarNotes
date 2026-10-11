package com.google.android.exoplayer2.video;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class ColorInfo implements Bundleable {
    public static final Bundleable.Creator<ColorInfo> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.p1e
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            ColorInfo m21567c;
            m21567c = ColorInfo.m21567c(bundle);
            return m21567c;
        }
    };

    /* renamed from: f */
    public static final int f28489f = 0;

    /* renamed from: g */
    public static final int f28490g = 1;

    /* renamed from: h */
    public static final int f28491h = 2;

    /* renamed from: i */
    public static final int f28492i = 3;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;

    /* renamed from: e */
    public int f28493e;

    @Nullable
    public final byte[] hdrStaticInfo;

    public ColorInfo(int i, int i2, int i3, @Nullable byte[] bArr) {
        this.colorSpace = i;
        this.colorRange = i2;
        this.colorTransfer = i3;
        this.hdrStaticInfo = bArr;
    }

    /* renamed from: b */
    public static String m21566b(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: c */
    public static /* synthetic */ ColorInfo m21567c(Bundle bundle) {
        return new ColorInfo(bundle.getInt(m21566b(0), -1), bundle.getInt(m21566b(1), -1), bundle.getInt(m21566b(2), -1), bundle.getByteArray(m21566b(3)));
    }

    @Pure
    public static int isoColorPrimariesToColorSpace(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    @Pure
    public static int isoTransferCharacteristicsToColorTransfer(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ColorInfo.class != obj.getClass()) {
            return false;
        }
        ColorInfo colorInfo = (ColorInfo) obj;
        return this.colorSpace == colorInfo.colorSpace && this.colorRange == colorInfo.colorRange && this.colorTransfer == colorInfo.colorTransfer && Arrays.equals(this.hdrStaticInfo, colorInfo.hdrStaticInfo);
    }

    public int hashCode() {
        if (this.f28493e == 0) {
            this.f28493e = ((((((527 + this.colorSpace) * 31) + this.colorRange) * 31) + this.colorTransfer) * 31) + Arrays.hashCode(this.hdrStaticInfo);
        }
        return this.f28493e;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m21566b(0), this.colorSpace);
        bundle.putInt(m21566b(1), this.colorRange);
        bundle.putInt(m21566b(2), this.colorTransfer);
        bundle.putByteArray(m21566b(3), this.hdrStaticInfo);
        return bundle;
    }

    public String toString() {
        int i = this.colorSpace;
        int i2 = this.colorRange;
        int i3 = this.colorTransfer;
        boolean z = this.hdrStaticInfo != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }
}
