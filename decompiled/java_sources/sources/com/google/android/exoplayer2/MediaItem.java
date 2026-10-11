package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes5.dex */
public final class MediaItem implements Bundleable {
    public static final String DEFAULT_MEDIA_ID = "";

    /* renamed from: e */
    public static final int f22487e = 0;

    /* renamed from: f */
    public static final int f22488f = 1;

    /* renamed from: g */
    public static final int f22489g = 2;

    /* renamed from: h */
    public static final int f22490h = 3;
    public final ClippingConfiguration clippingConfiguration;

    @Deprecated
    public final ClippingProperties clippingProperties;
    public final LiveConfiguration liveConfiguration;

    @Nullable
    public final LocalConfiguration localConfiguration;
    public final String mediaId;
    public final MediaMetadata mediaMetadata;

    @Nullable
    @Deprecated
    public final PlaybackProperties playbackProperties;
    public static final MediaItem EMPTY = new Builder().build();
    public static final Bundleable.Creator<MediaItem> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.pij
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            MediaItem m17864b;
            m17864b = MediaItem.m17864b(bundle);
            return m17864b;
        }
    };

    /* loaded from: classes5.dex */
    public static final class AdsConfiguration {
        public final Uri adTagUri;

        @Nullable
        public final Object adsId;

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public Uri f22491a;

            /* renamed from: b */
            @Nullable
            public Object f22492b;

            public Builder(Uri uri) {
                this.f22491a = uri;
            }

            public AdsConfiguration build() {
                return new AdsConfiguration(this);
            }

            public Builder setAdTagUri(Uri uri) {
                this.f22491a = uri;
                return this;
            }

            public Builder setAdsId(@Nullable Object obj) {
                this.f22492b = obj;
                return this;
            }
        }

        public Builder buildUpon() {
            return new Builder(this.adTagUri).setAdsId(this.adsId);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdsConfiguration)) {
                return false;
            }
            AdsConfiguration adsConfiguration = (AdsConfiguration) obj;
            return this.adTagUri.equals(adsConfiguration.adTagUri) && Util.areEqual(this.adsId, adsConfiguration.adsId);
        }

        public int hashCode() {
            int hashCode = this.adTagUri.hashCode() * 31;
            Object obj = this.adsId;
            return hashCode + (obj != null ? obj.hashCode() : 0);
        }

        public AdsConfiguration(Builder builder) {
            this.adTagUri = builder.f22491a;
            this.adsId = builder.f22492b;
        }
    }

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        @Nullable
        public String f22493a;

        /* renamed from: b */
        @Nullable
        public Uri f22494b;

        /* renamed from: c */
        @Nullable
        public String f22495c;

        /* renamed from: d */
        public ClippingConfiguration.Builder f22496d;

        /* renamed from: e */
        public DrmConfiguration.Builder f22497e;

        /* renamed from: f */
        public List<StreamKey> f22498f;

        /* renamed from: g */
        @Nullable
        public String f22499g;

        /* renamed from: h */
        public ImmutableList<SubtitleConfiguration> f22500h;

        /* renamed from: i */
        @Nullable
        public AdsConfiguration f22501i;

        /* renamed from: j */
        @Nullable
        public Object f22502j;

        /* renamed from: k */
        @Nullable
        public MediaMetadata f22503k;

        /* renamed from: l */
        public LiveConfiguration.Builder f22504l;

        public MediaItem build() {
            PlaybackProperties playbackProperties;
            Assertions.checkState(this.f22497e.f22517b == null || this.f22497e.f22516a != null);
            Uri uri = this.f22494b;
            if (uri != null) {
                playbackProperties = new PlaybackProperties(uri, this.f22495c, this.f22497e.f22516a != null ? this.f22497e.build() : null, this.f22501i, this.f22498f, this.f22499g, this.f22500h, this.f22502j);
            } else {
                playbackProperties = null;
            }
            String str = this.f22493a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            ClippingProperties buildClippingProperties = this.f22496d.buildClippingProperties();
            LiveConfiguration build = this.f22504l.build();
            MediaMetadata mediaMetadata = this.f22503k;
            if (mediaMetadata == null) {
                mediaMetadata = MediaMetadata.EMPTY;
            }
            return new MediaItem(str2, buildClippingProperties, playbackProperties, build, mediaMetadata);
        }

        @Deprecated
        public Builder setAdTagUri(@Nullable String str) {
            return setAdTagUri(str != null ? Uri.parse(str) : null);
        }

        public Builder setAdsConfiguration(@Nullable AdsConfiguration adsConfiguration) {
            this.f22501i = adsConfiguration;
            return this;
        }

        @Deprecated
        public Builder setClipEndPositionMs(long j) {
            this.f22496d.setEndPositionMs(j);
            return this;
        }

        @Deprecated
        public Builder setClipRelativeToDefaultPosition(boolean z) {
            this.f22496d.setRelativeToDefaultPosition(z);
            return this;
        }

        @Deprecated
        public Builder setClipRelativeToLiveWindow(boolean z) {
            this.f22496d.setRelativeToLiveWindow(z);
            return this;
        }

        @Deprecated
        public Builder setClipStartPositionMs(@IntRange(from = 0) long j) {
            this.f22496d.setStartPositionMs(j);
            return this;
        }

        @Deprecated
        public Builder setClipStartsAtKeyFrame(boolean z) {
            this.f22496d.setStartsAtKeyFrame(z);
            return this;
        }

        public Builder setClippingConfiguration(ClippingConfiguration clippingConfiguration) {
            this.f22496d = clippingConfiguration.buildUpon();
            return this;
        }

        public Builder setCustomCacheKey(@Nullable String str) {
            this.f22499g = str;
            return this;
        }

        public Builder setDrmConfiguration(@Nullable DrmConfiguration drmConfiguration) {
            this.f22497e = drmConfiguration != null ? drmConfiguration.buildUpon() : new DrmConfiguration.Builder();
            return this;
        }

        @Deprecated
        public Builder setDrmForceDefaultLicenseUri(boolean z) {
            this.f22497e.setForceDefaultLicenseUri(z);
            return this;
        }

        @Deprecated
        public Builder setDrmKeySetId(@Nullable byte[] bArr) {
            this.f22497e.setKeySetId(bArr);
            return this;
        }

        @Deprecated
        public Builder setDrmLicenseRequestHeaders(@Nullable Map<String, String> map) {
            DrmConfiguration.Builder builder = this.f22497e;
            if (map == null) {
                map = ImmutableMap.m26185of();
            }
            builder.setLicenseRequestHeaders(map);
            return this;
        }

        @Deprecated
        public Builder setDrmLicenseUri(@Nullable Uri uri) {
            this.f22497e.setLicenseUri(uri);
            return this;
        }

        @Deprecated
        public Builder setDrmMultiSession(boolean z) {
            this.f22497e.setMultiSession(z);
            return this;
        }

        @Deprecated
        public Builder setDrmPlayClearContentWithoutKey(boolean z) {
            this.f22497e.setPlayClearContentWithoutKey(z);
            return this;
        }

        @Deprecated
        public Builder setDrmSessionForClearPeriods(boolean z) {
            this.f22497e.forceSessionsForAudioAndVideoTracks(z);
            return this;
        }

        @Deprecated
        public Builder setDrmSessionForClearTypes(@Nullable List<Integer> list) {
            DrmConfiguration.Builder builder = this.f22497e;
            if (list == null) {
                list = ImmutableList.m26161of();
            }
            builder.setForcedSessionTrackTypes(list);
            return this;
        }

        @Deprecated
        public Builder setDrmUuid(@Nullable UUID uuid) {
            this.f22497e.m17886j(uuid);
            return this;
        }

        public Builder setLiveConfiguration(LiveConfiguration liveConfiguration) {
            this.f22504l = liveConfiguration.buildUpon();
            return this;
        }

        @Deprecated
        public Builder setLiveMaxOffsetMs(long j) {
            this.f22504l.setMaxOffsetMs(j);
            return this;
        }

        @Deprecated
        public Builder setLiveMaxPlaybackSpeed(float f) {
            this.f22504l.setMaxPlaybackSpeed(f);
            return this;
        }

        @Deprecated
        public Builder setLiveMinOffsetMs(long j) {
            this.f22504l.setMinOffsetMs(j);
            return this;
        }

        @Deprecated
        public Builder setLiveMinPlaybackSpeed(float f) {
            this.f22504l.setMinPlaybackSpeed(f);
            return this;
        }

        @Deprecated
        public Builder setLiveTargetOffsetMs(long j) {
            this.f22504l.setTargetOffsetMs(j);
            return this;
        }

        public Builder setMediaId(String str) {
            this.f22493a = (String) Assertions.checkNotNull(str);
            return this;
        }

        public Builder setMediaMetadata(MediaMetadata mediaMetadata) {
            this.f22503k = mediaMetadata;
            return this;
        }

        public Builder setMimeType(@Nullable String str) {
            this.f22495c = str;
            return this;
        }

        public Builder setStreamKeys(@Nullable List<StreamKey> list) {
            this.f22498f = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public Builder setSubtitleConfigurations(List<SubtitleConfiguration> list) {
            this.f22500h = ImmutableList.copyOf((Collection) list);
            return this;
        }

        @Deprecated
        public Builder setSubtitles(@Nullable List<Subtitle> list) {
            this.f22500h = list != null ? ImmutableList.copyOf((Collection) list) : ImmutableList.m26161of();
            return this;
        }

        public Builder setTag(@Nullable Object obj) {
            this.f22502j = obj;
            return this;
        }

        public Builder setUri(@Nullable String str) {
            return setUri(str == null ? null : Uri.parse(str));
        }

        public Builder() {
            this.f22496d = new ClippingConfiguration.Builder();
            this.f22497e = new DrmConfiguration.Builder();
            this.f22498f = Collections.emptyList();
            this.f22500h = ImmutableList.m26161of();
            this.f22504l = new LiveConfiguration.Builder();
        }

        @Deprecated
        public Builder setAdTagUri(@Nullable Uri uri) {
            return setAdTagUri(uri, null);
        }

        @Deprecated
        public Builder setDrmLicenseUri(@Nullable String str) {
            this.f22497e.setLicenseUri(str);
            return this;
        }

        public Builder setUri(@Nullable Uri uri) {
            this.f22494b = uri;
            return this;
        }

        @Deprecated
        public Builder setAdTagUri(@Nullable Uri uri, @Nullable Object obj) {
            this.f22501i = uri != null ? new AdsConfiguration.Builder(uri).setAdsId(obj).build() : null;
            return this;
        }

        public Builder(MediaItem mediaItem) {
            this();
            DrmConfiguration.Builder builder;
            this.f22496d = mediaItem.clippingConfiguration.buildUpon();
            this.f22493a = mediaItem.mediaId;
            this.f22503k = mediaItem.mediaMetadata;
            this.f22504l = mediaItem.liveConfiguration.buildUpon();
            LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                this.f22499g = localConfiguration.customCacheKey;
                this.f22495c = localConfiguration.mimeType;
                this.f22494b = localConfiguration.uri;
                this.f22498f = localConfiguration.streamKeys;
                this.f22500h = localConfiguration.subtitleConfigurations;
                this.f22502j = localConfiguration.tag;
                DrmConfiguration drmConfiguration = localConfiguration.drmConfiguration;
                if (drmConfiguration != null) {
                    builder = drmConfiguration.buildUpon();
                } else {
                    builder = new DrmConfiguration.Builder();
                }
                this.f22497e = builder;
                this.f22501i = localConfiguration.adsConfiguration;
            }
        }
    }

    /* loaded from: classes5.dex */
    public static class ClippingConfiguration implements Bundleable {

        /* renamed from: e */
        public static final int f22505e = 0;

        /* renamed from: f */
        public static final int f22506f = 1;

        /* renamed from: g */
        public static final int f22507g = 2;

        /* renamed from: h */
        public static final int f22508h = 3;

        /* renamed from: i */
        public static final int f22509i = 4;
        public final long endPositionMs;
        public final boolean relativeToDefaultPosition;
        public final boolean relativeToLiveWindow;

        @IntRange(from = 0)
        public final long startPositionMs;
        public final boolean startsAtKeyFrame;
        public static final ClippingConfiguration UNSET = new Builder().build();
        public static final Bundleable.Creator<ClippingProperties> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.qij
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                MediaItem.ClippingProperties m17870c;
                m17870c = MediaItem.ClippingConfiguration.m17870c(bundle);
                return m17870c;
            }
        };

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public long f22510a;

            /* renamed from: b */
            public long f22511b;

            /* renamed from: c */
            public boolean f22512c;

            /* renamed from: d */
            public boolean f22513d;

            /* renamed from: e */
            public boolean f22514e;

            public ClippingConfiguration build() {
                return buildClippingProperties();
            }

            @Deprecated
            public ClippingProperties buildClippingProperties() {
                return new ClippingProperties(this);
            }

            public Builder setEndPositionMs(long j) {
                Assertions.checkArgument(j == Long.MIN_VALUE || j >= 0);
                this.f22511b = j;
                return this;
            }

            public Builder setRelativeToDefaultPosition(boolean z) {
                this.f22513d = z;
                return this;
            }

            public Builder setRelativeToLiveWindow(boolean z) {
                this.f22512c = z;
                return this;
            }

            public Builder setStartPositionMs(@IntRange(from = 0) long j) {
                Assertions.checkArgument(j >= 0);
                this.f22510a = j;
                return this;
            }

            public Builder setStartsAtKeyFrame(boolean z) {
                this.f22514e = z;
                return this;
            }

            public Builder() {
                this.f22511b = Long.MIN_VALUE;
            }

            public Builder(ClippingConfiguration clippingConfiguration) {
                this.f22510a = clippingConfiguration.startPositionMs;
                this.f22511b = clippingConfiguration.endPositionMs;
                this.f22512c = clippingConfiguration.relativeToLiveWindow;
                this.f22513d = clippingConfiguration.relativeToDefaultPosition;
                this.f22514e = clippingConfiguration.startsAtKeyFrame;
            }
        }

        /* renamed from: b */
        public static String m17869b(int i) {
            return Integer.toString(i, 36);
        }

        /* renamed from: c */
        public static /* synthetic */ ClippingProperties m17870c(Bundle bundle) {
            return new Builder().setStartPositionMs(bundle.getLong(m17869b(0), 0L)).setEndPositionMs(bundle.getLong(m17869b(1), Long.MIN_VALUE)).setRelativeToLiveWindow(bundle.getBoolean(m17869b(2), false)).setRelativeToDefaultPosition(bundle.getBoolean(m17869b(3), false)).setStartsAtKeyFrame(bundle.getBoolean(m17869b(4), false)).buildClippingProperties();
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClippingConfiguration)) {
                return false;
            }
            ClippingConfiguration clippingConfiguration = (ClippingConfiguration) obj;
            return this.startPositionMs == clippingConfiguration.startPositionMs && this.endPositionMs == clippingConfiguration.endPositionMs && this.relativeToLiveWindow == clippingConfiguration.relativeToLiveWindow && this.relativeToDefaultPosition == clippingConfiguration.relativeToDefaultPosition && this.startsAtKeyFrame == clippingConfiguration.startsAtKeyFrame;
        }

        public int hashCode() {
            long j = this.startPositionMs;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.endPositionMs;
            return ((((((i + ((int) ((j2 >>> 32) ^ j2))) * 31) + (this.relativeToLiveWindow ? 1 : 0)) * 31) + (this.relativeToDefaultPosition ? 1 : 0)) * 31) + (this.startsAtKeyFrame ? 1 : 0);
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(m17869b(0), this.startPositionMs);
            bundle.putLong(m17869b(1), this.endPositionMs);
            bundle.putBoolean(m17869b(2), this.relativeToLiveWindow);
            bundle.putBoolean(m17869b(3), this.relativeToDefaultPosition);
            bundle.putBoolean(m17869b(4), this.startsAtKeyFrame);
            return bundle;
        }

        public ClippingConfiguration(Builder builder) {
            this.startPositionMs = builder.f22510a;
            this.endPositionMs = builder.f22511b;
            this.relativeToLiveWindow = builder.f22512c;
            this.relativeToDefaultPosition = builder.f22513d;
            this.startsAtKeyFrame = builder.f22514e;
        }
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public static final class ClippingProperties extends ClippingConfiguration {
        public static final ClippingProperties UNSET = new ClippingConfiguration.Builder().buildClippingProperties();

        public ClippingProperties(ClippingConfiguration.Builder builder) {
            super(builder);
        }
    }

    /* loaded from: classes5.dex */
    public static final class DrmConfiguration {

        /* renamed from: a */
        @Nullable
        public final byte[] f22515a;
        public final boolean forceDefaultLicenseUri;
        public final ImmutableList<Integer> forcedSessionTrackTypes;
        public final ImmutableMap<String, String> licenseRequestHeaders;

        @Nullable
        public final Uri licenseUri;
        public final boolean multiSession;
        public final boolean playClearContentWithoutKey;

        @Deprecated
        public final ImmutableMap<String, String> requestHeaders;
        public final UUID scheme;

        @Deprecated
        public final ImmutableList<Integer> sessionForClearTypes;

        @Deprecated
        public final UUID uuid;

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            @Nullable
            public UUID f22516a;

            /* renamed from: b */
            @Nullable
            public Uri f22517b;

            /* renamed from: c */
            public ImmutableMap<String, String> f22518c;

            /* renamed from: d */
            public boolean f22519d;

            /* renamed from: e */
            public boolean f22520e;

            /* renamed from: f */
            public boolean f22521f;

            /* renamed from: g */
            public ImmutableList<Integer> f22522g;

            /* renamed from: h */
            @Nullable
            public byte[] f22523h;

            public DrmConfiguration build() {
                return new DrmConfiguration(this);
            }

            public Builder forceSessionsForAudioAndVideoTracks(boolean z) {
                setForcedSessionTrackTypes(z ? ImmutableList.m26163of(2, 1) : ImmutableList.m26161of());
                return this;
            }

            @Deprecated
            /* renamed from: j */
            public final Builder m17886j(@Nullable UUID uuid) {
                this.f22516a = uuid;
                return this;
            }

            public Builder setForceDefaultLicenseUri(boolean z) {
                this.f22521f = z;
                return this;
            }

            public Builder setForcedSessionTrackTypes(List<Integer> list) {
                this.f22522g = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setKeySetId(@Nullable byte[] bArr) {
                this.f22523h = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
                return this;
            }

            public Builder setLicenseRequestHeaders(Map<String, String> map) {
                this.f22518c = ImmutableMap.copyOf((Map) map);
                return this;
            }

            public Builder setLicenseUri(@Nullable Uri uri) {
                this.f22517b = uri;
                return this;
            }

            public Builder setMultiSession(boolean z) {
                this.f22519d = z;
                return this;
            }

            public Builder setPlayClearContentWithoutKey(boolean z) {
                this.f22520e = z;
                return this;
            }

            public Builder setScheme(UUID uuid) {
                this.f22516a = uuid;
                return this;
            }

            public Builder setLicenseUri(@Nullable String str) {
                this.f22517b = str == null ? null : Uri.parse(str);
                return this;
            }

            public Builder(UUID uuid) {
                this.f22516a = uuid;
                this.f22518c = ImmutableMap.m26185of();
                this.f22522g = ImmutableList.m26161of();
            }

            @Deprecated
            public Builder() {
                this.f22518c = ImmutableMap.m26185of();
                this.f22522g = ImmutableList.m26161of();
            }

            public Builder(DrmConfiguration drmConfiguration) {
                this.f22516a = drmConfiguration.scheme;
                this.f22517b = drmConfiguration.licenseUri;
                this.f22518c = drmConfiguration.licenseRequestHeaders;
                this.f22519d = drmConfiguration.multiSession;
                this.f22520e = drmConfiguration.playClearContentWithoutKey;
                this.f22521f = drmConfiguration.forceDefaultLicenseUri;
                this.f22522g = drmConfiguration.forcedSessionTrackTypes;
                this.f22523h = drmConfiguration.f22515a;
            }
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrmConfiguration)) {
                return false;
            }
            DrmConfiguration drmConfiguration = (DrmConfiguration) obj;
            return this.scheme.equals(drmConfiguration.scheme) && Util.areEqual(this.licenseUri, drmConfiguration.licenseUri) && Util.areEqual(this.licenseRequestHeaders, drmConfiguration.licenseRequestHeaders) && this.multiSession == drmConfiguration.multiSession && this.forceDefaultLicenseUri == drmConfiguration.forceDefaultLicenseUri && this.playClearContentWithoutKey == drmConfiguration.playClearContentWithoutKey && this.forcedSessionTrackTypes.equals(drmConfiguration.forcedSessionTrackTypes) && Arrays.equals(this.f22515a, drmConfiguration.f22515a);
        }

        @Nullable
        public byte[] getKeySetId() {
            byte[] bArr = this.f22515a;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public int hashCode() {
            int hashCode = this.scheme.hashCode() * 31;
            Uri uri = this.licenseUri;
            return ((((((((((((hashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.licenseRequestHeaders.hashCode()) * 31) + (this.multiSession ? 1 : 0)) * 31) + (this.forceDefaultLicenseUri ? 1 : 0)) * 31) + (this.playClearContentWithoutKey ? 1 : 0)) * 31) + this.forcedSessionTrackTypes.hashCode()) * 31) + Arrays.hashCode(this.f22515a);
        }

        public DrmConfiguration(Builder builder) {
            Assertions.checkState((builder.f22521f && builder.f22517b == null) ? false : true);
            UUID uuid = (UUID) Assertions.checkNotNull(builder.f22516a);
            this.scheme = uuid;
            this.uuid = uuid;
            this.licenseUri = builder.f22517b;
            this.requestHeaders = builder.f22518c;
            this.licenseRequestHeaders = builder.f22518c;
            this.multiSession = builder.f22519d;
            this.forceDefaultLicenseUri = builder.f22521f;
            this.playClearContentWithoutKey = builder.f22520e;
            this.sessionForClearTypes = builder.f22522g;
            this.forcedSessionTrackTypes = builder.f22522g;
            this.f22515a = builder.f22523h != null ? Arrays.copyOf(builder.f22523h, builder.f22523h.length) : null;
        }
    }

    /* loaded from: classes5.dex */
    public static final class LiveConfiguration implements Bundleable {

        /* renamed from: e */
        public static final int f22524e = 0;

        /* renamed from: f */
        public static final int f22525f = 1;

        /* renamed from: g */
        public static final int f22526g = 2;

        /* renamed from: h */
        public static final int f22527h = 3;

        /* renamed from: i */
        public static final int f22528i = 4;
        public final long maxOffsetMs;
        public final float maxPlaybackSpeed;
        public final long minOffsetMs;
        public final float minPlaybackSpeed;
        public final long targetOffsetMs;
        public static final LiveConfiguration UNSET = new Builder().build();
        public static final Bundleable.Creator<LiveConfiguration> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.rij
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final Bundleable fromBundle(Bundle bundle) {
                MediaItem.LiveConfiguration m17889c;
                m17889c = MediaItem.LiveConfiguration.m17889c(bundle);
                return m17889c;
            }
        };

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public long f22529a;

            /* renamed from: b */
            public long f22530b;

            /* renamed from: c */
            public long f22531c;

            /* renamed from: d */
            public float f22532d;

            /* renamed from: e */
            public float f22533e;

            public LiveConfiguration build() {
                return new LiveConfiguration(this);
            }

            public Builder setMaxOffsetMs(long j) {
                this.f22531c = j;
                return this;
            }

            public Builder setMaxPlaybackSpeed(float f) {
                this.f22533e = f;
                return this;
            }

            public Builder setMinOffsetMs(long j) {
                this.f22530b = j;
                return this;
            }

            public Builder setMinPlaybackSpeed(float f) {
                this.f22532d = f;
                return this;
            }

            public Builder setTargetOffsetMs(long j) {
                this.f22529a = j;
                return this;
            }

            public Builder() {
                this.f22529a = C4649C.TIME_UNSET;
                this.f22530b = C4649C.TIME_UNSET;
                this.f22531c = C4649C.TIME_UNSET;
                this.f22532d = -3.4028235E38f;
                this.f22533e = -3.4028235E38f;
            }

            public Builder(LiveConfiguration liveConfiguration) {
                this.f22529a = liveConfiguration.targetOffsetMs;
                this.f22530b = liveConfiguration.minOffsetMs;
                this.f22531c = liveConfiguration.maxOffsetMs;
                this.f22532d = liveConfiguration.minPlaybackSpeed;
                this.f22533e = liveConfiguration.maxPlaybackSpeed;
            }
        }

        /* renamed from: b */
        public static String m17888b(int i) {
            return Integer.toString(i, 36);
        }

        /* renamed from: c */
        public static /* synthetic */ LiveConfiguration m17889c(Bundle bundle) {
            return new LiveConfiguration(bundle.getLong(m17888b(0), C4649C.TIME_UNSET), bundle.getLong(m17888b(1), C4649C.TIME_UNSET), bundle.getLong(m17888b(2), C4649C.TIME_UNSET), bundle.getFloat(m17888b(3), -3.4028235E38f), bundle.getFloat(m17888b(4), -3.4028235E38f));
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LiveConfiguration)) {
                return false;
            }
            LiveConfiguration liveConfiguration = (LiveConfiguration) obj;
            return this.targetOffsetMs == liveConfiguration.targetOffsetMs && this.minOffsetMs == liveConfiguration.minOffsetMs && this.maxOffsetMs == liveConfiguration.maxOffsetMs && this.minPlaybackSpeed == liveConfiguration.minPlaybackSpeed && this.maxPlaybackSpeed == liveConfiguration.maxPlaybackSpeed;
        }

        public int hashCode() {
            long j = this.targetOffsetMs;
            long j2 = this.minOffsetMs;
            int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.maxOffsetMs;
            int i2 = (i + ((int) ((j3 >>> 32) ^ j3))) * 31;
            float f = this.minPlaybackSpeed;
            int floatToIntBits = (i2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
            float f2 = this.maxPlaybackSpeed;
            return floatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(m17888b(0), this.targetOffsetMs);
            bundle.putLong(m17888b(1), this.minOffsetMs);
            bundle.putLong(m17888b(2), this.maxOffsetMs);
            bundle.putFloat(m17888b(3), this.minPlaybackSpeed);
            bundle.putFloat(m17888b(4), this.maxPlaybackSpeed);
            return bundle;
        }

        public LiveConfiguration(Builder builder) {
            this(builder.f22529a, builder.f22530b, builder.f22531c, builder.f22532d, builder.f22533e);
        }

        @Deprecated
        public LiveConfiguration(long j, long j2, long j3, float f, float f2) {
            this.targetOffsetMs = j;
            this.minOffsetMs = j2;
            this.maxOffsetMs = j3;
            this.minPlaybackSpeed = f;
            this.maxPlaybackSpeed = f2;
        }
    }

    /* loaded from: classes5.dex */
    public static class LocalConfiguration {

        @Nullable
        public final AdsConfiguration adsConfiguration;

        @Nullable
        public final String customCacheKey;

        @Nullable
        public final DrmConfiguration drmConfiguration;

        @Nullable
        public final String mimeType;
        public final List<StreamKey> streamKeys;
        public final ImmutableList<SubtitleConfiguration> subtitleConfigurations;

        @Deprecated
        public final List<Subtitle> subtitles;

        @Nullable
        public final Object tag;
        public final Uri uri;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LocalConfiguration)) {
                return false;
            }
            LocalConfiguration localConfiguration = (LocalConfiguration) obj;
            return this.uri.equals(localConfiguration.uri) && Util.areEqual(this.mimeType, localConfiguration.mimeType) && Util.areEqual(this.drmConfiguration, localConfiguration.drmConfiguration) && Util.areEqual(this.adsConfiguration, localConfiguration.adsConfiguration) && this.streamKeys.equals(localConfiguration.streamKeys) && Util.areEqual(this.customCacheKey, localConfiguration.customCacheKey) && this.subtitleConfigurations.equals(localConfiguration.subtitleConfigurations) && Util.areEqual(this.tag, localConfiguration.tag);
        }

        public int hashCode() {
            int hashCode = this.uri.hashCode() * 31;
            String str = this.mimeType;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            DrmConfiguration drmConfiguration = this.drmConfiguration;
            int hashCode3 = (hashCode2 + (drmConfiguration == null ? 0 : drmConfiguration.hashCode())) * 31;
            AdsConfiguration adsConfiguration = this.adsConfiguration;
            int hashCode4 = (((hashCode3 + (adsConfiguration == null ? 0 : adsConfiguration.hashCode())) * 31) + this.streamKeys.hashCode()) * 31;
            String str2 = this.customCacheKey;
            int hashCode5 = (((hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.subtitleConfigurations.hashCode()) * 31;
            Object obj = this.tag;
            return hashCode5 + (obj != null ? obj.hashCode() : 0);
        }

        public LocalConfiguration(Uri uri, @Nullable String str, @Nullable DrmConfiguration drmConfiguration, @Nullable AdsConfiguration adsConfiguration, List<StreamKey> list, @Nullable String str2, ImmutableList<SubtitleConfiguration> immutableList, @Nullable Object obj) {
            this.uri = uri;
            this.mimeType = str;
            this.drmConfiguration = drmConfiguration;
            this.adsConfiguration = adsConfiguration;
            this.streamKeys = list;
            this.customCacheKey = str2;
            this.subtitleConfigurations = immutableList;
            ImmutableList.Builder builder = ImmutableList.builder();
            for (int i = 0; i < immutableList.size(); i++) {
                builder.add((ImmutableList.Builder) immutableList.get(i).buildUpon().m17903i());
            }
            this.subtitles = builder.build();
            this.tag = obj;
        }
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public static final class PlaybackProperties extends LocalConfiguration {
        public PlaybackProperties(Uri uri, @Nullable String str, @Nullable DrmConfiguration drmConfiguration, @Nullable AdsConfiguration adsConfiguration, List<StreamKey> list, @Nullable String str2, ImmutableList<SubtitleConfiguration> immutableList, @Nullable Object obj) {
            super(uri, str, drmConfiguration, adsConfiguration, list, str2, immutableList, obj);
        }
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public static final class Subtitle extends SubtitleConfiguration {
        @Deprecated
        public Subtitle(Uri uri, String str, @Nullable String str2) {
            this(uri, str, str2, 0);
        }

        @Deprecated
        public Subtitle(Uri uri, String str, @Nullable String str2, int i) {
            this(uri, str, str2, i, 0, null);
        }

        @Deprecated
        public Subtitle(Uri uri, String str, @Nullable String str2, int i, int i2, @Nullable String str3) {
            super(uri, str, str2, i, i2, str3, null);
        }

        public Subtitle(SubtitleConfiguration.Builder builder) {
            super(builder);
        }
    }

    /* renamed from: b */
    public static MediaItem m17864b(Bundle bundle) {
        String str = (String) Assertions.checkNotNull(bundle.getString(m17865c(0), ""));
        Bundle bundle2 = bundle.getBundle(m17865c(1));
        LiveConfiguration fromBundle = bundle2 == null ? LiveConfiguration.UNSET : LiveConfiguration.CREATOR.fromBundle(bundle2);
        Bundle bundle3 = bundle.getBundle(m17865c(2));
        MediaMetadata fromBundle2 = bundle3 == null ? MediaMetadata.EMPTY : MediaMetadata.CREATOR.fromBundle(bundle3);
        Bundle bundle4 = bundle.getBundle(m17865c(3));
        return new MediaItem(str, bundle4 == null ? ClippingProperties.UNSET : ClippingConfiguration.CREATOR.fromBundle(bundle4), null, fromBundle, fromBundle2);
    }

    /* renamed from: c */
    public static String m17865c(int i) {
        return Integer.toString(i, 36);
    }

    public static MediaItem fromUri(String str) {
        return new Builder().setUri(str).build();
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaItem)) {
            return false;
        }
        MediaItem mediaItem = (MediaItem) obj;
        return Util.areEqual(this.mediaId, mediaItem.mediaId) && this.clippingConfiguration.equals(mediaItem.clippingConfiguration) && Util.areEqual(this.localConfiguration, mediaItem.localConfiguration) && Util.areEqual(this.liveConfiguration, mediaItem.liveConfiguration) && Util.areEqual(this.mediaMetadata, mediaItem.mediaMetadata);
    }

    public int hashCode() {
        int hashCode = this.mediaId.hashCode() * 31;
        LocalConfiguration localConfiguration = this.localConfiguration;
        return ((((((hashCode + (localConfiguration != null ? localConfiguration.hashCode() : 0)) * 31) + this.liveConfiguration.hashCode()) * 31) + this.clippingConfiguration.hashCode()) * 31) + this.mediaMetadata.hashCode();
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(m17865c(0), this.mediaId);
        bundle.putBundle(m17865c(1), this.liveConfiguration.toBundle());
        bundle.putBundle(m17865c(2), this.mediaMetadata.toBundle());
        bundle.putBundle(m17865c(3), this.clippingConfiguration.toBundle());
        return bundle;
    }

    /* loaded from: classes5.dex */
    public static class SubtitleConfiguration {

        /* renamed from: id */
        @Nullable
        public final String f22534id;

        @Nullable
        public final String label;

        @Nullable
        public final String language;

        @Nullable
        public final String mimeType;
        public final int roleFlags;
        public final int selectionFlags;
        public final Uri uri;

        /* loaded from: classes5.dex */
        public static final class Builder {

            /* renamed from: a */
            public Uri f22535a;

            /* renamed from: b */
            @Nullable
            public String f22536b;

            /* renamed from: c */
            @Nullable
            public String f22537c;

            /* renamed from: d */
            public int f22538d;

            /* renamed from: e */
            public int f22539e;

            /* renamed from: f */
            @Nullable
            public String f22540f;

            /* renamed from: g */
            @Nullable
            public String f22541g;

            public SubtitleConfiguration build() {
                return new SubtitleConfiguration(this);
            }

            /* renamed from: i */
            public final Subtitle m17903i() {
                return new Subtitle(this);
            }

            public Builder setId(@Nullable String str) {
                this.f22541g = str;
                return this;
            }

            public Builder setLabel(@Nullable String str) {
                this.f22540f = str;
                return this;
            }

            public Builder setLanguage(@Nullable String str) {
                this.f22537c = str;
                return this;
            }

            public Builder setMimeType(String str) {
                this.f22536b = str;
                return this;
            }

            public Builder setRoleFlags(int i) {
                this.f22539e = i;
                return this;
            }

            public Builder setSelectionFlags(int i) {
                this.f22538d = i;
                return this;
            }

            public Builder setUri(Uri uri) {
                this.f22535a = uri;
                return this;
            }

            public Builder(Uri uri) {
                this.f22535a = uri;
            }

            public Builder(SubtitleConfiguration subtitleConfiguration) {
                this.f22535a = subtitleConfiguration.uri;
                this.f22536b = subtitleConfiguration.mimeType;
                this.f22537c = subtitleConfiguration.language;
                this.f22538d = subtitleConfiguration.selectionFlags;
                this.f22539e = subtitleConfiguration.roleFlags;
                this.f22540f = subtitleConfiguration.label;
                this.f22541g = subtitleConfiguration.f22534id;
            }
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SubtitleConfiguration)) {
                return false;
            }
            SubtitleConfiguration subtitleConfiguration = (SubtitleConfiguration) obj;
            return this.uri.equals(subtitleConfiguration.uri) && Util.areEqual(this.mimeType, subtitleConfiguration.mimeType) && Util.areEqual(this.language, subtitleConfiguration.language) && this.selectionFlags == subtitleConfiguration.selectionFlags && this.roleFlags == subtitleConfiguration.roleFlags && Util.areEqual(this.label, subtitleConfiguration.label) && Util.areEqual(this.f22534id, subtitleConfiguration.f22534id);
        }

        public int hashCode() {
            int hashCode = this.uri.hashCode() * 31;
            String str = this.mimeType;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.language;
            int hashCode3 = (((((hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.selectionFlags) * 31) + this.roleFlags) * 31;
            String str3 = this.label;
            int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f22534id;
            return hashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        public SubtitleConfiguration(Uri uri, String str, @Nullable String str2, int i, int i2, @Nullable String str3, @Nullable String str4) {
            this.uri = uri;
            this.mimeType = str;
            this.language = str2;
            this.selectionFlags = i;
            this.roleFlags = i2;
            this.label = str3;
            this.f22534id = str4;
        }

        public SubtitleConfiguration(Builder builder) {
            this.uri = builder.f22535a;
            this.mimeType = builder.f22536b;
            this.language = builder.f22537c;
            this.selectionFlags = builder.f22538d;
            this.roleFlags = builder.f22539e;
            this.label = builder.f22540f;
            this.f22534id = builder.f22541g;
        }
    }

    public MediaItem(String str, ClippingProperties clippingProperties, @Nullable PlaybackProperties playbackProperties, LiveConfiguration liveConfiguration, MediaMetadata mediaMetadata) {
        this.mediaId = str;
        this.localConfiguration = playbackProperties;
        this.playbackProperties = playbackProperties;
        this.liveConfiguration = liveConfiguration;
        this.mediaMetadata = mediaMetadata;
        this.clippingConfiguration = clippingProperties;
        this.clippingProperties = clippingProperties;
    }

    public static MediaItem fromUri(Uri uri) {
        return new Builder().setUri(uri).build();
    }
}
