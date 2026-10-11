package com.google.android.exoplayer2.trackselection;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionOverrides;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class TrackSelectionOverrides implements Bundleable {

    /* renamed from: f */
    public static final int f27411f = 0;

    /* renamed from: e */
    public final ImmutableMap<TrackGroup, TrackSelectionOverride> f27412e;
    public static final TrackSelectionOverrides EMPTY = new TrackSelectionOverrides(ImmutableMap.m26185of());
    public static final Bundleable.Creator<TrackSelectionOverrides> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.bln
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            TrackSelectionOverrides m20882c;
            m20882c = TrackSelectionOverrides.m20882c(bundle);
            return m20882c;
        }
    };

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public final HashMap<TrackGroup, TrackSelectionOverride> f27413a;

        public Builder addOverride(TrackSelectionOverride trackSelectionOverride) {
            this.f27413a.put(trackSelectionOverride.trackGroup, trackSelectionOverride);
            return this;
        }

        public TrackSelectionOverrides build() {
            return new TrackSelectionOverrides(this.f27413a);
        }

        public Builder clearOverride(TrackGroup trackGroup) {
            this.f27413a.remove(trackGroup);
            return this;
        }

        public Builder clearOverridesOfType(int i) {
            Iterator<TrackSelectionOverride> it2 = this.f27413a.values().iterator();
            while (it2.hasNext()) {
                if (it2.next().getTrackType() == i) {
                    it2.remove();
                }
            }
            return this;
        }

        public Builder setOverrideForType(TrackSelectionOverride trackSelectionOverride) {
            clearOverridesOfType(trackSelectionOverride.getTrackType());
            this.f27413a.put(trackSelectionOverride.trackGroup, trackSelectionOverride);
            return this;
        }

        public Builder() {
            this.f27413a = new HashMap<>();
        }

        public Builder(Map<TrackGroup, TrackSelectionOverride> map) {
            this.f27413a = new HashMap<>(map);
        }
    }

    /* renamed from: b */
    public static String m20881b(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: c */
    public static /* synthetic */ TrackSelectionOverrides m20882c(Bundle bundle) {
        List fromBundleNullableList = BundleableUtil.fromBundleNullableList(TrackSelectionOverride.CREATOR, bundle.getParcelableArrayList(m20881b(0)), ImmutableList.m26161of());
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        for (int i = 0; i < fromBundleNullableList.size(); i++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) fromBundleNullableList.get(i);
            builder.put(trackSelectionOverride.trackGroup, trackSelectionOverride);
        }
        return new TrackSelectionOverrides(builder.buildOrThrow());
    }

    public ImmutableList<TrackSelectionOverride> asList() {
        return ImmutableList.copyOf((Collection) this.f27412e.values());
    }

    public Builder buildUpon() {
        return new Builder(this.f27412e);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackSelectionOverrides.class != obj.getClass()) {
            return false;
        }
        return this.f27412e.equals(((TrackSelectionOverrides) obj).f27412e);
    }

    @Nullable
    public TrackSelectionOverride getOverride(TrackGroup trackGroup) {
        return this.f27412e.get(trackGroup);
    }

    public int hashCode() {
        return this.f27412e.hashCode();
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(m20881b(0), BundleableUtil.toBundleArrayList(this.f27412e.values()));
        return bundle;
    }

    public TrackSelectionOverrides(Map<TrackGroup, TrackSelectionOverride> map) {
        this.f27412e = ImmutableMap.copyOf((Map) map);
    }

    /* loaded from: classes5.dex */
    public static final class TrackSelectionOverride implements Bundleable {
        public static final Bundleable.Creator<TrackSelectionOverride> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.cln
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                TrackSelectionOverrides.TrackSelectionOverride m20885c;
                m20885c = TrackSelectionOverrides.TrackSelectionOverride.m20885c(bundle);
                return m20885c;
            }
        };

        /* renamed from: e */
        public static final int f27414e = 0;

        /* renamed from: f */
        public static final int f27415f = 1;
        public final TrackGroup trackGroup;
        public final ImmutableList<Integer> trackIndices;

        public TrackSelectionOverride(TrackGroup trackGroup) {
            this.trackGroup = trackGroup;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i = 0; i < trackGroup.length; i++) {
                builder.add((ImmutableList.Builder) Integer.valueOf(i));
            }
            this.trackIndices = builder.build();
        }

        /* renamed from: b */
        public static String m20884b(int i) {
            return Integer.toString(i, 36);
        }

        /* renamed from: c */
        public static /* synthetic */ TrackSelectionOverride m20885c(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(m20884b(0));
            Assertions.checkNotNull(bundle2);
            TrackGroup fromBundle = TrackGroup.CREATOR.fromBundle(bundle2);
            int[] intArray = bundle.getIntArray(m20884b(1));
            return intArray == null ? new TrackSelectionOverride(fromBundle) : new TrackSelectionOverride(fromBundle, Ints.asList(intArray));
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || TrackSelectionOverride.class != obj.getClass()) {
                return false;
            }
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) obj;
            return this.trackGroup.equals(trackSelectionOverride.trackGroup) && this.trackIndices.equals(trackSelectionOverride.trackIndices);
        }

        public int getTrackType() {
            return MimeTypes.getTrackType(this.trackGroup.getFormat(0).sampleMimeType);
        }

        public int hashCode() {
            return this.trackGroup.hashCode() + (this.trackIndices.hashCode() * 31);
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putBundle(m20884b(0), this.trackGroup.toBundle());
            bundle.putIntArray(m20884b(1), Ints.toArray(this.trackIndices));
            return bundle;
        }

        public TrackSelectionOverride(TrackGroup trackGroup, List<Integer> list) {
            if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= trackGroup.length)) {
                throw new IndexOutOfBoundsException();
            }
            this.trackGroup = trackGroup;
            this.trackIndices = ImmutableList.copyOf((Collection) list);
        }
    }
}
