package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.BundleUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.InlineMe;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public abstract class Timeline implements Bundleable {

    /* renamed from: e */
    public static final int f22718e = 0;

    /* renamed from: f */
    public static final int f22719f = 1;

    /* renamed from: g */
    public static final int f22720g = 2;
    public static final Timeline EMPTY = new C4670a();
    public static final Bundleable.Creator<Timeline> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.min
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            Timeline m18027b;
            m18027b = Timeline.m18027b(bundle);
            return m18027b;
        }
    };

    /* loaded from: classes5.dex */
    public static final class Period implements Bundleable {
        public static final Bundleable.Creator<Period> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.nin
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                Timeline.Period m18033c;
                m18033c = Timeline.Period.m18033c(bundle);
                return m18033c;
            }
        };

        /* renamed from: f */
        public static final int f22721f = 0;

        /* renamed from: g */
        public static final int f22722g = 1;

        /* renamed from: h */
        public static final int f22723h = 2;

        /* renamed from: i */
        public static final int f22724i = 3;

        /* renamed from: j */
        public static final int f22725j = 4;
        public long durationUs;

        /* renamed from: e */
        public AdPlaybackState f22726e = AdPlaybackState.NONE;

        /* renamed from: id */
        @Nullable
        public Object f22727id;
        public boolean isPlaceholder;
        public long positionInWindowUs;

        @Nullable
        public Object uid;
        public int windowIndex;

        /* renamed from: c */
        public static Period m18033c(Bundle bundle) {
            int i = bundle.getInt(m18034d(0), 0);
            long j = bundle.getLong(m18034d(1), C4649C.TIME_UNSET);
            long j2 = bundle.getLong(m18034d(2), 0L);
            boolean z = bundle.getBoolean(m18034d(3));
            Bundle bundle2 = bundle.getBundle(m18034d(4));
            AdPlaybackState fromBundle = bundle2 != null ? AdPlaybackState.CREATOR.fromBundle(bundle2) : AdPlaybackState.NONE;
            Period period = new Period();
            period.set(null, null, i, j, j2, fromBundle, z);
            return period;
        }

        /* renamed from: d */
        public static String m18034d(int i) {
            return Integer.toString(i, 36);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Period.class.equals(obj.getClass())) {
                return false;
            }
            Period period = (Period) obj;
            return Util.areEqual(this.f22727id, period.f22727id) && Util.areEqual(this.uid, period.uid) && this.windowIndex == period.windowIndex && this.durationUs == period.durationUs && this.positionInWindowUs == period.positionInWindowUs && this.isPlaceholder == period.isPlaceholder && Util.areEqual(this.f22726e, period.f22726e);
        }

        public int getAdCountInAdGroup(int i) {
            return this.f22726e.getAdGroup(i).count;
        }

        public long getAdDurationUs(int i, int i2) {
            AdPlaybackState.AdGroup adGroup = this.f22726e.getAdGroup(i);
            return adGroup.count != -1 ? adGroup.durationsUs[i2] : C4649C.TIME_UNSET;
        }

        public int getAdGroupCount() {
            return this.f22726e.adGroupCount;
        }

        public int getAdGroupIndexAfterPositionUs(long j) {
            return this.f22726e.getAdGroupIndexAfterPositionUs(j, this.durationUs);
        }

        public int getAdGroupIndexForPositionUs(long j) {
            return this.f22726e.getAdGroupIndexForPositionUs(j, this.durationUs);
        }

        public long getAdGroupTimeUs(int i) {
            return this.f22726e.getAdGroup(i).timeUs;
        }

        public long getAdResumePositionUs() {
            return this.f22726e.adResumePositionUs;
        }

        public int getAdState(int i, int i2) {
            AdPlaybackState.AdGroup adGroup = this.f22726e.getAdGroup(i);
            if (adGroup.count != -1) {
                return adGroup.states[i2];
            }
            return 0;
        }

        @Nullable
        public Object getAdsId() {
            return this.f22726e.adsId;
        }

        public long getContentResumeOffsetUs(int i) {
            return this.f22726e.getAdGroup(i).contentResumeOffsetUs;
        }

        public long getDurationMs() {
            return Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public int getFirstAdIndexToPlay(int i) {
            return this.f22726e.getAdGroup(i).getFirstAdIndexToPlay();
        }

        public int getNextAdIndexToPlay(int i, int i2) {
            return this.f22726e.getAdGroup(i).getNextAdIndexToPlay(i2);
        }

        public long getPositionInWindowMs() {
            return Util.usToMs(this.positionInWindowUs);
        }

        public long getPositionInWindowUs() {
            return this.positionInWindowUs;
        }

        public int getRemovedAdGroupCount() {
            return this.f22726e.removedAdGroupCount;
        }

        public boolean hasPlayedAdGroup(int i) {
            return !this.f22726e.getAdGroup(i).hasUnplayedAds();
        }

        public int hashCode() {
            Object obj = this.f22727id;
            int hashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.uid;
            int hashCode2 = (((hashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.windowIndex) * 31;
            long j = this.durationUs;
            int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.positionInWindowUs;
            return ((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31) + this.f22726e.hashCode();
        }

        public boolean isServerSideInsertedAdGroup(int i) {
            return this.f22726e.getAdGroup(i).isServerSideInserted;
        }

        public Period set(@Nullable Object obj, @Nullable Object obj2, int i, long j, long j2) {
            return set(obj, obj2, i, j, j2, AdPlaybackState.NONE, false);
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(m18034d(0), this.windowIndex);
            bundle.putLong(m18034d(1), this.durationUs);
            bundle.putLong(m18034d(2), this.positionInWindowUs);
            bundle.putBoolean(m18034d(3), this.isPlaceholder);
            bundle.putBundle(m18034d(4), this.f22726e.toBundle());
            return bundle;
        }

        public Period set(@Nullable Object obj, @Nullable Object obj2, int i, long j, long j2, AdPlaybackState adPlaybackState, boolean z) {
            this.f22727id = obj;
            this.uid = obj2;
            this.windowIndex = i;
            this.durationUs = j;
            this.positionInWindowUs = j2;
            this.f22726e = adPlaybackState;
            this.isPlaceholder = z;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public static final class RemotableTimeline extends Timeline {

        /* renamed from: h */
        public final ImmutableList<Window> f22728h;

        /* renamed from: i */
        public final ImmutableList<Period> f22729i;

        /* renamed from: j */
        public final int[] f22730j;

        /* renamed from: k */
        public final int[] f22731k;

        public RemotableTimeline(ImmutableList<Window> immutableList, ImmutableList<Period> immutableList2, int[] iArr) {
            Assertions.checkArgument(immutableList.size() == iArr.length);
            this.f22728h = immutableList;
            this.f22729i = immutableList2;
            this.f22730j = iArr;
            this.f22731k = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f22731k[iArr[i]] = i;
            }
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getFirstWindowIndex(boolean z) {
            if (isEmpty()) {
                return -1;
            }
            if (z) {
                return this.f22730j[0];
            }
            return 0;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getLastWindowIndex(boolean z) {
            if (isEmpty()) {
                return -1;
            }
            return z ? this.f22730j[getWindowCount() - 1] : getWindowCount() - 1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getNextWindowIndex(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != getLastWindowIndex(z)) {
                return z ? this.f22730j[this.f22731k[i] + 1] : i + 1;
            }
            if (i2 == 2) {
                return getFirstWindowIndex(z);
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Period getPeriod(int i, Period period, boolean z) {
            Period period2 = this.f22729i.get(i);
            period.set(period2.f22727id, period2.uid, period2.windowIndex, period2.durationUs, period2.positionInWindowUs, period2.f22726e, period2.isPlaceholder);
            return period;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.f22729i.size();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPreviousWindowIndex(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != getFirstWindowIndex(z)) {
                return z ? this.f22730j[this.f22731k[i] - 1] : i - 1;
            }
            if (i2 == 2) {
                return getLastWindowIndex(z);
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Window getWindow(int i, Window window, long j) {
            Window window2 = this.f22728h.get(i);
            window.set(window2.uid, window2.mediaItem, window2.manifest, window2.presentationStartTimeMs, window2.windowStartTimeMs, window2.elapsedRealtimeEpochOffsetMs, window2.isSeekable, window2.isDynamic, window2.liveConfiguration, window2.defaultPositionUs, window2.durationUs, window2.firstPeriodIndex, window2.lastPeriodIndex, window2.positionInFirstPeriodUs);
            window.isPlaceholder = window2.isPlaceholder;
            return window;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.f22728h.size();
        }
    }

    /* loaded from: classes5.dex */
    public static final class Window implements Bundleable {

        /* renamed from: g */
        public static final int f22734g = 1;

        /* renamed from: h */
        public static final int f22735h = 2;

        /* renamed from: i */
        public static final int f22736i = 3;

        /* renamed from: j */
        public static final int f22737j = 4;

        /* renamed from: k */
        public static final int f22738k = 5;

        /* renamed from: l */
        public static final int f22739l = 6;

        /* renamed from: m */
        public static final int f22740m = 7;

        /* renamed from: n */
        public static final int f22741n = 8;

        /* renamed from: o */
        public static final int f22742o = 9;

        /* renamed from: p */
        public static final int f22743p = 10;

        /* renamed from: q */
        public static final int f22744q = 11;

        /* renamed from: r */
        public static final int f22745r = 12;

        /* renamed from: s */
        public static final int f22746s = 13;
        public long defaultPositionUs;
        public long durationUs;
        public long elapsedRealtimeEpochOffsetMs;
        public int firstPeriodIndex;
        public boolean isDynamic;

        @Deprecated
        public boolean isLive;
        public boolean isPlaceholder;
        public boolean isSeekable;
        public int lastPeriodIndex;

        @Nullable
        public MediaItem.LiveConfiguration liveConfiguration;

        @Nullable
        public Object manifest;
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;

        @Nullable
        @Deprecated
        public Object tag;
        public long windowStartTimeMs;
        public static final Object SINGLE_WINDOW_UID = new Object();

        /* renamed from: e */
        public static final Object f22732e = new Object();

        /* renamed from: f */
        public static final MediaItem f22733f = new MediaItem.Builder().setMediaId("com.google.android.exoplayer2.Timeline").setUri(Uri.EMPTY).build();
        public static final Bundleable.Creator<Window> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.oin
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                Timeline.Window m18037c;
                m18037c = Timeline.Window.m18037c(bundle);
                return m18037c;
            }
        };
        public Object uid = SINGLE_WINDOW_UID;
        public MediaItem mediaItem = f22733f;

        /* renamed from: c */
        public static Window m18037c(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(m18038d(1));
            MediaItem fromBundle = bundle2 != null ? MediaItem.CREATOR.fromBundle(bundle2) : null;
            long j = bundle.getLong(m18038d(2), C4649C.TIME_UNSET);
            long j2 = bundle.getLong(m18038d(3), C4649C.TIME_UNSET);
            long j3 = bundle.getLong(m18038d(4), C4649C.TIME_UNSET);
            boolean z = bundle.getBoolean(m18038d(5), false);
            boolean z2 = bundle.getBoolean(m18038d(6), false);
            Bundle bundle3 = bundle.getBundle(m18038d(7));
            MediaItem.LiveConfiguration fromBundle2 = bundle3 != null ? MediaItem.LiveConfiguration.CREATOR.fromBundle(bundle3) : null;
            boolean z3 = bundle.getBoolean(m18038d(8), false);
            long j4 = bundle.getLong(m18038d(9), 0L);
            long j5 = bundle.getLong(m18038d(10), C4649C.TIME_UNSET);
            int i = bundle.getInt(m18038d(11), 0);
            int i2 = bundle.getInt(m18038d(12), 0);
            long j6 = bundle.getLong(m18038d(13), 0L);
            Window window = new Window();
            window.set(f22732e, fromBundle, null, j, j2, j3, z, z2, fromBundle2, j4, j5, i, i2, j6);
            window.isPlaceholder = z3;
            return window;
        }

        /* renamed from: d */
        public static String m18038d(int i) {
            return Integer.toString(i, 36);
        }

        /* renamed from: e */
        public final Bundle m18039e(boolean z) {
            Bundle bundle = new Bundle();
            bundle.putBundle(m18038d(1), (z ? MediaItem.EMPTY : this.mediaItem).toBundle());
            bundle.putLong(m18038d(2), this.presentationStartTimeMs);
            bundle.putLong(m18038d(3), this.windowStartTimeMs);
            bundle.putLong(m18038d(4), this.elapsedRealtimeEpochOffsetMs);
            bundle.putBoolean(m18038d(5), this.isSeekable);
            bundle.putBoolean(m18038d(6), this.isDynamic);
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            if (liveConfiguration != null) {
                bundle.putBundle(m18038d(7), liveConfiguration.toBundle());
            }
            bundle.putBoolean(m18038d(8), this.isPlaceholder);
            bundle.putLong(m18038d(9), this.defaultPositionUs);
            bundle.putLong(m18038d(10), this.durationUs);
            bundle.putInt(m18038d(11), this.firstPeriodIndex);
            bundle.putInt(m18038d(12), this.lastPeriodIndex);
            bundle.putLong(m18038d(13), this.positionInFirstPeriodUs);
            return bundle;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Window.class.equals(obj.getClass())) {
                return false;
            }
            Window window = (Window) obj;
            return Util.areEqual(this.uid, window.uid) && Util.areEqual(this.mediaItem, window.mediaItem) && Util.areEqual(this.manifest, window.manifest) && Util.areEqual(this.liveConfiguration, window.liveConfiguration) && this.presentationStartTimeMs == window.presentationStartTimeMs && this.windowStartTimeMs == window.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == window.elapsedRealtimeEpochOffsetMs && this.isSeekable == window.isSeekable && this.isDynamic == window.isDynamic && this.isPlaceholder == window.isPlaceholder && this.defaultPositionUs == window.defaultPositionUs && this.durationUs == window.durationUs && this.firstPeriodIndex == window.firstPeriodIndex && this.lastPeriodIndex == window.lastPeriodIndex && this.positionInFirstPeriodUs == window.positionInFirstPeriodUs;
        }

        public long getCurrentUnixTimeMs() {
            return Util.getNowUnixTimeMs(this.elapsedRealtimeEpochOffsetMs);
        }

        public long getDefaultPositionMs() {
            return Util.usToMs(this.defaultPositionUs);
        }

        public long getDefaultPositionUs() {
            return this.defaultPositionUs;
        }

        public long getDurationMs() {
            return Util.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInFirstPeriodMs() {
            return Util.usToMs(this.positionInFirstPeriodUs);
        }

        public long getPositionInFirstPeriodUs() {
            return this.positionInFirstPeriodUs;
        }

        public int hashCode() {
            int hashCode = (((217 + this.uid.hashCode()) * 31) + this.mediaItem.hashCode()) * 31;
            Object obj = this.manifest;
            int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int hashCode3 = (hashCode2 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j = this.presentationStartTimeMs;
            int i = (hashCode3 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.windowStartTimeMs;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.elapsedRealtimeEpochOffsetMs;
            int i3 = (((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31) + (this.isPlaceholder ? 1 : 0)) * 31;
            long j4 = this.defaultPositionUs;
            int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            long j5 = this.durationUs;
            int i5 = (((((i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.firstPeriodIndex) * 31) + this.lastPeriodIndex) * 31;
            long j6 = this.positionInFirstPeriodUs;
            return i5 + ((int) (j6 ^ (j6 >>> 32)));
        }

        public boolean isLive() {
            Assertions.checkState(this.isLive == (this.liveConfiguration != null));
            return this.liveConfiguration != null;
        }

        public Window set(Object obj, @Nullable MediaItem mediaItem, @Nullable Object obj2, long j, long j2, long j3, boolean z, boolean z2, @Nullable MediaItem.LiveConfiguration liveConfiguration, long j4, long j5, int i, int i2, long j6) {
            MediaItem.LocalConfiguration localConfiguration;
            this.uid = obj;
            this.mediaItem = mediaItem != null ? mediaItem : f22733f;
            this.tag = (mediaItem == null || (localConfiguration = mediaItem.localConfiguration) == null) ? null : localConfiguration.tag;
            this.manifest = obj2;
            this.presentationStartTimeMs = j;
            this.windowStartTimeMs = j2;
            this.elapsedRealtimeEpochOffsetMs = j3;
            this.isSeekable = z;
            this.isDynamic = z2;
            this.isLive = liveConfiguration != null;
            this.liveConfiguration = liveConfiguration;
            this.defaultPositionUs = j4;
            this.durationUs = j5;
            this.firstPeriodIndex = i;
            this.lastPeriodIndex = i2;
            this.positionInFirstPeriodUs = j6;
            this.isPlaceholder = false;
            return this;
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            return m18039e(false);
        }
    }

    /* renamed from: com.google.android.exoplayer2.Timeline$a */
    /* loaded from: classes5.dex */
    public class C4670a extends Timeline {
        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Period getPeriod(int i, Period period, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Window getWindow(int i, Window window, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 0;
        }
    }

    /* renamed from: b */
    public static Timeline m18027b(Bundle bundle) {
        ImmutableList m18028c = m18028c(Window.CREATOR, BundleUtil.getBinder(bundle, m18030e(0)));
        ImmutableList m18028c2 = m18028c(Period.CREATOR, BundleUtil.getBinder(bundle, m18030e(1)));
        int[] intArray = bundle.getIntArray(m18030e(2));
        if (intArray == null) {
            intArray = m18029d(m18028c.size());
        }
        return new RemotableTimeline(m18028c, m18028c2, intArray);
    }

    /* renamed from: c */
    public static <T extends Bundleable> ImmutableList<T> m18028c(Bundleable.Creator<T> creator, @Nullable IBinder iBinder) {
        if (iBinder == null) {
            return ImmutableList.m26161of();
        }
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList<Bundle> list = BundleListRetriever.getList(iBinder);
        for (int i = 0; i < list.size(); i++) {
            builder.add((ImmutableList.Builder) creator.fromBundle(list.get(i)));
        }
        return builder.build();
    }

    /* renamed from: d */
    public static int[] m18029d(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    /* renamed from: e */
    public static String m18030e(int i) {
        return Integer.toString(i, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        if (timeline.getWindowCount() != getWindowCount() || timeline.getPeriodCount() != getPeriodCount()) {
            return false;
        }
        Window window = new Window();
        Period period = new Period();
        Window window2 = new Window();
        Period period2 = new Period();
        for (int i = 0; i < getWindowCount(); i++) {
            if (!getWindow(i, window).equals(timeline.getWindow(i, window2))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < getPeriodCount(); i2++) {
            if (!getPeriod(i2, period, true).equals(timeline.getPeriod(i2, period2, true))) {
                return false;
            }
        }
        return true;
    }

    public int getFirstWindowIndex(boolean z) {
        return isEmpty() ? -1 : 0;
    }

    public abstract int getIndexOfPeriod(Object obj);

    public int getLastWindowIndex(boolean z) {
        if (isEmpty()) {
            return -1;
        }
        return getWindowCount() - 1;
    }

    public final int getNextPeriodIndex(int i, Period period, Window window, int i2, boolean z) {
        int i3 = getPeriod(i, period).windowIndex;
        if (getWindow(i3, window).lastPeriodIndex != i) {
            return i + 1;
        }
        int nextWindowIndex = getNextWindowIndex(i3, i2, z);
        if (nextWindowIndex == -1) {
            return -1;
        }
        return getWindow(nextWindowIndex, window).firstPeriodIndex;
    }

    public int getNextWindowIndex(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == getLastWindowIndex(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == getLastWindowIndex(z) ? getFirstWindowIndex(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    public final Period getPeriod(int i, Period period) {
        return getPeriod(i, period, false);
    }

    public abstract Period getPeriod(int i, Period period, boolean z);

    public Period getPeriodByUid(Object obj, Period period) {
        return getPeriod(getIndexOfPeriod(obj), period, true);
    }

    public abstract int getPeriodCount();

    @InlineMe(replacement = "this.getPeriodPositionUs(window, period, windowIndex, windowPositionUs)")
    @Deprecated
    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i, long j) {
        return getPeriodPositionUs(window, period, i, j);
    }

    public final Pair<Object, Long> getPeriodPositionUs(Window window, Period period, int i, long j) {
        return (Pair) Assertions.checkNotNull(getPeriodPositionUs(window, period, i, j, 0L));
    }

    public int getPreviousWindowIndex(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == getFirstWindowIndex(z)) {
                return -1;
            }
            return i - 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == getFirstWindowIndex(z) ? getLastWindowIndex(z) : i - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object getUidOfPeriod(int i);

    public final Window getWindow(int i, Window window) {
        return getWindow(i, window, 0L);
    }

    public abstract Window getWindow(int i, Window window, long j);

    public abstract int getWindowCount();

    public int hashCode() {
        Window window = new Window();
        Period period = new Period();
        int windowCount = 217 + getWindowCount();
        for (int i = 0; i < getWindowCount(); i++) {
            windowCount = (windowCount * 31) + getWindow(i, window).hashCode();
        }
        int periodCount = (windowCount * 31) + getPeriodCount();
        for (int i2 = 0; i2 < getPeriodCount(); i2++) {
            periodCount = (periodCount * 31) + getPeriod(i2, period, true).hashCode();
        }
        return periodCount;
    }

    public final boolean isEmpty() {
        return getWindowCount() == 0;
    }

    public final boolean isLastPeriod(int i, Period period, Window window, int i2, boolean z) {
        return getNextPeriodIndex(i, period, window, i2, z) == -1;
    }

    public final Bundle toBundle(boolean z) {
        ArrayList arrayList = new ArrayList();
        int windowCount = getWindowCount();
        Window window = new Window();
        for (int i = 0; i < windowCount; i++) {
            arrayList.add(getWindow(i, window, 0L).m18039e(z));
        }
        ArrayList arrayList2 = new ArrayList();
        int periodCount = getPeriodCount();
        Period period = new Period();
        for (int i2 = 0; i2 < periodCount; i2++) {
            arrayList2.add(getPeriod(i2, period, false).toBundle());
        }
        int[] iArr = new int[windowCount];
        if (windowCount > 0) {
            iArr[0] = getFirstWindowIndex(true);
        }
        for (int i3 = 1; i3 < windowCount; i3++) {
            iArr[i3] = getNextWindowIndex(iArr[i3 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        BundleUtil.putBinder(bundle, m18030e(0), new BundleListRetriever(arrayList));
        BundleUtil.putBinder(bundle, m18030e(1), new BundleListRetriever(arrayList2));
        bundle.putIntArray(m18030e(2), iArr);
        return bundle;
    }

    @Nullable
    @InlineMe(replacement = "this.getPeriodPositionUs(window, period, windowIndex, windowPositionUs, defaultPositionProjectionUs)")
    @Deprecated
    public final Pair<Object, Long> getPeriodPosition(Window window, Period period, int i, long j, long j2) {
        return getPeriodPositionUs(window, period, i, j, j2);
    }

    @Nullable
    public final Pair<Object, Long> getPeriodPositionUs(Window window, Period period, int i, long j, long j2) {
        Assertions.checkIndex(i, 0, getWindowCount());
        getWindow(i, window, j2);
        if (j == C4649C.TIME_UNSET) {
            j = window.getDefaultPositionUs();
            if (j == C4649C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = window.firstPeriodIndex;
        getPeriod(i2, period);
        while (i2 < window.lastPeriodIndex && period.positionInWindowUs != j) {
            int i3 = i2 + 1;
            if (getPeriod(i3, period).positionInWindowUs > j) {
                break;
            }
            i2 = i3;
        }
        getPeriod(i2, period, true);
        long j3 = j - period.positionInWindowUs;
        long j4 = period.durationUs;
        if (j4 != C4649C.TIME_UNSET) {
            j3 = Math.min(j3, j4 - 1);
        }
        return Pair.create(Assertions.checkNotNull(period.uid), Long.valueOf(Math.max(0L, j3)));
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public final Bundle toBundle() {
        return toBundle(false);
    }
}
