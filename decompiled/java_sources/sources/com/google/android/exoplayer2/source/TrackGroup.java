package com.google.android.exoplayer2.source;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.material.motion.MotionUtils;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class TrackGroup implements Bundleable {
    public static final Bundleable.Creator<TrackGroup> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.wkn
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            TrackGroup m19712c;
            m19712c = TrackGroup.m19712c(bundle);
            return m19712c;
        }
    };

    /* renamed from: g */
    public static final String f25410g = "TrackGroup";

    /* renamed from: h */
    public static final int f25411h = 0;

    /* renamed from: i */
    public static final int f25412i = 1;

    /* renamed from: e */
    public final Format[] f25413e;

    /* renamed from: f */
    public int f25414f;

    /* renamed from: id */
    public final String f25415id;
    public final int length;

    public TrackGroup(Format... formatArr) {
        this("", formatArr);
    }

    /* renamed from: b */
    public static String m19711b(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: c */
    public static /* synthetic */ TrackGroup m19712c(Bundle bundle) {
        return new TrackGroup(bundle.getString(m19711b(1), ""), (Format[]) BundleableUtil.fromBundleNullableList(Format.CREATOR, bundle.getParcelableArrayList(m19711b(0)), ImmutableList.m26161of()).toArray(new Format[0]));
    }

    /* renamed from: d */
    public static void m19713d(String str, @Nullable String str2, @Nullable String str3, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("Different ");
        sb.append(str);
        sb.append(" combined in one TrackGroup: '");
        sb.append(str2);
        sb.append("' (track 0) and '");
        sb.append(str3);
        sb.append("' (track ");
        sb.append(i);
        sb.append(MotionUtils.f31762d);
        Log.m21490e(f25410g, "", new IllegalStateException(sb.toString()));
    }

    /* renamed from: e */
    public static String m19714e(@Nullable String str) {
        return (str == null || str.equals(C4649C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    /* renamed from: f */
    public static int m19715f(int i) {
        return i | 16384;
    }

    @CheckResult
    public TrackGroup copyWithId(String str) {
        return new TrackGroup(str, this.f25413e);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroup.class != obj.getClass()) {
            return false;
        }
        TrackGroup trackGroup = (TrackGroup) obj;
        return this.length == trackGroup.length && this.f25415id.equals(trackGroup.f25415id) && Arrays.equals(this.f25413e, trackGroup.f25413e);
    }

    /* renamed from: g */
    public final void m19716g() {
        String m19714e = m19714e(this.f25413e[0].language);
        int m19715f = m19715f(this.f25413e[0].roleFlags);
        int i = 1;
        while (true) {
            Format[] formatArr = this.f25413e;
            if (i >= formatArr.length) {
                return;
            }
            if (!m19714e.equals(m19714e(formatArr[i].language))) {
                Format[] formatArr2 = this.f25413e;
                m19713d("languages", formatArr2[0].language, formatArr2[i].language, i);
                return;
            } else {
                if (m19715f != m19715f(this.f25413e[i].roleFlags)) {
                    m19713d("role flags", Integer.toBinaryString(this.f25413e[0].roleFlags), Integer.toBinaryString(this.f25413e[i].roleFlags), i);
                    return;
                }
                i++;
            }
        }
    }

    public Format getFormat(int i) {
        return this.f25413e[i];
    }

    public int hashCode() {
        if (this.f25414f == 0) {
            this.f25414f = ((527 + this.f25415id.hashCode()) * 31) + Arrays.hashCode(this.f25413e);
        }
        return this.f25414f;
    }

    public int indexOf(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.f25413e;
            if (i >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i]) {
                return i;
            }
            i++;
        }
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(m19711b(0), BundleableUtil.toBundleArrayList(Lists.newArrayList(this.f25413e)));
        bundle.putString(m19711b(1), this.f25415id);
        return bundle;
    }

    public TrackGroup(String str, Format... formatArr) {
        Assertions.checkArgument(formatArr.length > 0);
        this.f25415id = str;
        this.f25413e = formatArr;
        this.length = formatArr.length;
        m19716g();
    }
}
