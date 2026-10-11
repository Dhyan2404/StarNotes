package com.google.android.exoplayer2.trackselection;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionOverrides;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ComparisonChain;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public class DefaultTrackSelector extends MappingTrackSelector {
    protected static final int SELECTION_ELIGIBILITY_ADAPTIVE = 2;
    protected static final int SELECTION_ELIGIBILITY_FIXED = 1;
    protected static final int SELECTION_ELIGIBILITY_NO = 0;

    /* renamed from: f */
    public static final float f27307f = 0.98f;

    /* renamed from: g */
    public static final Ordering<Integer> f27308g = Ordering.from(new Comparator() { // from class: com.sunia.HTREnginev2.v0f
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m20792A;
            m20792A = DefaultTrackSelector.m20792A((Integer) obj, (Integer) obj2);
            return m20792A;
        }
    });

    /* renamed from: h */
    public static final Ordering<Integer> f27309h = Ordering.from(new Comparator() { // from class: com.sunia.HTREnginev2.w0f
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m20793B;
            m20793B = DefaultTrackSelector.m20793B((Integer) obj, (Integer) obj2);
            return m20793B;
        }
    });

    /* renamed from: d */
    public final ExoTrackSelection.Factory f27310d;

    /* renamed from: e */
    public final AtomicReference<Parameters> f27311e;

    /* loaded from: classes5.dex */
    public static final class Parameters extends TrackSelectionParameters implements Bundleable {

        /* renamed from: A0 */
        public static final int f27312A0 = 1007;

        /* renamed from: B0 */
        public static final int f27313B0 = 1008;

        /* renamed from: C0 */
        public static final int f27314C0 = 1009;
        public static final Bundleable.Creator<Parameters> CREATOR;

        /* renamed from: D0 */
        public static final int f27315D0 = 1010;

        @Deprecated
        public static final Parameters DEFAULT;
        public static final Parameters DEFAULT_WITHOUT_CONTEXT;

        /* renamed from: E0 */
        public static final int f27316E0 = 1011;

        /* renamed from: F0 */
        public static final int f27317F0 = 1012;

        /* renamed from: G0 */
        public static final int f27318G0 = 1013;

        /* renamed from: H0 */
        public static final int f27319H0 = 1014;

        /* renamed from: I0 */
        public static final int f27320I0 = 1015;

        /* renamed from: J0 */
        public static final int f27321J0 = 1016;

        /* renamed from: t0 */
        public static final int f27322t0 = 1000;

        /* renamed from: u0 */
        public static final int f27323u0 = 1001;

        /* renamed from: v0 */
        public static final int f27324v0 = 1002;

        /* renamed from: w0 */
        public static final int f27325w0 = 1003;

        /* renamed from: x0 */
        public static final int f27326x0 = 1004;

        /* renamed from: y0 */
        public static final int f27327y0 = 1005;

        /* renamed from: z0 */
        public static final int f27328z0 = 1006;
        public final boolean allowAudioMixedChannelCountAdaptiveness;
        public final boolean allowAudioMixedDecoderSupportAdaptiveness;
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        public final boolean allowMultipleAdaptiveSelections;
        public final boolean allowVideoMixedDecoderSupportAdaptiveness;
        public final boolean allowVideoMixedMimeTypeAdaptiveness;
        public final boolean allowVideoNonSeamlessAdaptiveness;
        public final int disabledTextTrackSelectionFlags;
        public final boolean exceedAudioConstraintsIfNecessary;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;

        /* renamed from: k0 */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f27329k0;

        /* renamed from: q0 */
        public final SparseBooleanArray f27330q0;
        public final boolean tunnelingEnabled;

        static {
            Parameters build = new ParametersBuilder().build();
            DEFAULT_WITHOUT_CONTEXT = build;
            DEFAULT = build;
            CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.b1f
                @Override // com.google.android.exoplayer2.Bundleable.Creator
                public final Bundleable fromBundle(Bundle bundle) {
                    DefaultTrackSelector.Parameters m20830m;
                    m20830m = DefaultTrackSelector.Parameters.m20830m(bundle);
                    return m20830m;
                }
            };
        }

        /* renamed from: c */
        public static String m20821c(int i) {
            return Integer.toString(i, 36);
        }

        public static Parameters getDefaults(Context context) {
            return new ParametersBuilder(context).build();
        }

        /* renamed from: i */
        public static boolean m20826i(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: j */
        public static boolean m20827j(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (indexOfKey < 0 || !m20828k(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: k */
        public static boolean m20828k(Map<TrackGroupArray, SelectionOverride> map, Map<TrackGroupArray, SelectionOverride> map2) {
            if (map2.size() != map.size()) {
                return false;
            }
            for (Map.Entry<TrackGroupArray, SelectionOverride> entry : map.entrySet()) {
                TrackGroupArray key = entry.getKey();
                if (!map2.containsKey(key) || !Util.areEqual(entry.getValue(), map2.get(key))) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: l */
        public static int[] m20829l(SparseBooleanArray sparseBooleanArray) {
            int[] iArr = new int[sparseBooleanArray.size()];
            for (int i = 0; i < sparseBooleanArray.size(); i++) {
                iArr[i] = sparseBooleanArray.keyAt(i);
            }
            return iArr;
        }

        /* renamed from: m */
        public static /* synthetic */ Parameters m20830m(Bundle bundle) {
            return new ParametersBuilder(bundle).build();
        }

        /* renamed from: n */
        public static void m20831n(Bundle bundle, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray2 = new SparseArray();
            for (int i = 0; i < sparseArray.size(); i++) {
                int keyAt = sparseArray.keyAt(i);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : sparseArray.valueAt(i).entrySet()) {
                    SelectionOverride value = entry.getValue();
                    if (value != null) {
                        sparseArray2.put(arrayList2.size(), value);
                    }
                    arrayList2.add(entry.getKey());
                    arrayList.add(Integer.valueOf(keyAt));
                }
                bundle.putIntArray(m20821c(1011), Ints.toArray(arrayList));
                bundle.putParcelableArrayList(m20821c(1012), BundleableUtil.toBundleArrayList(arrayList2));
                bundle.putSparseParcelableArray(m20821c(1013), BundleableUtil.toBundleSparseArray(sparseArray2));
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            return super.equals(parameters) && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == parameters.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == parameters.allowVideoNonSeamlessAdaptiveness && this.allowVideoMixedDecoderSupportAdaptiveness == parameters.allowVideoMixedDecoderSupportAdaptiveness && this.exceedAudioConstraintsIfNecessary == parameters.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == parameters.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == parameters.allowAudioMixedSampleRateAdaptiveness && this.allowAudioMixedChannelCountAdaptiveness == parameters.allowAudioMixedChannelCountAdaptiveness && this.allowAudioMixedDecoderSupportAdaptiveness == parameters.allowAudioMixedDecoderSupportAdaptiveness && this.disabledTextTrackSelectionFlags == parameters.disabledTextTrackSelectionFlags && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.tunnelingEnabled == parameters.tunnelingEnabled && this.allowMultipleAdaptiveSelections == parameters.allowMultipleAdaptiveSelections && m20826i(this.f27330q0, parameters.f27330q0) && m20827j(this.f27329k0, parameters.f27329k0);
        }

        public final boolean getRendererDisabled(int i) {
            return this.f27330q0.get(i);
        }

        @Nullable
        @Deprecated
        public final SelectionOverride getSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f27329k0.get(i);
            if (map != null) {
                return map.get(trackGroupArray);
            }
            return null;
        }

        @Deprecated
        public final boolean hasSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f27329k0.get(i);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoMixedDecoderSupportAdaptiveness ? 1 : 0)) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedChannelCountAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedDecoderSupportAdaptiveness ? 1 : 0)) * 31) + this.disabledTextTrackSelectionFlags) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + (this.tunnelingEnabled ? 1 : 0)) * 31) + (this.allowMultipleAdaptiveSelections ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters, com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            Bundle bundle = super.toBundle();
            bundle.putBoolean(m20821c(1000), this.exceedVideoConstraintsIfNecessary);
            bundle.putBoolean(m20821c(1001), this.allowVideoMixedMimeTypeAdaptiveness);
            bundle.putBoolean(m20821c(1002), this.allowVideoNonSeamlessAdaptiveness);
            bundle.putBoolean(m20821c(1015), this.allowVideoMixedDecoderSupportAdaptiveness);
            bundle.putBoolean(m20821c(1003), this.exceedAudioConstraintsIfNecessary);
            bundle.putBoolean(m20821c(1004), this.allowAudioMixedMimeTypeAdaptiveness);
            bundle.putBoolean(m20821c(1005), this.allowAudioMixedSampleRateAdaptiveness);
            bundle.putBoolean(m20821c(1006), this.allowAudioMixedChannelCountAdaptiveness);
            bundle.putBoolean(m20821c(1016), this.allowAudioMixedDecoderSupportAdaptiveness);
            bundle.putInt(m20821c(1007), this.disabledTextTrackSelectionFlags);
            bundle.putBoolean(m20821c(1008), this.exceedRendererCapabilitiesIfNecessary);
            bundle.putBoolean(m20821c(1009), this.tunnelingEnabled);
            bundle.putBoolean(m20821c(1010), this.allowMultipleAdaptiveSelections);
            m20831n(bundle, this.f27329k0);
            bundle.putIntArray(m20821c(1014), m20829l(this.f27330q0));
            return bundle;
        }

        public Parameters(ParametersBuilder parametersBuilder) {
            super(parametersBuilder);
            this.exceedVideoConstraintsIfNecessary = parametersBuilder.f27345z;
            this.allowVideoMixedMimeTypeAdaptiveness = parametersBuilder.f27331A;
            this.allowVideoNonSeamlessAdaptiveness = parametersBuilder.f27332B;
            this.allowVideoMixedDecoderSupportAdaptiveness = parametersBuilder.f27333C;
            this.exceedAudioConstraintsIfNecessary = parametersBuilder.f27334D;
            this.allowAudioMixedMimeTypeAdaptiveness = parametersBuilder.f27335E;
            this.allowAudioMixedSampleRateAdaptiveness = parametersBuilder.f27336F;
            this.allowAudioMixedChannelCountAdaptiveness = parametersBuilder.f27337G;
            this.allowAudioMixedDecoderSupportAdaptiveness = parametersBuilder.f27338H;
            this.disabledTextTrackSelectionFlags = parametersBuilder.f27339I;
            this.exceedRendererCapabilitiesIfNecessary = parametersBuilder.f27340J;
            this.tunnelingEnabled = parametersBuilder.f27341K;
            this.allowMultipleAdaptiveSelections = parametersBuilder.f27342L;
            this.f27329k0 = parametersBuilder.f27343M;
            this.f27330q0 = parametersBuilder.f27344N;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters
        public ParametersBuilder buildUpon() {
            return new ParametersBuilder(this);
        }
    }

    /* loaded from: classes5.dex */
    public static final class ParametersBuilder extends TrackSelectionParameters.Builder {

        /* renamed from: A */
        public boolean f27331A;

        /* renamed from: B */
        public boolean f27332B;

        /* renamed from: C */
        public boolean f27333C;

        /* renamed from: D */
        public boolean f27334D;

        /* renamed from: E */
        public boolean f27335E;

        /* renamed from: F */
        public boolean f27336F;

        /* renamed from: G */
        public boolean f27337G;

        /* renamed from: H */
        public boolean f27338H;

        /* renamed from: I */
        public int f27339I;

        /* renamed from: J */
        public boolean f27340J;

        /* renamed from: K */
        public boolean f27341K;

        /* renamed from: L */
        public boolean f27342L;

        /* renamed from: M */
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> f27343M;

        /* renamed from: N */
        public final SparseBooleanArray f27344N;

        /* renamed from: z */
        public boolean f27345z;

        /* renamed from: R */
        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> m20847R(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
            }
            return sparseArray2;
        }

        /* renamed from: S */
        public final void m20848S() {
            this.f27345z = true;
            this.f27331A = false;
            this.f27332B = true;
            this.f27333C = false;
            this.f27334D = true;
            this.f27335E = false;
            this.f27336F = false;
            this.f27337G = false;
            this.f27338H = false;
            this.f27339I = 0;
            this.f27340J = true;
            this.f27341K = false;
            this.f27342L = true;
        }

        /* renamed from: T */
        public final SparseBooleanArray m20849T(@Nullable int[] iArr) {
            if (iArr == null) {
                return new SparseBooleanArray();
            }
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
            for (int i : iArr) {
                sparseBooleanArray.append(i, true);
            }
            return sparseBooleanArray;
        }

        /* renamed from: U */
        public final void m20850U(Bundle bundle) {
            int[] intArray = bundle.getIntArray(Parameters.m20821c(1011));
            List fromBundleNullableList = BundleableUtil.fromBundleNullableList(TrackGroupArray.CREATOR, bundle.getParcelableArrayList(Parameters.m20821c(1012)), ImmutableList.m26161of());
            SparseArray fromBundleNullableSparseArray = BundleableUtil.fromBundleNullableSparseArray(SelectionOverride.CREATOR, bundle.getSparseParcelableArray(Parameters.m20821c(1013)), new SparseArray());
            if (intArray == null || intArray.length != fromBundleNullableList.size()) {
                return;
            }
            for (int i = 0; i < intArray.length; i++) {
                setSelectionOverride(intArray[i], (TrackGroupArray) fromBundleNullableList.get(i), (SelectionOverride) fromBundleNullableSparseArray.get(i));
            }
        }

        @Deprecated
        public final ParametersBuilder clearSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.f27343M.get(i);
            if (map != null && map.containsKey(trackGroupArray)) {
                map.remove(trackGroupArray);
                if (map.isEmpty()) {
                    this.f27343M.remove(i);
                }
            }
            return this;
        }

        @Deprecated
        public final ParametersBuilder clearSelectionOverrides(int i) {
            Map<TrackGroupArray, SelectionOverride> map = this.f27343M.get(i);
            if (map != null && !map.isEmpty()) {
                this.f27343M.remove(i);
            }
            return this;
        }

        public ParametersBuilder setAllowAudioMixedChannelCountAdaptiveness(boolean z) {
            this.f27337G = z;
            return this;
        }

        public ParametersBuilder setAllowAudioMixedDecoderSupportAdaptiveness(boolean z) {
            this.f27338H = z;
            return this;
        }

        public ParametersBuilder setAllowAudioMixedMimeTypeAdaptiveness(boolean z) {
            this.f27335E = z;
            return this;
        }

        public ParametersBuilder setAllowAudioMixedSampleRateAdaptiveness(boolean z) {
            this.f27336F = z;
            return this;
        }

        public ParametersBuilder setAllowMultipleAdaptiveSelections(boolean z) {
            this.f27342L = z;
            return this;
        }

        public ParametersBuilder setAllowVideoMixedDecoderSupportAdaptiveness(boolean z) {
            this.f27333C = z;
            return this;
        }

        public ParametersBuilder setAllowVideoMixedMimeTypeAdaptiveness(boolean z) {
            this.f27331A = z;
            return this;
        }

        public ParametersBuilder setAllowVideoNonSeamlessAdaptiveness(boolean z) {
            this.f27332B = z;
            return this;
        }

        public ParametersBuilder setDisabledTextTrackSelectionFlags(int i) {
            this.f27339I = i;
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public /* bridge */ /* synthetic */ TrackSelectionParameters.Builder setDisabledTrackTypes(Set set) {
            return setDisabledTrackTypes((Set<Integer>) set);
        }

        public ParametersBuilder setExceedAudioConstraintsIfNecessary(boolean z) {
            this.f27334D = z;
            return this;
        }

        public ParametersBuilder setExceedRendererCapabilitiesIfNecessary(boolean z) {
            this.f27340J = z;
            return this;
        }

        public ParametersBuilder setExceedVideoConstraintsIfNecessary(boolean z) {
            this.f27345z = z;
            return this;
        }

        public final ParametersBuilder setRendererDisabled(int i, boolean z) {
            if (this.f27344N.get(i) == z) {
                return this;
            }
            if (z) {
                this.f27344N.put(i, true);
            } else {
                this.f27344N.delete(i);
            }
            return this;
        }

        @Deprecated
        public final ParametersBuilder setSelectionOverride(int i, TrackGroupArray trackGroupArray, @Nullable SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.f27343M.get(i);
            if (map == null) {
                map = new HashMap<>();
                this.f27343M.put(i, map);
            }
            if (map.containsKey(trackGroupArray) && Util.areEqual(map.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map.put(trackGroupArray, selectionOverride);
            return this;
        }

        public ParametersBuilder setTunnelingEnabled(boolean z) {
            this.f27341K = z;
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public Parameters build() {
            return new Parameters(this);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder clearVideoSizeConstraints() {
            super.clearVideoSizeConstraints();
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder clearViewportSizeConstraints() {
            super.clearViewportSizeConstraints();
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder set(TrackSelectionParameters trackSelectionParameters) {
            super.set(trackSelectionParameters);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setDisabledTrackTypes(Set<Integer> set) {
            super.setDisabledTrackTypes(set);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setForceHighestSupportedBitrate(boolean z) {
            super.setForceHighestSupportedBitrate(z);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setForceLowestBitrate(boolean z) {
            super.setForceLowestBitrate(z);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMaxAudioBitrate(int i) {
            super.setMaxAudioBitrate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMaxAudioChannelCount(int i) {
            super.setMaxAudioChannelCount(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMaxVideoBitrate(int i) {
            super.setMaxVideoBitrate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMaxVideoFrameRate(int i) {
            super.setMaxVideoFrameRate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMaxVideoSize(int i, int i2) {
            super.setMaxVideoSize(i, i2);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMaxVideoSizeSd() {
            super.setMaxVideoSizeSd();
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMinVideoBitrate(int i) {
            super.setMinVideoBitrate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMinVideoFrameRate(int i) {
            super.setMinVideoFrameRate(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setMinVideoSize(int i, int i2) {
            super.setMinVideoSize(i, i2);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredAudioLanguage(@Nullable String str) {
            super.setPreferredAudioLanguage(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredAudioLanguages(String... strArr) {
            super.setPreferredAudioLanguages(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredAudioMimeType(@Nullable String str) {
            super.setPreferredAudioMimeType(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredAudioMimeTypes(String... strArr) {
            super.setPreferredAudioMimeTypes(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredAudioRoleFlags(int i) {
            super.setPreferredAudioRoleFlags(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredTextLanguage(@Nullable String str) {
            super.setPreferredTextLanguage(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Context context) {
            super.setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(context);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredTextLanguages(String... strArr) {
            super.setPreferredTextLanguages(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredTextRoleFlags(int i) {
            super.setPreferredTextRoleFlags(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredVideoMimeType(@Nullable String str) {
            super.setPreferredVideoMimeType(str);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredVideoMimeTypes(String... strArr) {
            super.setPreferredVideoMimeTypes(strArr);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredVideoRoleFlags(int i) {
            super.setPreferredVideoRoleFlags(i);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setSelectUndeterminedTextLanguage(boolean z) {
            super.setSelectUndeterminedTextLanguage(z);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setTrackSelectionOverrides(TrackSelectionOverrides trackSelectionOverrides) {
            super.setTrackSelectionOverrides(trackSelectionOverrides);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setViewportSize(int i, int i2, boolean z) {
            super.setViewportSize(i, i2, z);
            return this;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setViewportSizeToPhysicalDisplaySize(Context context, boolean z) {
            super.setViewportSizeToPhysicalDisplaySize(context, z);
            return this;
        }

        @Deprecated
        public ParametersBuilder() {
            this.f27343M = new SparseArray<>();
            this.f27344N = new SparseBooleanArray();
            m20848S();
        }

        @Deprecated
        public final ParametersBuilder clearSelectionOverrides() {
            if (this.f27343M.size() == 0) {
                return this;
            }
            this.f27343M.clear();
            return this;
        }

        public ParametersBuilder(Context context) {
            super(context);
            this.f27343M = new SparseArray<>();
            this.f27344N = new SparseBooleanArray();
            m20848S();
        }

        public ParametersBuilder(Parameters parameters) {
            super(parameters);
            this.f27339I = parameters.disabledTextTrackSelectionFlags;
            this.f27345z = parameters.exceedVideoConstraintsIfNecessary;
            this.f27331A = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.f27332B = parameters.allowVideoNonSeamlessAdaptiveness;
            this.f27333C = parameters.allowVideoMixedDecoderSupportAdaptiveness;
            this.f27334D = parameters.exceedAudioConstraintsIfNecessary;
            this.f27335E = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.f27336F = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.f27337G = parameters.allowAudioMixedChannelCountAdaptiveness;
            this.f27338H = parameters.allowAudioMixedDecoderSupportAdaptiveness;
            this.f27340J = parameters.exceedRendererCapabilitiesIfNecessary;
            this.f27341K = parameters.tunnelingEnabled;
            this.f27342L = parameters.allowMultipleAdaptiveSelections;
            this.f27343M = m20847R(parameters.f27329k0);
            this.f27344N = parameters.f27330q0.clone();
        }

        public ParametersBuilder(Bundle bundle) {
            super(bundle);
            Parameters parameters = Parameters.DEFAULT_WITHOUT_CONTEXT;
            setExceedVideoConstraintsIfNecessary(bundle.getBoolean(Parameters.m20821c(1000), parameters.exceedVideoConstraintsIfNecessary));
            setAllowVideoMixedMimeTypeAdaptiveness(bundle.getBoolean(Parameters.m20821c(1001), parameters.allowVideoMixedMimeTypeAdaptiveness));
            setAllowVideoNonSeamlessAdaptiveness(bundle.getBoolean(Parameters.m20821c(1002), parameters.allowVideoNonSeamlessAdaptiveness));
            setAllowVideoMixedDecoderSupportAdaptiveness(bundle.getBoolean(Parameters.m20821c(1015), parameters.allowVideoMixedDecoderSupportAdaptiveness));
            setExceedAudioConstraintsIfNecessary(bundle.getBoolean(Parameters.m20821c(1003), parameters.exceedAudioConstraintsIfNecessary));
            setAllowAudioMixedMimeTypeAdaptiveness(bundle.getBoolean(Parameters.m20821c(1004), parameters.allowAudioMixedMimeTypeAdaptiveness));
            setAllowAudioMixedSampleRateAdaptiveness(bundle.getBoolean(Parameters.m20821c(1005), parameters.allowAudioMixedSampleRateAdaptiveness));
            setAllowAudioMixedChannelCountAdaptiveness(bundle.getBoolean(Parameters.m20821c(1006), parameters.allowAudioMixedChannelCountAdaptiveness));
            setAllowAudioMixedDecoderSupportAdaptiveness(bundle.getBoolean(Parameters.m20821c(1016), parameters.allowAudioMixedDecoderSupportAdaptiveness));
            setDisabledTextTrackSelectionFlags(bundle.getInt(Parameters.m20821c(1007), parameters.disabledTextTrackSelectionFlags));
            setExceedRendererCapabilitiesIfNecessary(bundle.getBoolean(Parameters.m20821c(1008), parameters.exceedRendererCapabilitiesIfNecessary));
            setTunnelingEnabled(bundle.getBoolean(Parameters.m20821c(1009), parameters.tunnelingEnabled));
            setAllowMultipleAdaptiveSelections(bundle.getBoolean(Parameters.m20821c(1010), parameters.allowMultipleAdaptiveSelections));
            this.f27343M = new SparseArray<>();
            m20850U(bundle);
            this.f27344N = m20849T(bundle.getIntArray(Parameters.m20821c(1014)));
        }
    }

    /* loaded from: classes5.dex */
    public static final class SelectionOverride implements Bundleable {
        public static final Bundleable.Creator<SelectionOverride> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.c1f
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                DefaultTrackSelector.SelectionOverride m20853c;
                m20853c = DefaultTrackSelector.SelectionOverride.m20853c(bundle);
                return m20853c;
            }
        };

        /* renamed from: e */
        public static final int f27346e = 0;

        /* renamed from: f */
        public static final int f27347f = 1;

        /* renamed from: g */
        public static final int f27348g = 2;
        public final int groupIndex;
        public final int length;
        public final int[] tracks;
        public final int type;

        public SelectionOverride(int i, int... iArr) {
            this(i, iArr, 0);
        }

        /* renamed from: b */
        public static String m20852b(int i) {
            return Integer.toString(i, 36);
        }

        /* renamed from: c */
        public static /* synthetic */ SelectionOverride m20853c(Bundle bundle) {
            boolean z = false;
            int i = bundle.getInt(m20852b(0), -1);
            int[] intArray = bundle.getIntArray(m20852b(1));
            int i2 = bundle.getInt(m20852b(2), -1);
            if (i >= 0 && i2 >= 0) {
                z = true;
            }
            Assertions.checkArgument(z);
            Assertions.checkNotNull(intArray);
            return new SelectionOverride(i, intArray, i2);
        }

        public boolean containsTrack(int i) {
            for (int i2 : this.tracks) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            return this.groupIndex == selectionOverride.groupIndex && Arrays.equals(this.tracks, selectionOverride.tracks) && this.type == selectionOverride.type;
        }

        public int hashCode() {
            return (((this.groupIndex * 31) + Arrays.hashCode(this.tracks)) * 31) + this.type;
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(m20852b(0), this.groupIndex);
            bundle.putIntArray(m20852b(1), this.tracks);
            bundle.putInt(m20852b(2), this.type);
            return bundle;
        }

        public SelectionOverride(int i, int[] iArr, int i2) {
            this.groupIndex = i;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.tracks = copyOf;
            this.length = iArr.length;
            this.type = i2;
            Arrays.sort(copyOf);
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class TrackInfo<T extends TrackInfo<T>> {

        /* renamed from: e */
        public final int f27349e;

        /* renamed from: f */
        public final TrackGroup f27350f;

        /* renamed from: g */
        public final int f27351g;

        /* renamed from: h */
        public final Format f27352h;

        /* loaded from: classes5.dex */
        public interface Factory<T extends TrackInfo<T>> {
            List<T> create(int i, TrackGroup trackGroup, int[] iArr);
        }

        public TrackInfo(int i, TrackGroup trackGroup, int i2) {
            this.f27349e = i;
            this.f27350f = trackGroup;
            this.f27351g = i2;
            this.f27352h = trackGroup.getFormat(i2);
        }

        /* renamed from: a */
        public abstract int mo20854a();

        /* renamed from: b */
        public abstract boolean mo20855b(T t);
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$b */
    /* loaded from: classes5.dex */
    public static final class C4956b extends TrackInfo<C4956b> implements Comparable<C4956b> {

        /* renamed from: i */
        public final int f27353i;

        /* renamed from: j */
        public final boolean f27354j;

        /* renamed from: k */
        @Nullable
        public final String f27355k;

        /* renamed from: l */
        public final Parameters f27356l;

        /* renamed from: m */
        public final boolean f27357m;

        /* renamed from: n */
        public final int f27358n;

        /* renamed from: o */
        public final int f27359o;

        /* renamed from: p */
        public final int f27360p;

        /* renamed from: q */
        public final boolean f27361q;

        /* renamed from: r */
        public final int f27362r;

        /* renamed from: s */
        public final int f27363s;

        /* renamed from: t */
        public final boolean f27364t;

        /* renamed from: u */
        public final int f27365u;

        /* renamed from: v */
        public final int f27366v;

        /* renamed from: w */
        public final int f27367w;

        /* renamed from: x */
        public final int f27368x;

        /* renamed from: y */
        public final boolean f27369y;

        /* renamed from: z */
        public final boolean f27370z;

        public C4956b(int i, TrackGroup trackGroup, int i2, Parameters parameters, int i3, boolean z) {
            super(i, trackGroup, i2);
            int i4;
            int i5;
            int i6;
            this.f27356l = parameters;
            this.f27355k = DefaultTrackSelector.normalizeUndeterminedLanguageToNull(this.f27352h.language);
            this.f27357m = DefaultTrackSelector.isSupported(i3, false);
            int i7 = 0;
            while (true) {
                i4 = Integer.MAX_VALUE;
                if (i7 >= parameters.preferredAudioLanguages.size()) {
                    i5 = 0;
                    i7 = Integer.MAX_VALUE;
                    break;
                } else {
                    i5 = DefaultTrackSelector.getFormatLanguageScore(this.f27352h, parameters.preferredAudioLanguages.get(i7), false);
                    if (i5 > 0) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.f27359o = i7;
            this.f27358n = i5;
            this.f27360p = DefaultTrackSelector.m20808t(this.f27352h.roleFlags, parameters.preferredAudioRoleFlags);
            Format format = this.f27352h;
            int i8 = format.roleFlags;
            this.f27361q = i8 == 0 || (i8 & 1) != 0;
            this.f27364t = (format.selectionFlags & 1) != 0;
            int i9 = format.channelCount;
            this.f27365u = i9;
            this.f27366v = format.sampleRate;
            int i10 = format.bitrate;
            this.f27367w = i10;
            this.f27354j = (i10 == -1 || i10 <= parameters.maxAudioBitrate) && (i9 == -1 || i9 <= parameters.maxAudioChannelCount);
            String[] systemLanguageCodes = Util.getSystemLanguageCodes();
            int i11 = 0;
            while (true) {
                if (i11 >= systemLanguageCodes.length) {
                    i6 = 0;
                    i11 = Integer.MAX_VALUE;
                    break;
                } else {
                    i6 = DefaultTrackSelector.getFormatLanguageScore(this.f27352h, systemLanguageCodes[i11], false);
                    if (i6 > 0) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.f27362r = i11;
            this.f27363s = i6;
            int i12 = 0;
            while (true) {
                if (i12 < parameters.preferredAudioMimeTypes.size()) {
                    String str = this.f27352h.sampleMimeType;
                    if (str != null && str.equals(parameters.preferredAudioMimeTypes.get(i12))) {
                        i4 = i12;
                        break;
                    }
                    i12++;
                } else {
                    break;
                }
            }
            this.f27368x = i4;
            this.f27369y = RendererCapabilities.getDecoderSupport(i3) == 128;
            this.f27370z = RendererCapabilities.getHardwareAccelerationSupport(i3) == 64;
            this.f27353i = m20859f(i3, z);
        }

        /* renamed from: c */
        public static int m20856c(List<C4956b> list, List<C4956b> list2) {
            return ((C4956b) Collections.max(list)).compareTo((C4956b) Collections.max(list2));
        }

        /* renamed from: e */
        public static ImmutableList<C4956b> m20857e(int i, TrackGroup trackGroup, Parameters parameters, int[] iArr, boolean z) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (int i2 = 0; i2 < trackGroup.length; i2++) {
                builder.add((ImmutableList.Builder) new C4956b(i, trackGroup, i2, parameters, iArr[i2], z));
            }
            return builder.build();
        }

        @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo
        /* renamed from: a */
        public int mo20854a() {
            return this.f27353i;
        }

        @Override // java.lang.Comparable
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(C4956b c4956b) {
            Ordering reverse = (this.f27354j && this.f27357m) ? DefaultTrackSelector.f27308g : DefaultTrackSelector.f27308g.reverse();
            ComparisonChain compare = ComparisonChain.start().compareFalseFirst(this.f27357m, c4956b.f27357m).compare(Integer.valueOf(this.f27359o), Integer.valueOf(c4956b.f27359o), Ordering.natural().reverse()).compare(this.f27358n, c4956b.f27358n).compare(this.f27360p, c4956b.f27360p).compareFalseFirst(this.f27364t, c4956b.f27364t).compareFalseFirst(this.f27361q, c4956b.f27361q).compare(Integer.valueOf(this.f27362r), Integer.valueOf(c4956b.f27362r), Ordering.natural().reverse()).compare(this.f27363s, c4956b.f27363s).compareFalseFirst(this.f27354j, c4956b.f27354j).compare(Integer.valueOf(this.f27368x), Integer.valueOf(c4956b.f27368x), Ordering.natural().reverse()).compare(Integer.valueOf(this.f27367w), Integer.valueOf(c4956b.f27367w), this.f27356l.forceLowestBitrate ? DefaultTrackSelector.f27308g.reverse() : DefaultTrackSelector.f27309h).compareFalseFirst(this.f27369y, c4956b.f27369y).compareFalseFirst(this.f27370z, c4956b.f27370z).compare(Integer.valueOf(this.f27365u), Integer.valueOf(c4956b.f27365u), reverse).compare(Integer.valueOf(this.f27366v), Integer.valueOf(c4956b.f27366v), reverse);
            Integer valueOf = Integer.valueOf(this.f27367w);
            Integer valueOf2 = Integer.valueOf(c4956b.f27367w);
            if (!Util.areEqual(this.f27355k, c4956b.f27355k)) {
                reverse = DefaultTrackSelector.f27309h;
            }
            return compare.compare(valueOf, valueOf2, reverse).result();
        }

        /* renamed from: f */
        public final int m20859f(int i, boolean z) {
            if (!DefaultTrackSelector.isSupported(i, this.f27356l.exceedRendererCapabilitiesIfNecessary)) {
                return 0;
            }
            if (!this.f27354j && !this.f27356l.exceedAudioConstraintsIfNecessary) {
                return 0;
            }
            if (DefaultTrackSelector.isSupported(i, false) && this.f27354j && this.f27352h.bitrate != -1) {
                Parameters parameters = this.f27356l;
                if (!parameters.forceHighestSupportedBitrate && !parameters.forceLowestBitrate && (parameters.allowMultipleAdaptiveSelections || !z)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public boolean mo20855b(C4956b c4956b) {
            int i;
            String str;
            int i2;
            Parameters parameters = this.f27356l;
            if ((parameters.allowAudioMixedChannelCountAdaptiveness || ((i2 = this.f27352h.channelCount) != -1 && i2 == c4956b.f27352h.channelCount)) && (parameters.allowAudioMixedMimeTypeAdaptiveness || ((str = this.f27352h.sampleMimeType) != null && TextUtils.equals(str, c4956b.f27352h.sampleMimeType)))) {
                Parameters parameters2 = this.f27356l;
                if ((parameters2.allowAudioMixedSampleRateAdaptiveness || ((i = this.f27352h.sampleRate) != -1 && i == c4956b.f27352h.sampleRate)) && (parameters2.allowAudioMixedDecoderSupportAdaptiveness || (this.f27369y == c4956b.f27369y && this.f27370z == c4956b.f27370z))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$c */
    /* loaded from: classes5.dex */
    public static final class C4957c implements Comparable<C4957c> {

        /* renamed from: e */
        public final boolean f27371e;

        /* renamed from: f */
        public final boolean f27372f;

        public C4957c(Format format, int i) {
            this.f27371e = (format.selectionFlags & 1) != 0;
            this.f27372f = DefaultTrackSelector.isSupported(i, false);
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C4957c c4957c) {
            return ComparisonChain.start().compareFalseFirst(this.f27372f, c4957c.f27372f).compareFalseFirst(this.f27371e, c4957c.f27371e).result();
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$d */
    /* loaded from: classes5.dex */
    public static final class C4958d extends TrackInfo<C4958d> implements Comparable<C4958d> {

        /* renamed from: i */
        public final int f27373i;

        /* renamed from: j */
        public final boolean f27374j;

        /* renamed from: k */
        public final boolean f27375k;

        /* renamed from: l */
        public final boolean f27376l;

        /* renamed from: m */
        public final int f27377m;

        /* renamed from: n */
        public final int f27378n;

        /* renamed from: o */
        public final int f27379o;

        /* renamed from: p */
        public final int f27380p;

        /* renamed from: q */
        public final boolean f27381q;

        public C4958d(int i, TrackGroup trackGroup, int i2, Parameters parameters, int i3, @Nullable String str) {
            super(i, trackGroup, i2);
            int i4;
            int i5 = 0;
            this.f27374j = DefaultTrackSelector.isSupported(i3, false);
            int i6 = this.f27352h.selectionFlags & (~parameters.disabledTextTrackSelectionFlags);
            this.f27375k = (i6 & 1) != 0;
            this.f27376l = (i6 & 2) != 0;
            ImmutableList<String> m26162of = parameters.preferredTextLanguages.isEmpty() ? ImmutableList.m26162of("") : parameters.preferredTextLanguages;
            int i7 = 0;
            while (true) {
                if (i7 >= m26162of.size()) {
                    i7 = Integer.MAX_VALUE;
                    i4 = 0;
                    break;
                } else {
                    i4 = DefaultTrackSelector.getFormatLanguageScore(this.f27352h, m26162of.get(i7), parameters.selectUndeterminedTextLanguage);
                    if (i4 > 0) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.f27377m = i7;
            this.f27378n = i4;
            int m20808t = DefaultTrackSelector.m20808t(this.f27352h.roleFlags, parameters.preferredTextRoleFlags);
            this.f27379o = m20808t;
            this.f27381q = (this.f27352h.roleFlags & 1088) != 0;
            int formatLanguageScore = DefaultTrackSelector.getFormatLanguageScore(this.f27352h, str, DefaultTrackSelector.normalizeUndeterminedLanguageToNull(str) == null);
            this.f27380p = formatLanguageScore;
            boolean z = i4 > 0 || (parameters.preferredTextLanguages.isEmpty() && m20808t > 0) || this.f27375k || (this.f27376l && formatLanguageScore > 0);
            if (DefaultTrackSelector.isSupported(i3, parameters.exceedRendererCapabilitiesIfNecessary) && z) {
                i5 = 1;
            }
            this.f27373i = i5;
        }

        /* renamed from: c */
        public static int m20862c(List<C4958d> list, List<C4958d> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        /* renamed from: e */
        public static ImmutableList<C4958d> m20863e(int i, TrackGroup trackGroup, Parameters parameters, int[] iArr, @Nullable String str) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (int i2 = 0; i2 < trackGroup.length; i2++) {
                builder.add((ImmutableList.Builder) new C4958d(i, trackGroup, i2, parameters, iArr[i2], str));
            }
            return builder.build();
        }

        @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo
        /* renamed from: a */
        public int mo20854a() {
            return this.f27373i;
        }

        @Override // java.lang.Comparable
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(C4958d c4958d) {
            ComparisonChain compare = ComparisonChain.start().compareFalseFirst(this.f27374j, c4958d.f27374j).compare(Integer.valueOf(this.f27377m), Integer.valueOf(c4958d.f27377m), Ordering.natural().reverse()).compare(this.f27378n, c4958d.f27378n).compare(this.f27379o, c4958d.f27379o).compareFalseFirst(this.f27375k, c4958d.f27375k).compare(Boolean.valueOf(this.f27376l), Boolean.valueOf(c4958d.f27376l), this.f27378n == 0 ? Ordering.natural() : Ordering.natural().reverse()).compare(this.f27380p, c4958d.f27380p);
            if (this.f27379o == 0) {
                compare = compare.compareTrueFirst(this.f27381q, c4958d.f27381q);
            }
            return compare.result();
        }

        @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean mo20855b(C4958d c4958d) {
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$e */
    /* loaded from: classes5.dex */
    public static final class C4959e extends TrackInfo<C4959e> {

        /* renamed from: i */
        public final boolean f27382i;

        /* renamed from: j */
        public final Parameters f27383j;

        /* renamed from: k */
        public final boolean f27384k;

        /* renamed from: l */
        public final boolean f27385l;

        /* renamed from: m */
        public final int f27386m;

        /* renamed from: n */
        public final int f27387n;

        /* renamed from: o */
        public final int f27388o;

        /* renamed from: p */
        public final int f27389p;

        /* renamed from: q */
        public final boolean f27390q;

        /* renamed from: r */
        public final boolean f27391r;

        /* renamed from: s */
        public final int f27392s;

        /* renamed from: t */
        public final boolean f27393t;

        /* renamed from: u */
        public final boolean f27394u;

        /* renamed from: v */
        public final int f27395v;

        /* JADX WARN: Removed duplicated region for block: B:49:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00b2  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x00c8 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C4959e(int r5, com.google.android.exoplayer2.source.TrackGroup r6, int r7, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.C4959e.<init>(int, com.google.android.exoplayer2.source.TrackGroup, int, com.google.android.exoplayer2.trackselection.DefaultTrackSelector$Parameters, int, int, boolean):void");
        }

        /* renamed from: e */
        public static int m20868e(C4959e c4959e, C4959e c4959e2) {
            ComparisonChain compareFalseFirst = ComparisonChain.start().compareFalseFirst(c4959e.f27385l, c4959e2.f27385l).compare(c4959e.f27389p, c4959e2.f27389p).compareFalseFirst(c4959e.f27390q, c4959e2.f27390q).compareFalseFirst(c4959e.f27382i, c4959e2.f27382i).compareFalseFirst(c4959e.f27384k, c4959e2.f27384k).compare(Integer.valueOf(c4959e.f27388o), Integer.valueOf(c4959e2.f27388o), Ordering.natural().reverse()).compareFalseFirst(c4959e.f27393t, c4959e2.f27393t).compareFalseFirst(c4959e.f27394u, c4959e2.f27394u);
            if (c4959e.f27393t && c4959e.f27394u) {
                compareFalseFirst = compareFalseFirst.compare(c4959e.f27395v, c4959e2.f27395v);
            }
            return compareFalseFirst.result();
        }

        /* renamed from: f */
        public static int m20869f(C4959e c4959e, C4959e c4959e2) {
            Ordering reverse = (c4959e.f27382i && c4959e.f27385l) ? DefaultTrackSelector.f27308g : DefaultTrackSelector.f27308g.reverse();
            return ComparisonChain.start().compare(Integer.valueOf(c4959e.f27386m), Integer.valueOf(c4959e2.f27386m), c4959e.f27383j.forceLowestBitrate ? DefaultTrackSelector.f27308g.reverse() : DefaultTrackSelector.f27309h).compare(Integer.valueOf(c4959e.f27387n), Integer.valueOf(c4959e2.f27387n), reverse).compare(Integer.valueOf(c4959e.f27386m), Integer.valueOf(c4959e2.f27386m), reverse).result();
        }

        /* renamed from: g */
        public static int m20870g(List<C4959e> list, List<C4959e> list2) {
            return ComparisonChain.start().compare((C4959e) Collections.max(list, new Comparator() { // from class: com.sunia.HTREnginev2.d1f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m20868e;
                    m20868e = DefaultTrackSelector.C4959e.m20868e((DefaultTrackSelector.C4959e) obj, (DefaultTrackSelector.C4959e) obj2);
                    return m20868e;
                }
            }), (C4959e) Collections.max(list2, new Comparator() { // from class: com.sunia.HTREnginev2.d1f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m20868e;
                    m20868e = DefaultTrackSelector.C4959e.m20868e((DefaultTrackSelector.C4959e) obj, (DefaultTrackSelector.C4959e) obj2);
                    return m20868e;
                }
            }), new Comparator() { // from class: com.sunia.HTREnginev2.d1f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m20868e;
                    m20868e = DefaultTrackSelector.C4959e.m20868e((DefaultTrackSelector.C4959e) obj, (DefaultTrackSelector.C4959e) obj2);
                    return m20868e;
                }
            }).compare(list.size(), list2.size()).compare((C4959e) Collections.max(list, new Comparator() { // from class: com.sunia.HTREnginev2.e1f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m20869f;
                    m20869f = DefaultTrackSelector.C4959e.m20869f((DefaultTrackSelector.C4959e) obj, (DefaultTrackSelector.C4959e) obj2);
                    return m20869f;
                }
            }), (C4959e) Collections.max(list2, new Comparator() { // from class: com.sunia.HTREnginev2.e1f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m20869f;
                    m20869f = DefaultTrackSelector.C4959e.m20869f((DefaultTrackSelector.C4959e) obj, (DefaultTrackSelector.C4959e) obj2);
                    return m20869f;
                }
            }), new Comparator() { // from class: com.sunia.HTREnginev2.e1f
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m20869f;
                    m20869f = DefaultTrackSelector.C4959e.m20869f((DefaultTrackSelector.C4959e) obj, (DefaultTrackSelector.C4959e) obj2);
                    return m20869f;
                }
            }).result();
        }

        /* renamed from: h */
        public static ImmutableList<C4959e> m20871h(int i, TrackGroup trackGroup, Parameters parameters, int[] iArr, int i2) {
            int m20806r = DefaultTrackSelector.m20806r(trackGroup, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            ImmutableList.Builder builder = ImmutableList.builder();
            for (int i3 = 0; i3 < trackGroup.length; i3++) {
                int pixelCount = trackGroup.getFormat(i3).getPixelCount();
                builder.add((ImmutableList.Builder) new C4959e(i, trackGroup, i3, parameters, iArr[i3], i2, m20806r == Integer.MAX_VALUE || (pixelCount != -1 && pixelCount <= m20806r)));
            }
            return builder.build();
        }

        @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo
        /* renamed from: a */
        public int mo20854a() {
            return this.f27392s;
        }

        /* renamed from: i */
        public final int m20872i(int i, int i2) {
            if ((this.f27352h.roleFlags & 16384) != 0 || !DefaultTrackSelector.isSupported(i, this.f27383j.exceedRendererCapabilitiesIfNecessary)) {
                return 0;
            }
            if (!this.f27382i && !this.f27383j.exceedVideoConstraintsIfNecessary) {
                return 0;
            }
            if (DefaultTrackSelector.isSupported(i, false) && this.f27384k && this.f27382i && this.f27352h.bitrate != -1) {
                Parameters parameters = this.f27383j;
                if (!parameters.forceHighestSupportedBitrate && !parameters.forceLowestBitrate && (i & i2) != 0) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public boolean mo20855b(C4959e c4959e) {
            return (this.f27391r || Util.areEqual(this.f27352h.sampleMimeType, c4959e.f27352h.sampleMimeType)) && (this.f27383j.allowVideoMixedDecoderSupportAdaptiveness || (this.f27393t == c4959e.f27393t && this.f27394u == c4959e.f27394u));
        }
    }

    @Deprecated
    public DefaultTrackSelector() {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, new AdaptiveTrackSelection.Factory());
    }

    /* renamed from: A */
    public static /* synthetic */ int m20792A(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    /* renamed from: B */
    public static /* synthetic */ int m20793B(Integer num, Integer num2) {
        return 0;
    }

    /* renamed from: C */
    public static void m20794C(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr) {
        boolean z;
        boolean z2 = false;
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < mappedTrackInfo.getRendererCount(); i3++) {
            int rendererType = mappedTrackInfo.getRendererType(i3);
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i3];
            if ((rendererType == 1 || rendererType == 2) && exoTrackSelection != null && m20795E(iArr[i3], mappedTrackInfo.getTrackGroups(i3), exoTrackSelection)) {
                if (rendererType == 1) {
                    if (i2 != -1) {
                        z = false;
                        break;
                    }
                    i2 = i3;
                } else {
                    if (i != -1) {
                        z = false;
                        break;
                    }
                    i = i3;
                }
            }
        }
        z = true;
        if (i2 != -1 && i != -1) {
            z2 = true;
        }
        if (z && z2) {
            RendererConfiguration rendererConfiguration = new RendererConfiguration(true);
            rendererConfigurationArr[i2] = rendererConfiguration;
            rendererConfigurationArr[i] = rendererConfiguration;
        }
    }

    /* renamed from: E */
    public static boolean m20795E(int[][] iArr, TrackGroupArray trackGroupArray, ExoTrackSelection exoTrackSelection) {
        if (exoTrackSelection == null) {
            return false;
        }
        int indexOf = trackGroupArray.indexOf(exoTrackSelection.getTrackGroup());
        for (int i = 0; i < exoTrackSelection.length(); i++) {
            if (RendererCapabilities.getTunnelingSupport(iArr[indexOf][exoTrackSelection.getIndexInTrackGroup(i)]) != 32) {
                return false;
            }
        }
        return true;
    }

    public static int getFormatLanguageScore(Format format, @Nullable String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(format.language)) {
            return 4;
        }
        String normalizeUndeterminedLanguageToNull = normalizeUndeterminedLanguageToNull(str);
        String normalizeUndeterminedLanguageToNull2 = normalizeUndeterminedLanguageToNull(format.language);
        if (normalizeUndeterminedLanguageToNull2 == null || normalizeUndeterminedLanguageToNull == null) {
            return (z && normalizeUndeterminedLanguageToNull2 == null) ? 1 : 0;
        }
        if (normalizeUndeterminedLanguageToNull2.startsWith(normalizeUndeterminedLanguageToNull) || normalizeUndeterminedLanguageToNull.startsWith(normalizeUndeterminedLanguageToNull2)) {
            return 3;
        }
        return Util.splitAtFirst(normalizeUndeterminedLanguageToNull2, "-")[0].equals(Util.splitAtFirst(normalizeUndeterminedLanguageToNull, "-")[0]) ? 2 : 0;
    }

    public static boolean isSupported(int i, boolean z) {
        int formatSupport = RendererCapabilities.getFormatSupport(i);
        return formatSupport == 4 || (z && formatSupport == 3);
    }

    @Nullable
    public static String normalizeUndeterminedLanguageToNull(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, C4649C.LANGUAGE_UNDETERMINED)) {
            return null;
        }
        return str;
    }

    /* renamed from: r */
    public static int m20806r(TrackGroup trackGroup, int i, int i2, boolean z) {
        int i3;
        int i4 = Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE && i2 != Integer.MAX_VALUE) {
            for (int i5 = 0; i5 < trackGroup.length; i5++) {
                Format format = trackGroup.getFormat(i5);
                int i6 = format.width;
                if (i6 > 0 && (i3 = format.height) > 0) {
                    Point m20807s = m20807s(z, i, i2, i6, i3);
                    int i7 = format.width;
                    int i8 = format.height;
                    int i9 = i7 * i8;
                    if (i7 >= ((int) (m20807s.x * 0.98f)) && i8 >= ((int) (m20807s.y * 0.98f)) && i9 < i4) {
                        i4 = i9;
                    }
                }
            }
        }
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000d, code lost:
    
        if ((r6 > r7) != (r4 > r5)) goto L13;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Point m20807s(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = r3
            goto L9
        L8:
            r1 = r0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = r0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.google.android.exoplayer2.util.Util.ceilDivide(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.DefaultTrackSelector.m20807s(boolean, int, int, int, int):android.graphics.Point");
    }

    /* renamed from: t */
    public static int m20808t(int i, int i2) {
        if (i == 0 || i != i2) {
            return Integer.bitCount(i & i2);
        }
        return Integer.MAX_VALUE;
    }

    /* renamed from: u */
    public static int m20809u(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1662735862:
                if (str.equals(MimeTypes.VIDEO_AV1)) {
                    c = 0;
                    break;
                }
                break;
            case -1662541442:
                if (str.equals(MimeTypes.VIDEO_H265)) {
                    c = 1;
                    break;
                }
                break;
            case 1331836730:
                if (str.equals(MimeTypes.VIDEO_H264)) {
                    c = 2;
                    break;
                }
                break;
            case 1599127257:
                if (str.equals(MimeTypes.VIDEO_VP9)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 4;
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                return 0;
        }
    }

    /* renamed from: x */
    public static /* synthetic */ List m20810x(Parameters parameters, boolean z, int i, TrackGroup trackGroup, int[] iArr) {
        return C4956b.m20857e(i, trackGroup, parameters, iArr, z);
    }

    /* renamed from: y */
    public static /* synthetic */ List m20811y(Parameters parameters, String str, int i, TrackGroup trackGroup, int[] iArr) {
        return C4958d.m20863e(i, trackGroup, parameters, iArr, str);
    }

    /* renamed from: z */
    public static /* synthetic */ List m20812z(Parameters parameters, int[] iArr, int i, TrackGroup trackGroup, int[] iArr2) {
        return C4959e.m20871h(i, trackGroup, parameters, iArr2, iArr[i]);
    }

    /* renamed from: D */
    public final void m20813D(SparseArray<Pair<TrackSelectionOverrides.TrackSelectionOverride, Integer>> sparseArray, @Nullable TrackSelectionOverrides.TrackSelectionOverride trackSelectionOverride, int i) {
        if (trackSelectionOverride == null) {
            return;
        }
        int trackType = trackSelectionOverride.getTrackType();
        Pair<TrackSelectionOverrides.TrackSelectionOverride, Integer> pair = sparseArray.get(trackType);
        if (pair == null || ((TrackSelectionOverrides.TrackSelectionOverride) pair.first).trackIndices.isEmpty()) {
            sparseArray.put(trackType, Pair.create(trackSelectionOverride, Integer.valueOf(i)));
        }
    }

    @Nullable
    /* renamed from: F */
    public final <T extends TrackInfo<T>> Pair<ExoTrackSelection.Definition, Integer> m20814F(int i, MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, TrackInfo.Factory<T> factory, Comparator<List<T>> comparator) {
        int i2;
        RandomAccess randomAccess;
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo2 = mappedTrackInfo;
        ArrayList arrayList = new ArrayList();
        int rendererCount = mappedTrackInfo.getRendererCount();
        int i3 = 0;
        while (i3 < rendererCount) {
            if (i == mappedTrackInfo2.getRendererType(i3)) {
                TrackGroupArray trackGroups = mappedTrackInfo2.getTrackGroups(i3);
                for (int i4 = 0; i4 < trackGroups.length; i4++) {
                    TrackGroup trackGroup = trackGroups.get(i4);
                    List<T> create = factory.create(i3, trackGroup, iArr[i3][i4]);
                    boolean[] zArr = new boolean[trackGroup.length];
                    int i5 = 0;
                    while (i5 < trackGroup.length) {
                        T t = create.get(i5);
                        int mo20854a = t.mo20854a();
                        if (zArr[i5] || mo20854a == 0) {
                            i2 = rendererCount;
                        } else {
                            if (mo20854a == 1) {
                                randomAccess = ImmutableList.m26162of(t);
                                i2 = rendererCount;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(t);
                                int i6 = i5 + 1;
                                while (i6 < trackGroup.length) {
                                    T t2 = create.get(i6);
                                    int i7 = rendererCount;
                                    if (t2.mo20854a() == 2 && t.mo20855b(t2)) {
                                        arrayList2.add(t2);
                                        zArr[i6] = true;
                                    }
                                    i6++;
                                    rendererCount = i7;
                                }
                                i2 = rendererCount;
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i5++;
                        rendererCount = i2;
                    }
                }
            }
            i3++;
            mappedTrackInfo2 = mappedTrackInfo;
            rendererCount = rendererCount;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i8 = 0; i8 < list.size(); i8++) {
            iArr2[i8] = ((TrackInfo) list.get(i8)).f27351g;
        }
        TrackInfo trackInfo = (TrackInfo) list.get(0);
        return Pair.create(new ExoTrackSelection.Definition(trackInfo.f27350f, iArr2), Integer.valueOf(trackInfo.f27349e));
    }

    /* renamed from: G */
    public final void m20815G(Parameters parameters) {
        Assertions.checkNotNull(parameters);
        if (this.f27311e.getAndSet(parameters).equals(parameters)) {
            return;
        }
        invalidate();
    }

    public ParametersBuilder buildUponParameters() {
        return getParameters().buildUpon();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public boolean isSetParametersSupported() {
        return true;
    }

    /* renamed from: o */
    public final void m20816o(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, ExoTrackSelection.Definition[] definitionArr, int i, TrackSelectionOverrides.TrackSelectionOverride trackSelectionOverride, int i2) {
        for (int i3 = 0; i3 < definitionArr.length; i3++) {
            if (i2 == i3) {
                definitionArr[i3] = new ExoTrackSelection.Definition(trackSelectionOverride.trackGroup, Ints.toArray(trackSelectionOverride.trackIndices));
            } else if (mappedTrackInfo.getRendererType(i3) == i) {
                definitionArr[i3] = null;
            }
        }
    }

    /* renamed from: p */
    public final SparseArray<Pair<TrackSelectionOverrides.TrackSelectionOverride, Integer>> m20817p(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters) {
        SparseArray<Pair<TrackSelectionOverrides.TrackSelectionOverride, Integer>> sparseArray = new SparseArray<>();
        int rendererCount = mappedTrackInfo.getRendererCount();
        for (int i = 0; i < rendererCount; i++) {
            TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i);
            for (int i2 = 0; i2 < trackGroups.length; i2++) {
                m20813D(sparseArray, parameters.trackSelectionOverrides.getOverride(trackGroups.get(i2)), i);
            }
        }
        TrackGroupArray unmappedTrackGroups = mappedTrackInfo.getUnmappedTrackGroups();
        for (int i3 = 0; i3 < unmappedTrackGroups.length; i3++) {
            m20813D(sparseArray, parameters.trackSelectionOverrides.getOverride(unmappedTrackGroups.get(i3)), -1);
        }
        return sparseArray;
    }

    /* renamed from: q */
    public final ExoTrackSelection.Definition m20818q(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, int i) {
        TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i);
        SelectionOverride selectionOverride = parameters.getSelectionOverride(i, trackGroups);
        if (selectionOverride == null) {
            return null;
        }
        return new ExoTrackSelection.Definition(trackGroups.get(selectionOverride.groupIndex), selectionOverride.tracks, selectionOverride.type);
    }

    public ExoTrackSelection.Definition[] selectAllTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, Parameters parameters) throws ExoPlaybackException {
        String str;
        int rendererCount = mappedTrackInfo.getRendererCount();
        ExoTrackSelection.Definition[] definitionArr = new ExoTrackSelection.Definition[rendererCount];
        Pair<ExoTrackSelection.Definition, Integer> selectVideoTrack = selectVideoTrack(mappedTrackInfo, iArr, iArr2, parameters);
        if (selectVideoTrack != null) {
            definitionArr[((Integer) selectVideoTrack.second).intValue()] = (ExoTrackSelection.Definition) selectVideoTrack.first;
        }
        Pair<ExoTrackSelection.Definition, Integer> selectAudioTrack = selectAudioTrack(mappedTrackInfo, iArr, iArr2, parameters);
        if (selectAudioTrack != null) {
            definitionArr[((Integer) selectAudioTrack.second).intValue()] = (ExoTrackSelection.Definition) selectAudioTrack.first;
        }
        if (selectAudioTrack == null) {
            str = null;
        } else {
            Object obj = selectAudioTrack.first;
            str = ((ExoTrackSelection.Definition) obj).group.getFormat(((ExoTrackSelection.Definition) obj).tracks[0]).language;
        }
        Pair<ExoTrackSelection.Definition, Integer> selectTextTrack = selectTextTrack(mappedTrackInfo, iArr, parameters, str);
        if (selectTextTrack != null) {
            definitionArr[((Integer) selectTextTrack.second).intValue()] = (ExoTrackSelection.Definition) selectTextTrack.first;
        }
        for (int i = 0; i < rendererCount; i++) {
            int rendererType = mappedTrackInfo.getRendererType(i);
            if (rendererType != 2 && rendererType != 1 && rendererType != 3) {
                definitionArr[i] = selectOtherTrack(rendererType, mappedTrackInfo.getTrackGroups(i), iArr[i], parameters);
            }
        }
        return definitionArr;
    }

    @Nullable
    @SuppressLint({"WrongConstant"})
    public Pair<ExoTrackSelection.Definition, Integer> selectAudioTrack(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, final Parameters parameters) throws ExoPlaybackException {
        final boolean z = false;
        int i = 0;
        while (true) {
            if (i < mappedTrackInfo.getRendererCount()) {
                if (2 == mappedTrackInfo.getRendererType(i) && mappedTrackInfo.getTrackGroups(i).length > 0) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return m20814F(1, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: com.sunia.HTREnginev2.z0f
            @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo.Factory
            public final List create(int i2, TrackGroup trackGroup, int[] iArr3) {
                List m20810x;
                m20810x = DefaultTrackSelector.m20810x(DefaultTrackSelector.Parameters.this, z, i2, trackGroup, iArr3);
                return m20810x;
            }
        }, new Comparator() { // from class: com.sunia.HTREnginev2.a1f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DefaultTrackSelector.C4956b.m20856c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    public ExoTrackSelection.Definition selectOtherTrack(int i, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackGroup trackGroup = null;
        C4957c c4957c = null;
        int i2 = 0;
        for (int i3 = 0; i3 < trackGroupArray.length; i3++) {
            TrackGroup trackGroup2 = trackGroupArray.get(i3);
            int[] iArr2 = iArr[i3];
            for (int i4 = 0; i4 < trackGroup2.length; i4++) {
                if (isSupported(iArr2[i4], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    C4957c c4957c2 = new C4957c(trackGroup2.getFormat(i4), iArr2[i4]);
                    if (c4957c == null || c4957c2.compareTo(c4957c) > 0) {
                        trackGroup = trackGroup2;
                        i2 = i4;
                        c4957c = c4957c2;
                    }
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new ExoTrackSelection.Definition(trackGroup, i2);
    }

    @Nullable
    @SuppressLint({"WrongConstant"})
    public Pair<ExoTrackSelection.Definition, Integer> selectTextTrack(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, final Parameters parameters, @Nullable final String str) throws ExoPlaybackException {
        return m20814F(3, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: com.sunia.HTREnginev2.t0f
            @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo.Factory
            public final List create(int i, TrackGroup trackGroup, int[] iArr2) {
                List m20811y;
                m20811y = DefaultTrackSelector.m20811y(DefaultTrackSelector.Parameters.this, str, i, trackGroup, iArr2);
                return m20811y;
            }
        }, new Comparator() { // from class: com.sunia.HTREnginev2.u0f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DefaultTrackSelector.C4958d.m20862c((List) obj, (List) obj2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.trackselection.MappingTrackSelector
    public final Pair<RendererConfiguration[], ExoTrackSelection[]> selectTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException {
        Parameters parameters = this.f27311e.get();
        int rendererCount = mappedTrackInfo.getRendererCount();
        ExoTrackSelection.Definition[] selectAllTracks = selectAllTracks(mappedTrackInfo, iArr, iArr2, parameters);
        SparseArray<Pair<TrackSelectionOverrides.TrackSelectionOverride, Integer>> m20817p = m20817p(mappedTrackInfo, parameters);
        for (int i = 0; i < m20817p.size(); i++) {
            Pair<TrackSelectionOverrides.TrackSelectionOverride, Integer> valueAt = m20817p.valueAt(i);
            m20816o(mappedTrackInfo, selectAllTracks, m20817p.keyAt(i), (TrackSelectionOverrides.TrackSelectionOverride) valueAt.first, ((Integer) valueAt.second).intValue());
        }
        for (int i2 = 0; i2 < rendererCount; i2++) {
            if (m20819v(mappedTrackInfo, parameters, i2)) {
                selectAllTracks[i2] = m20818q(mappedTrackInfo, parameters, i2);
            }
        }
        for (int i3 = 0; i3 < rendererCount; i3++) {
            if (m20820w(mappedTrackInfo, parameters, i3)) {
                selectAllTracks[i3] = null;
            }
        }
        ExoTrackSelection[] createTrackSelections = this.f27310d.createTrackSelections(selectAllTracks, getBandwidthMeter(), mediaPeriodId, timeline);
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[rendererCount];
        for (int i4 = 0; i4 < rendererCount; i4++) {
            boolean z = true;
            if ((parameters.getRendererDisabled(i4) || parameters.disabledTrackTypes.contains(Integer.valueOf(mappedTrackInfo.getRendererType(i4)))) || (mappedTrackInfo.getRendererType(i4) != -2 && createTrackSelections[i4] == null)) {
                z = false;
            }
            rendererConfigurationArr[i4] = z ? RendererConfiguration.DEFAULT : null;
        }
        if (parameters.tunnelingEnabled) {
            m20794C(mappedTrackInfo, iArr, rendererConfigurationArr, createTrackSelections);
        }
        return Pair.create(rendererConfigurationArr, createTrackSelections);
    }

    @Nullable
    @SuppressLint({"WrongConstant"})
    public Pair<ExoTrackSelection.Definition, Integer> selectVideoTrack(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, final int[] iArr2, final Parameters parameters) throws ExoPlaybackException {
        return m20814F(2, mappedTrackInfo, iArr, new TrackInfo.Factory() { // from class: com.sunia.HTREnginev2.x0f
            @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo.Factory
            public final List create(int i, TrackGroup trackGroup, int[] iArr3) {
                List m20812z;
                m20812z = DefaultTrackSelector.m20812z(DefaultTrackSelector.Parameters.this, iArr2, i, trackGroup, iArr3);
                return m20812z;
            }
        }, new Comparator() { // from class: com.sunia.HTREnginev2.y0f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DefaultTrackSelector.C4959e.m20870g((List) obj, (List) obj2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public void setParameters(TrackSelectionParameters trackSelectionParameters) {
        if (trackSelectionParameters instanceof Parameters) {
            m20815G((Parameters) trackSelectionParameters);
        }
        m20815G(new ParametersBuilder(this.f27311e.get()).set(trackSelectionParameters).build());
    }

    /* renamed from: v */
    public final boolean m20819v(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, int i) {
        return parameters.hasSelectionOverride(i, mappedTrackInfo.getTrackGroups(i));
    }

    /* renamed from: w */
    public final boolean m20820w(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, int i) {
        return parameters.getRendererDisabled(i) || parameters.disabledTrackTypes.contains(Integer.valueOf(mappedTrackInfo.getRendererType(i)));
    }

    @Deprecated
    public DefaultTrackSelector(ExoTrackSelection.Factory factory) {
        this(Parameters.DEFAULT_WITHOUT_CONTEXT, factory);
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public Parameters getParameters() {
        return this.f27311e.get();
    }

    public DefaultTrackSelector(Context context) {
        this(context, new AdaptiveTrackSelection.Factory());
    }

    public DefaultTrackSelector(Context context, ExoTrackSelection.Factory factory) {
        this(Parameters.getDefaults(context), factory);
    }

    public DefaultTrackSelector(Parameters parameters, ExoTrackSelection.Factory factory) {
        this.f27310d = factory;
        this.f27311e = new AtomicReference<>(parameters);
    }

    public void setParameters(ParametersBuilder parametersBuilder) {
        m20815G(parametersBuilder.build());
    }
}
