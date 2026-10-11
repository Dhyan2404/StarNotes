package com.google.android.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class TrackSelectionArray {

    /* renamed from: a */
    public final TrackSelection[] f27409a;

    /* renamed from: b */
    public int f27410b;
    public final int length;

    public TrackSelectionArray(TrackSelection... trackSelectionArr) {
        this.f27409a = trackSelectionArr;
        this.length = trackSelectionArr.length;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackSelectionArray.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f27409a, ((TrackSelectionArray) obj).f27409a);
    }

    @Nullable
    public TrackSelection get(int i) {
        return this.f27409a[i];
    }

    public TrackSelection[] getAll() {
        return (TrackSelection[]) this.f27409a.clone();
    }

    public int hashCode() {
        if (this.f27410b == 0) {
            this.f27410b = 527 + Arrays.hashCode(this.f27409a);
        }
        return this.f27410b;
    }
}
