package com.google.android.exoplayer2.source;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.ImmutableList;

/* loaded from: classes5.dex */
public final class TrackGroupArray implements Bundleable {

    /* renamed from: g */
    public static final String f25416g = "TrackGroupArray";

    /* renamed from: h */
    public static final int f25417h = 0;

    /* renamed from: e */
    public final ImmutableList<TrackGroup> f25418e;

    /* renamed from: f */
    public int f25419f;
    public final int length;
    public static final TrackGroupArray EMPTY = new TrackGroupArray(new TrackGroup[0]);
    public static final Bundleable.Creator<TrackGroupArray> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.xkn
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            TrackGroupArray m19719c;
            m19719c = TrackGroupArray.m19719c(bundle);
            return m19719c;
        }
    };

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f25418e = ImmutableList.copyOf(trackGroupArr);
        this.length = trackGroupArr.length;
        m19720d();
    }

    /* renamed from: b */
    public static String m19718b(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: c */
    public static /* synthetic */ TrackGroupArray m19719c(Bundle bundle) {
        return new TrackGroupArray((TrackGroup[]) BundleableUtil.fromBundleNullableList(TrackGroup.CREATOR, bundle.getParcelableArrayList(m19718b(0)), ImmutableList.m26161of()).toArray(new TrackGroup[0]));
    }

    /* renamed from: d */
    public final void m19720d() {
        int i = 0;
        while (i < this.f25418e.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.f25418e.size(); i3++) {
                if (this.f25418e.get(i).equals(this.f25418e.get(i3))) {
                    Log.m21490e(f25416g, "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroupArray.class != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        return this.length == trackGroupArray.length && this.f25418e.equals(trackGroupArray.f25418e);
    }

    public TrackGroup get(int i) {
        return this.f25418e.get(i);
    }

    public int hashCode() {
        if (this.f25419f == 0) {
            this.f25419f = this.f25418e.hashCode();
        }
        return this.f25419f;
    }

    public int indexOf(TrackGroup trackGroup) {
        int indexOf = this.f25418e.indexOf(trackGroup);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(m19718b(0), BundleableUtil.toBundleArrayList(this.f25418e));
        return bundle;
    }
}
