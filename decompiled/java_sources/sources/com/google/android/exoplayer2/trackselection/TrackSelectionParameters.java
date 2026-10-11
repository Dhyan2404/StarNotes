package com.google.android.exoplayer2.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.Locale;
import java.util.Set;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes5.dex */
public class TrackSelectionParameters implements Bundleable {
    public static final Bundleable.Creator<TrackSelectionParameters> CREATOR;

    @Deprecated
    public static final TrackSelectionParameters DEFAULT;
    public static final TrackSelectionParameters DEFAULT_WITHOUT_CONTEXT;

    /* renamed from: J */
    public static final int f27416J = 23;

    /* renamed from: O */
    public static final int f27417O = 24;

    /* renamed from: Q */
    public static final int f27418Q = 25;

    /* renamed from: Z */
    public static final int f27419Z = 26;

    /* renamed from: e */
    public static final int f27420e = 1;

    /* renamed from: f */
    public static final int f27421f = 2;

    /* renamed from: g */
    public static final int f27422g = 3;

    /* renamed from: h */
    public static final int f27423h = 4;

    /* renamed from: i */
    public static final int f27424i = 5;

    /* renamed from: j */
    public static final int f27425j = 6;

    /* renamed from: k */
    public static final int f27426k = 7;

    /* renamed from: l */
    public static final int f27427l = 8;

    /* renamed from: m */
    public static final int f27428m = 9;

    /* renamed from: n */
    public static final int f27429n = 10;

    /* renamed from: o */
    public static final int f27430o = 11;

    /* renamed from: p */
    public static final int f27431p = 12;

    /* renamed from: q */
    public static final int f27432q = 13;

    /* renamed from: r */
    public static final int f27433r = 14;

    /* renamed from: s */
    public static final int f27434s = 15;

    /* renamed from: t */
    public static final int f27435t = 16;

    /* renamed from: u */
    public static final int f27436u = 17;

    /* renamed from: v */
    public static final int f27437v = 18;

    /* renamed from: w */
    public static final int f27438w = 19;

    /* renamed from: x */
    public static final int f27439x = 20;

    /* renamed from: y */
    public static final int f27440y = 21;

    /* renamed from: z */
    public static final int f27441z = 22;
    public final ImmutableSet<Integer> disabledTrackTypes;
    public final boolean forceHighestSupportedBitrate;
    public final boolean forceLowestBitrate;
    public final int maxAudioBitrate;
    public final int maxAudioChannelCount;
    public final int maxVideoBitrate;
    public final int maxVideoFrameRate;
    public final int maxVideoHeight;
    public final int maxVideoWidth;
    public final int minVideoBitrate;
    public final int minVideoFrameRate;
    public final int minVideoHeight;
    public final int minVideoWidth;
    public final ImmutableList<String> preferredAudioLanguages;
    public final ImmutableList<String> preferredAudioMimeTypes;
    public final int preferredAudioRoleFlags;
    public final ImmutableList<String> preferredTextLanguages;
    public final int preferredTextRoleFlags;
    public final ImmutableList<String> preferredVideoMimeTypes;
    public final int preferredVideoRoleFlags;
    public final boolean selectUndeterminedTextLanguage;
    public final TrackSelectionOverrides trackSelectionOverrides;
    public final int viewportHeight;
    public final boolean viewportOrientationMayChange;
    public final int viewportWidth;

    static {
        TrackSelectionParameters build = new Builder().build();
        DEFAULT_WITHOUT_CONTEXT = build;
        DEFAULT = build;
        CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.dln
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                TrackSelectionParameters m20889d;
                m20889d = TrackSelectionParameters.m20889d(bundle);
                return m20889d;
            }
        };
    }

    public TrackSelectionParameters(Builder builder) {
        this.maxVideoWidth = builder.f27442a;
        this.maxVideoHeight = builder.f27443b;
        this.maxVideoFrameRate = builder.f27444c;
        this.maxVideoBitrate = builder.f27445d;
        this.minVideoWidth = builder.f27446e;
        this.minVideoHeight = builder.f27447f;
        this.minVideoFrameRate = builder.f27448g;
        this.minVideoBitrate = builder.f27449h;
        this.viewportWidth = builder.f27450i;
        this.viewportHeight = builder.f27451j;
        this.viewportOrientationMayChange = builder.f27452k;
        this.preferredVideoMimeTypes = builder.f27453l;
        this.preferredVideoRoleFlags = builder.f27454m;
        this.preferredAudioLanguages = builder.f27455n;
        this.preferredAudioRoleFlags = builder.f27456o;
        this.maxAudioChannelCount = builder.f27457p;
        this.maxAudioBitrate = builder.f27458q;
        this.preferredAudioMimeTypes = builder.f27459r;
        this.preferredTextLanguages = builder.f27460s;
        this.preferredTextRoleFlags = builder.f27461t;
        this.selectUndeterminedTextLanguage = builder.f27462u;
        this.forceLowestBitrate = builder.f27463v;
        this.forceHighestSupportedBitrate = builder.f27464w;
        this.trackSelectionOverrides = builder.f27465x;
        this.disabledTrackTypes = builder.f27466y;
    }

    /* renamed from: c */
    public static String m20888c(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: d */
    public static /* synthetic */ TrackSelectionParameters m20889d(Bundle bundle) {
        return new Builder(bundle).build();
    }

    public static TrackSelectionParameters getDefaults(Context context) {
        return new Builder(context).build();
    }

    public Builder buildUpon() {
        return new Builder(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        return this.maxVideoWidth == trackSelectionParameters.maxVideoWidth && this.maxVideoHeight == trackSelectionParameters.maxVideoHeight && this.maxVideoFrameRate == trackSelectionParameters.maxVideoFrameRate && this.maxVideoBitrate == trackSelectionParameters.maxVideoBitrate && this.minVideoWidth == trackSelectionParameters.minVideoWidth && this.minVideoHeight == trackSelectionParameters.minVideoHeight && this.minVideoFrameRate == trackSelectionParameters.minVideoFrameRate && this.minVideoBitrate == trackSelectionParameters.minVideoBitrate && this.viewportOrientationMayChange == trackSelectionParameters.viewportOrientationMayChange && this.viewportWidth == trackSelectionParameters.viewportWidth && this.viewportHeight == trackSelectionParameters.viewportHeight && this.preferredVideoMimeTypes.equals(trackSelectionParameters.preferredVideoMimeTypes) && this.preferredVideoRoleFlags == trackSelectionParameters.preferredVideoRoleFlags && this.preferredAudioLanguages.equals(trackSelectionParameters.preferredAudioLanguages) && this.preferredAudioRoleFlags == trackSelectionParameters.preferredAudioRoleFlags && this.maxAudioChannelCount == trackSelectionParameters.maxAudioChannelCount && this.maxAudioBitrate == trackSelectionParameters.maxAudioBitrate && this.preferredAudioMimeTypes.equals(trackSelectionParameters.preferredAudioMimeTypes) && this.preferredTextLanguages.equals(trackSelectionParameters.preferredTextLanguages) && this.preferredTextRoleFlags == trackSelectionParameters.preferredTextRoleFlags && this.selectUndeterminedTextLanguage == trackSelectionParameters.selectUndeterminedTextLanguage && this.forceLowestBitrate == trackSelectionParameters.forceLowestBitrate && this.forceHighestSupportedBitrate == trackSelectionParameters.forceHighestSupportedBitrate && this.trackSelectionOverrides.equals(trackSelectionParameters.trackSelectionOverrides) && this.disabledTrackTypes.equals(trackSelectionParameters.disabledTrackTypes);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((this.maxVideoWidth + 31) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + this.minVideoWidth) * 31) + this.minVideoHeight) * 31) + this.minVideoFrameRate) * 31) + this.minVideoBitrate) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.preferredVideoMimeTypes.hashCode()) * 31) + this.preferredVideoRoleFlags) * 31) + this.preferredAudioLanguages.hashCode()) * 31) + this.preferredAudioRoleFlags) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + this.preferredAudioMimeTypes.hashCode()) * 31) + this.preferredTextLanguages.hashCode()) * 31) + this.preferredTextRoleFlags) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + this.trackSelectionOverrides.hashCode()) * 31) + this.disabledTrackTypes.hashCode();
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m20888c(6), this.maxVideoWidth);
        bundle.putInt(m20888c(7), this.maxVideoHeight);
        bundle.putInt(m20888c(8), this.maxVideoFrameRate);
        bundle.putInt(m20888c(9), this.maxVideoBitrate);
        bundle.putInt(m20888c(10), this.minVideoWidth);
        bundle.putInt(m20888c(11), this.minVideoHeight);
        bundle.putInt(m20888c(12), this.minVideoFrameRate);
        bundle.putInt(m20888c(13), this.minVideoBitrate);
        bundle.putInt(m20888c(14), this.viewportWidth);
        bundle.putInt(m20888c(15), this.viewportHeight);
        bundle.putBoolean(m20888c(16), this.viewportOrientationMayChange);
        bundle.putStringArray(m20888c(17), (String[]) this.preferredVideoMimeTypes.toArray(new String[0]));
        bundle.putInt(m20888c(26), this.preferredVideoRoleFlags);
        bundle.putStringArray(m20888c(1), (String[]) this.preferredAudioLanguages.toArray(new String[0]));
        bundle.putInt(m20888c(2), this.preferredAudioRoleFlags);
        bundle.putInt(m20888c(18), this.maxAudioChannelCount);
        bundle.putInt(m20888c(19), this.maxAudioBitrate);
        bundle.putStringArray(m20888c(20), (String[]) this.preferredAudioMimeTypes.toArray(new String[0]));
        bundle.putStringArray(m20888c(3), (String[]) this.preferredTextLanguages.toArray(new String[0]));
        bundle.putInt(m20888c(4), this.preferredTextRoleFlags);
        bundle.putBoolean(m20888c(5), this.selectUndeterminedTextLanguage);
        bundle.putBoolean(m20888c(21), this.forceLowestBitrate);
        bundle.putBoolean(m20888c(22), this.forceHighestSupportedBitrate);
        bundle.putBundle(m20888c(23), this.trackSelectionOverrides.toBundle());
        bundle.putIntArray(m20888c(25), Ints.toArray(this.disabledTrackTypes));
        return bundle;
    }

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a */
        public int f27442a;

        /* renamed from: b */
        public int f27443b;

        /* renamed from: c */
        public int f27444c;

        /* renamed from: d */
        public int f27445d;

        /* renamed from: e */
        public int f27446e;

        /* renamed from: f */
        public int f27447f;

        /* renamed from: g */
        public int f27448g;

        /* renamed from: h */
        public int f27449h;

        /* renamed from: i */
        public int f27450i;

        /* renamed from: j */
        public int f27451j;

        /* renamed from: k */
        public boolean f27452k;

        /* renamed from: l */
        public ImmutableList<String> f27453l;

        /* renamed from: m */
        public int f27454m;

        /* renamed from: n */
        public ImmutableList<String> f27455n;

        /* renamed from: o */
        public int f27456o;

        /* renamed from: p */
        public int f27457p;

        /* renamed from: q */
        public int f27458q;

        /* renamed from: r */
        public ImmutableList<String> f27459r;

        /* renamed from: s */
        public ImmutableList<String> f27460s;

        /* renamed from: t */
        public int f27461t;

        /* renamed from: u */
        public boolean f27462u;

        /* renamed from: v */
        public boolean f27463v;

        /* renamed from: w */
        public boolean f27464w;

        /* renamed from: x */
        public TrackSelectionOverrides f27465x;

        /* renamed from: y */
        public ImmutableSet<Integer> f27466y;

        @Deprecated
        public Builder() {
            this.f27442a = Integer.MAX_VALUE;
            this.f27443b = Integer.MAX_VALUE;
            this.f27444c = Integer.MAX_VALUE;
            this.f27445d = Integer.MAX_VALUE;
            this.f27450i = Integer.MAX_VALUE;
            this.f27451j = Integer.MAX_VALUE;
            this.f27452k = true;
            this.f27453l = ImmutableList.m26161of();
            this.f27454m = 0;
            this.f27455n = ImmutableList.m26161of();
            this.f27456o = 0;
            this.f27457p = Integer.MAX_VALUE;
            this.f27458q = Integer.MAX_VALUE;
            this.f27459r = ImmutableList.m26161of();
            this.f27460s = ImmutableList.m26161of();
            this.f27461t = 0;
            this.f27462u = false;
            this.f27463v = false;
            this.f27464w = false;
            this.f27465x = TrackSelectionOverrides.EMPTY;
            this.f27466y = ImmutableSet.m26234of();
        }

        /* renamed from: A */
        public static ImmutableList<String> m20890A(String[] strArr) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (String str : (String[]) Assertions.checkNotNull(strArr)) {
                builder.add((ImmutableList.Builder) Util.normalizeLanguageCode((String) Assertions.checkNotNull(str)));
            }
            return builder.build();
        }

        @RequiresApi(19)
        /* renamed from: B */
        public final void m20916B(Context context) {
            CaptioningManager captioningManager;
            if ((Util.SDK_INT >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.f27461t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f27460s = ImmutableList.m26162of(Util.getLocaleLanguageTag(locale));
                }
            }
        }

        public TrackSelectionParameters build() {
            return new TrackSelectionParameters(this);
        }

        public Builder clearVideoSizeConstraints() {
            return setMaxVideoSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public Builder clearViewportSizeConstraints() {
            return setViewportSize(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public Builder set(TrackSelectionParameters trackSelectionParameters) {
            m20917z(trackSelectionParameters);
            return this;
        }

        public Builder setDisabledTrackTypes(Set<Integer> set) {
            this.f27466y = ImmutableSet.copyOf((Collection) set);
            return this;
        }

        public Builder setForceHighestSupportedBitrate(boolean z) {
            this.f27464w = z;
            return this;
        }

        public Builder setForceLowestBitrate(boolean z) {
            this.f27463v = z;
            return this;
        }

        public Builder setMaxAudioBitrate(int i) {
            this.f27458q = i;
            return this;
        }

        public Builder setMaxAudioChannelCount(int i) {
            this.f27457p = i;
            return this;
        }

        public Builder setMaxVideoBitrate(int i) {
            this.f27445d = i;
            return this;
        }

        public Builder setMaxVideoFrameRate(int i) {
            this.f27444c = i;
            return this;
        }

        public Builder setMaxVideoSize(int i, int i2) {
            this.f27442a = i;
            this.f27443b = i2;
            return this;
        }

        public Builder setMaxVideoSizeSd() {
            return setMaxVideoSize(AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD);
        }

        public Builder setMinVideoBitrate(int i) {
            this.f27449h = i;
            return this;
        }

        public Builder setMinVideoFrameRate(int i) {
            this.f27448g = i;
            return this;
        }

        public Builder setMinVideoSize(int i, int i2) {
            this.f27446e = i;
            this.f27447f = i2;
            return this;
        }

        public Builder setPreferredAudioLanguage(@Nullable String str) {
            return str == null ? setPreferredAudioLanguages(new String[0]) : setPreferredAudioLanguages(str);
        }

        public Builder setPreferredAudioLanguages(String... strArr) {
            this.f27455n = m20890A(strArr);
            return this;
        }

        public Builder setPreferredAudioMimeType(@Nullable String str) {
            return str == null ? setPreferredAudioMimeTypes(new String[0]) : setPreferredAudioMimeTypes(str);
        }

        public Builder setPreferredAudioMimeTypes(String... strArr) {
            this.f27459r = ImmutableList.copyOf(strArr);
            return this;
        }

        public Builder setPreferredAudioRoleFlags(int i) {
            this.f27456o = i;
            return this;
        }

        public Builder setPreferredTextLanguage(@Nullable String str) {
            return str == null ? setPreferredTextLanguages(new String[0]) : setPreferredTextLanguages(str);
        }

        public Builder setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Context context) {
            if (Util.SDK_INT >= 19) {
                m20916B(context);
            }
            return this;
        }

        public Builder setPreferredTextLanguages(String... strArr) {
            this.f27460s = m20890A(strArr);
            return this;
        }

        public Builder setPreferredTextRoleFlags(int i) {
            this.f27461t = i;
            return this;
        }

        public Builder setPreferredVideoMimeType(@Nullable String str) {
            return str == null ? setPreferredVideoMimeTypes(new String[0]) : setPreferredVideoMimeTypes(str);
        }

        public Builder setPreferredVideoMimeTypes(String... strArr) {
            this.f27453l = ImmutableList.copyOf(strArr);
            return this;
        }

        public Builder setPreferredVideoRoleFlags(int i) {
            this.f27454m = i;
            return this;
        }

        public Builder setSelectUndeterminedTextLanguage(boolean z) {
            this.f27462u = z;
            return this;
        }

        public Builder setTrackSelectionOverrides(TrackSelectionOverrides trackSelectionOverrides) {
            this.f27465x = trackSelectionOverrides;
            return this;
        }

        public Builder setViewportSize(int i, int i2, boolean z) {
            this.f27450i = i;
            this.f27451j = i2;
            this.f27452k = z;
            return this;
        }

        public Builder setViewportSizeToPhysicalDisplaySize(Context context, boolean z) {
            Point currentDisplayModeSize = Util.getCurrentDisplayModeSize(context);
            return setViewportSize(currentDisplayModeSize.x, currentDisplayModeSize.y, z);
        }

        @EnsuresNonNull({"preferredVideoMimeTypes", "preferredAudioLanguages", "preferredAudioMimeTypes", "preferredTextLanguages", "trackSelectionOverrides", "disabledTrackTypes"})
        /* renamed from: z */
        public final void m20917z(TrackSelectionParameters trackSelectionParameters) {
            this.f27442a = trackSelectionParameters.maxVideoWidth;
            this.f27443b = trackSelectionParameters.maxVideoHeight;
            this.f27444c = trackSelectionParameters.maxVideoFrameRate;
            this.f27445d = trackSelectionParameters.maxVideoBitrate;
            this.f27446e = trackSelectionParameters.minVideoWidth;
            this.f27447f = trackSelectionParameters.minVideoHeight;
            this.f27448g = trackSelectionParameters.minVideoFrameRate;
            this.f27449h = trackSelectionParameters.minVideoBitrate;
            this.f27450i = trackSelectionParameters.viewportWidth;
            this.f27451j = trackSelectionParameters.viewportHeight;
            this.f27452k = trackSelectionParameters.viewportOrientationMayChange;
            this.f27453l = trackSelectionParameters.preferredVideoMimeTypes;
            this.f27454m = trackSelectionParameters.preferredVideoRoleFlags;
            this.f27455n = trackSelectionParameters.preferredAudioLanguages;
            this.f27456o = trackSelectionParameters.preferredAudioRoleFlags;
            this.f27457p = trackSelectionParameters.maxAudioChannelCount;
            this.f27458q = trackSelectionParameters.maxAudioBitrate;
            this.f27459r = trackSelectionParameters.preferredAudioMimeTypes;
            this.f27460s = trackSelectionParameters.preferredTextLanguages;
            this.f27461t = trackSelectionParameters.preferredTextRoleFlags;
            this.f27462u = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.f27463v = trackSelectionParameters.forceLowestBitrate;
            this.f27464w = trackSelectionParameters.forceHighestSupportedBitrate;
            this.f27465x = trackSelectionParameters.trackSelectionOverrides;
            this.f27466y = trackSelectionParameters.disabledTrackTypes;
        }

        public Builder(Context context) {
            this();
            setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(context);
            setViewportSizeToPhysicalDisplaySize(context, true);
        }

        public Builder(TrackSelectionParameters trackSelectionParameters) {
            m20917z(trackSelectionParameters);
        }

        public Builder(Bundle bundle) {
            String m20888c = TrackSelectionParameters.m20888c(6);
            TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
            this.f27442a = bundle.getInt(m20888c, trackSelectionParameters.maxVideoWidth);
            this.f27443b = bundle.getInt(TrackSelectionParameters.m20888c(7), trackSelectionParameters.maxVideoHeight);
            this.f27444c = bundle.getInt(TrackSelectionParameters.m20888c(8), trackSelectionParameters.maxVideoFrameRate);
            this.f27445d = bundle.getInt(TrackSelectionParameters.m20888c(9), trackSelectionParameters.maxVideoBitrate);
            this.f27446e = bundle.getInt(TrackSelectionParameters.m20888c(10), trackSelectionParameters.minVideoWidth);
            this.f27447f = bundle.getInt(TrackSelectionParameters.m20888c(11), trackSelectionParameters.minVideoHeight);
            this.f27448g = bundle.getInt(TrackSelectionParameters.m20888c(12), trackSelectionParameters.minVideoFrameRate);
            this.f27449h = bundle.getInt(TrackSelectionParameters.m20888c(13), trackSelectionParameters.minVideoBitrate);
            this.f27450i = bundle.getInt(TrackSelectionParameters.m20888c(14), trackSelectionParameters.viewportWidth);
            this.f27451j = bundle.getInt(TrackSelectionParameters.m20888c(15), trackSelectionParameters.viewportHeight);
            this.f27452k = bundle.getBoolean(TrackSelectionParameters.m20888c(16), trackSelectionParameters.viewportOrientationMayChange);
            this.f27453l = ImmutableList.copyOf((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.m20888c(17)), new String[0]));
            this.f27454m = bundle.getInt(TrackSelectionParameters.m20888c(26), trackSelectionParameters.preferredVideoRoleFlags);
            this.f27455n = m20890A((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.m20888c(1)), new String[0]));
            this.f27456o = bundle.getInt(TrackSelectionParameters.m20888c(2), trackSelectionParameters.preferredAudioRoleFlags);
            this.f27457p = bundle.getInt(TrackSelectionParameters.m20888c(18), trackSelectionParameters.maxAudioChannelCount);
            this.f27458q = bundle.getInt(TrackSelectionParameters.m20888c(19), trackSelectionParameters.maxAudioBitrate);
            this.f27459r = ImmutableList.copyOf((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.m20888c(20)), new String[0]));
            this.f27460s = m20890A((String[]) MoreObjects.firstNonNull(bundle.getStringArray(TrackSelectionParameters.m20888c(3)), new String[0]));
            this.f27461t = bundle.getInt(TrackSelectionParameters.m20888c(4), trackSelectionParameters.preferredTextRoleFlags);
            this.f27462u = bundle.getBoolean(TrackSelectionParameters.m20888c(5), trackSelectionParameters.selectUndeterminedTextLanguage);
            this.f27463v = bundle.getBoolean(TrackSelectionParameters.m20888c(21), trackSelectionParameters.forceLowestBitrate);
            this.f27464w = bundle.getBoolean(TrackSelectionParameters.m20888c(22), trackSelectionParameters.forceHighestSupportedBitrate);
            this.f27465x = (TrackSelectionOverrides) BundleableUtil.fromNullableBundle(TrackSelectionOverrides.CREATOR, bundle.getBundle(TrackSelectionParameters.m20888c(23)), TrackSelectionOverrides.EMPTY);
            this.f27466y = ImmutableSet.copyOf((Collection) Ints.asList((int[]) MoreObjects.firstNonNull(bundle.getIntArray(TrackSelectionParameters.m20888c(25)), new int[0])));
        }
    }
}
