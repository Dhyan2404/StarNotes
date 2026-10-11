package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;

/* loaded from: classes5.dex */
public final class SingleSampleMediaSource extends BaseMediaSource {

    /* renamed from: l */
    public final DataSpec f25396l;

    /* renamed from: m */
    public final DataSource.Factory f25397m;

    /* renamed from: n */
    public final Format f25398n;

    /* renamed from: o */
    public final long f25399o;

    /* renamed from: p */
    public final LoadErrorHandlingPolicy f25400p;

    /* renamed from: q */
    public final boolean f25401q;

    /* renamed from: r */
    public final Timeline f25402r;

    /* renamed from: s */
    public final MediaItem f25403s;

    /* renamed from: t */
    @Nullable
    public TransferListener f25404t;

    /* loaded from: classes5.dex */
    public static final class Factory {

        /* renamed from: a */
        public final DataSource.Factory f25405a;

        /* renamed from: b */
        public LoadErrorHandlingPolicy f25406b = new DefaultLoadErrorHandlingPolicy();

        /* renamed from: c */
        public boolean f25407c = true;

        /* renamed from: d */
        @Nullable
        public Object f25408d;

        /* renamed from: e */
        @Nullable
        public String f25409e;

        public Factory(DataSource.Factory factory) {
            this.f25405a = (DataSource.Factory) Assertions.checkNotNull(factory);
        }

        public SingleSampleMediaSource createMediaSource(MediaItem.SubtitleConfiguration subtitleConfiguration, long j) {
            return new SingleSampleMediaSource(this.f25409e, subtitleConfiguration, this.f25405a, j, this.f25406b, this.f25407c, this.f25408d);
        }

        public Factory setLoadErrorHandlingPolicy(@Nullable LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.f25406b = loadErrorHandlingPolicy;
            return this;
        }

        public Factory setTag(@Nullable Object obj) {
            this.f25408d = obj;
            return this;
        }

        @Deprecated
        public Factory setTrackId(@Nullable String str) {
            this.f25409e = str;
            return this;
        }

        public Factory setTreatLoadErrorsAsEndOfStream(boolean z) {
            this.f25407c = z;
            return this;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new C4864d(this.f25396l, this.f25397m, this.f25404t, this.f25398n, this.f25399o, this.f25400p, createEventDispatcher(mediaPeriodId), this.f25401q);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.f25403s;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.f25404t = transferListener;
        refreshSourceInfo(this.f25402r);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((C4864d) mediaPeriod).m19915e();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
    }

    public SingleSampleMediaSource(@Nullable String str, MediaItem.SubtitleConfiguration subtitleConfiguration, DataSource.Factory factory, long j, LoadErrorHandlingPolicy loadErrorHandlingPolicy, boolean z, @Nullable Object obj) {
        this.f25397m = factory;
        this.f25399o = j;
        this.f25400p = loadErrorHandlingPolicy;
        this.f25401q = z;
        MediaItem build = new MediaItem.Builder().setUri(Uri.EMPTY).setMediaId(subtitleConfiguration.uri.toString()).setSubtitleConfigurations(ImmutableList.m26162of(subtitleConfiguration)).setTag(obj).build();
        this.f25403s = build;
        Format.Builder label = new Format.Builder().setSampleMimeType((String) MoreObjects.firstNonNull(subtitleConfiguration.mimeType, MimeTypes.TEXT_UNKNOWN)).setLanguage(subtitleConfiguration.language).setSelectionFlags(subtitleConfiguration.selectionFlags).setRoleFlags(subtitleConfiguration.roleFlags).setLabel(subtitleConfiguration.label);
        String str2 = subtitleConfiguration.f22534id;
        this.f25398n = label.setId(str2 == null ? str : str2).build();
        this.f25396l = new DataSpec.Builder().setUri(subtitleConfiguration.uri).setFlags(1).build();
        this.f25402r = new SinglePeriodTimeline(j, true, false, false, (Object) null, build);
    }
}
