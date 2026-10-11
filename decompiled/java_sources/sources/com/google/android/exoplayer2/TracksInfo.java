package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.TracksInfo;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Booleans;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* loaded from: classes5.dex */
public final class TracksInfo implements Bundleable {

    /* renamed from: f */
    public static final int f22747f = 0;

    /* renamed from: e */
    public final ImmutableList<TrackGroupInfo> f22748e;
    public static final TracksInfo EMPTY = new TracksInfo(ImmutableList.m26161of());
    public static final Bundleable.Creator<TracksInfo> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.fln
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            TracksInfo m18042c;
            m18042c = TracksInfo.m18042c(bundle);
            return m18042c;
        }
    };

    /* loaded from: classes5.dex */
    public static final class TrackGroupInfo implements Bundleable {
        public static final Bundleable.Creator<TrackGroupInfo> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.gln
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                TracksInfo.TrackGroupInfo m18046d;
                m18046d = TracksInfo.TrackGroupInfo.m18046d(bundle);
                return m18046d;
            }
        };

        /* renamed from: i */
        public static final int f22749i = 0;

        /* renamed from: j */
        public static final int f22750j = 1;

        /* renamed from: k */
        public static final int f22751k = 2;

        /* renamed from: l */
        public static final int f22752l = 3;

        /* renamed from: e */
        public final TrackGroup f22753e;

        /* renamed from: f */
        public final int[] f22754f;

        /* renamed from: g */
        public final int f22755g;

        /* renamed from: h */
        public final boolean[] f22756h;

        public TrackGroupInfo(TrackGroup trackGroup, int[] iArr, int i, boolean[] zArr) {
            int i2 = trackGroup.length;
            Assertions.checkArgument(i2 == iArr.length && i2 == zArr.length);
            this.f22753e = trackGroup;
            this.f22754f = (int[]) iArr.clone();
            this.f22755g = i;
            this.f22756h = (boolean[]) zArr.clone();
        }

        /* renamed from: c */
        public static String m18045c(int i) {
            return Integer.toString(i, 36);
        }

        /* renamed from: d */
        public static /* synthetic */ TrackGroupInfo m18046d(Bundle bundle) {
            TrackGroup trackGroup = (TrackGroup) BundleableUtil.fromNullableBundle(TrackGroup.CREATOR, bundle.getBundle(m18045c(0)));
            Assertions.checkNotNull(trackGroup);
            return new TrackGroupInfo(trackGroup, (int[]) MoreObjects.firstNonNull(bundle.getIntArray(m18045c(1)), new int[trackGroup.length]), bundle.getInt(m18045c(2), -1), (boolean[]) MoreObjects.firstNonNull(bundle.getBooleanArray(m18045c(3)), new boolean[trackGroup.length]));
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || TrackGroupInfo.class != obj.getClass()) {
                return false;
            }
            TrackGroupInfo trackGroupInfo = (TrackGroupInfo) obj;
            return this.f22755g == trackGroupInfo.f22755g && this.f22753e.equals(trackGroupInfo.f22753e) && Arrays.equals(this.f22754f, trackGroupInfo.f22754f) && Arrays.equals(this.f22756h, trackGroupInfo.f22756h);
        }

        public TrackGroup getTrackGroup() {
            return this.f22753e;
        }

        public int getTrackSupport(int i) {
            return this.f22754f[i];
        }

        public int getTrackType() {
            return this.f22755g;
        }

        public int hashCode() {
            return (((((this.f22753e.hashCode() * 31) + Arrays.hashCode(this.f22754f)) * 31) + this.f22755g) * 31) + Arrays.hashCode(this.f22756h);
        }

        public boolean isSelected() {
            return Booleans.contains(this.f22756h, true);
        }

        public boolean isSupported() {
            return isSupported(false);
        }

        public boolean isTrackSelected(int i) {
            return this.f22756h[i];
        }

        public boolean isTrackSupported(int i) {
            return isTrackSupported(i, false);
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(m18045c(0), this.f22753e.toBundle());
            bundle.putIntArray(m18045c(1), this.f22754f);
            bundle.putInt(m18045c(2), this.f22755g);
            bundle.putBooleanArray(m18045c(3), this.f22756h);
            return bundle;
        }

        public boolean isSupported(boolean z) {
            for (int i = 0; i < this.f22754f.length; i++) {
                if (isTrackSupported(i, z)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isTrackSupported(int i, boolean z) {
            int i2 = this.f22754f[i];
            return i2 == 4 || (z && i2 == 3);
        }
    }

    public TracksInfo(List<TrackGroupInfo> list) {
        this.f22748e = ImmutableList.copyOf((Collection) list);
    }

    /* renamed from: b */
    public static String m18041b(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: c */
    public static /* synthetic */ TracksInfo m18042c(Bundle bundle) {
        return new TracksInfo(BundleableUtil.fromBundleNullableList(TrackGroupInfo.CREATOR, bundle.getParcelableArrayList(m18041b(0)), ImmutableList.m26161of()));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TracksInfo.class != obj.getClass()) {
            return false;
        }
        return this.f22748e.equals(((TracksInfo) obj).f22748e);
    }

    public ImmutableList<TrackGroupInfo> getTrackGroupInfos() {
        return this.f22748e;
    }

    public int hashCode() {
        return this.f22748e.hashCode();
    }

    public boolean isTypeSelected(int i) {
        for (int i2 = 0; i2 < this.f22748e.size(); i2++) {
            TrackGroupInfo trackGroupInfo = this.f22748e.get(i2);
            if (trackGroupInfo.isSelected() && trackGroupInfo.getTrackType() == i) {
                return true;
            }
        }
        return false;
    }

    public boolean isTypeSupportedOrEmpty(int i) {
        return isTypeSupportedOrEmpty(i, false);
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(m18041b(0), BundleableUtil.toBundleArrayList(this.f22748e));
        return bundle;
    }

    public boolean isTypeSupportedOrEmpty(int i, boolean z) {
        boolean z2 = true;
        for (int i2 = 0; i2 < this.f22748e.size(); i2++) {
            if (this.f22748e.get(i2).f22755g == i) {
                if (this.f22748e.get(i2).isSupported(z)) {
                    return true;
                }
                z2 = false;
            }
        }
        return z2;
    }
}
