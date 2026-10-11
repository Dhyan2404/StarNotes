package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.video.VideoSize;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public class EventLogger implements AnalyticsListener {

    /* renamed from: f */
    public static final String f28300f = "EventLogger";

    /* renamed from: g */
    public static final int f28301g = 3;

    /* renamed from: h */
    public static final NumberFormat f28302h;

    /* renamed from: a */
    @Nullable
    public final MappingTrackSelector f28303a;

    /* renamed from: b */
    public final String f28304b;

    /* renamed from: c */
    public final Timeline.Window f28305c;

    /* renamed from: d */
    public final Timeline.Period f28306d;

    /* renamed from: e */
    public final long f28307e;

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        f28302h = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        numberFormat.setGroupingUsed(false);
    }

    public EventLogger(@Nullable MappingTrackSelector mappingTrackSelector) {
        this(mappingTrackSelector, "EventLogger");
    }

    /* renamed from: a */
    public static String m21432a(int i, int i2) {
        if (i < 2) {
            return "N/A";
        }
        if (i2 == 0) {
            return HlsPlaylistParser.f26143N0;
        }
        if (i2 == 8) {
            return "YES_NOT_SEAMLESS";
        }
        if (i2 == 16) {
            return HlsPlaylistParser.f26141M0;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public static String m21433b(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "?" : "INTERNAL" : "REMOVE" : "SKIP" : "SEEK_ADJUSTMENT" : "SEEK" : "AUTO_TRANSITION";
    }

    /* renamed from: e */
    public static String m21434e(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "?" : "PLAYLIST_CHANGED" : "SEEK" : "AUTO" : "REPEAT";
    }

    /* renamed from: f */
    public static String m21435f(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "?" : "END_OF_MEDIA_ITEM" : "REMOTE" : "AUDIO_BECOMING_NOISY" : "AUDIO_FOCUS_LOSS" : "USER_REQUEST";
    }

    /* renamed from: g */
    public static String m21436g(int i) {
        return i != 0 ? i != 1 ? "?" : "TRANSIENT_AUDIO_FOCUS_LOSS" : "NONE";
    }

    /* renamed from: h */
    public static String m21437h(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "?" : "ALL" : "ONE" : "OFF";
    }

    /* renamed from: i */
    public static String m21438i(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "ENDED" : "READY" : "BUFFERING" : "IDLE";
    }

    /* renamed from: j */
    public static String m21439j(long j) {
        return j == C4649C.TIME_UNSET ? "?" : f28302h.format(((float) j) / 1000.0f);
    }

    /* renamed from: k */
    public static String m21440k(int i) {
        return i != 0 ? i != 1 ? "?" : "SOURCE_UPDATE" : "PLAYLIST_CHANGED";
    }

    /* renamed from: l */
    public static String m21441l(@Nullable TrackSelection trackSelection, TrackGroup trackGroup, int i) {
        return m21442m((trackSelection == null || !trackSelection.getTrackGroup().equals(trackGroup) || trackSelection.indexOf(i) == -1) ? false : true);
    }

    /* renamed from: m */
    public static String m21442m(boolean z) {
        return z ? "[X]" : "[ ]";
    }

    /* renamed from: c */
    public final String m21443c(AnalyticsListener.EventTime eventTime, String str, @Nullable String str2, @Nullable Throwable th) {
        String m21444d = m21444d(eventTime);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(m21444d).length());
        sb.append(str);
        sb.append(" [");
        sb.append(m21444d);
        String sb2 = sb.toString();
        if (th instanceof PlaybackException) {
            String valueOf = String.valueOf(sb2);
            String errorCodeName = ((PlaybackException) th).getErrorCodeName();
            StringBuilder sb3 = new StringBuilder(valueOf.length() + 12 + String.valueOf(errorCodeName).length());
            sb3.append(valueOf);
            sb3.append(", errorCode=");
            sb3.append(errorCodeName);
            sb2 = sb3.toString();
        }
        if (str2 != null) {
            String valueOf2 = String.valueOf(sb2);
            StringBuilder sb4 = new StringBuilder(valueOf2.length() + 2 + str2.length());
            sb4.append(valueOf2);
            sb4.append(", ");
            sb4.append(str2);
            sb2 = sb4.toString();
        }
        String throwableString = Log.getThrowableString(th);
        if (!TextUtils.isEmpty(throwableString)) {
            String valueOf3 = String.valueOf(sb2);
            String replace = throwableString.replace("\n", "\n  ");
            StringBuilder sb5 = new StringBuilder(valueOf3.length() + 4 + String.valueOf(replace).length());
            sb5.append(valueOf3);
            sb5.append("\n  ");
            sb5.append(replace);
            sb5.append('\n');
            sb2 = sb5.toString();
        }
        return String.valueOf(sb2).concat(IteratorUtils.f104924b);
    }

    /* renamed from: d */
    public final String m21444d(AnalyticsListener.EventTime eventTime) {
        int i = eventTime.windowIndex;
        StringBuilder sb = new StringBuilder(18);
        sb.append("window=");
        sb.append(i);
        String sb2 = sb.toString();
        if (eventTime.mediaPeriodId != null) {
            String valueOf = String.valueOf(sb2);
            int indexOfPeriod = eventTime.timeline.getIndexOfPeriod(eventTime.mediaPeriodId.periodUid);
            StringBuilder sb3 = new StringBuilder(valueOf.length() + 20);
            sb3.append(valueOf);
            sb3.append(", period=");
            sb3.append(indexOfPeriod);
            sb2 = sb3.toString();
            if (eventTime.mediaPeriodId.isAd()) {
                String valueOf2 = String.valueOf(sb2);
                int i2 = eventTime.mediaPeriodId.adGroupIndex;
                StringBuilder sb4 = new StringBuilder(valueOf2.length() + 21);
                sb4.append(valueOf2);
                sb4.append(", adGroup=");
                sb4.append(i2);
                String valueOf3 = String.valueOf(sb4.toString());
                int i3 = eventTime.mediaPeriodId.adIndexInAdGroup;
                StringBuilder sb5 = new StringBuilder(valueOf3.length() + 16);
                sb5.append(valueOf3);
                sb5.append(", ad=");
                sb5.append(i3);
                sb2 = sb5.toString();
            }
        }
        String m21439j = m21439j(eventTime.realtimeMs - this.f28307e);
        String m21439j2 = m21439j(eventTime.eventPlaybackPositionMs);
        StringBuilder sb6 = new StringBuilder(String.valueOf(m21439j).length() + 23 + String.valueOf(m21439j2).length() + String.valueOf(sb2).length());
        sb6.append("eventTime=");
        sb6.append(m21439j);
        sb6.append(", mediaPos=");
        sb6.append(m21439j2);
        sb6.append(", ");
        sb6.append(sb2);
        return sb6.toString();
    }

    public void logd(String str) {
        Log.m21487d(this.f28304b, str);
    }

    public void loge(String str) {
        Log.m21489e(this.f28304b, str);
    }

    /* renamed from: n */
    public final void m21445n(AnalyticsListener.EventTime eventTime, String str) {
        logd(m21443c(eventTime, str, null, null));
    }

    /* renamed from: o */
    public final void m21446o(AnalyticsListener.EventTime eventTime, String str, String str2) {
        logd(m21443c(eventTime, str, str2, null));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioAttributesChanged(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        int i = audioAttributes.contentType;
        int i2 = audioAttributes.flags;
        int i3 = audioAttributes.usage;
        int i4 = audioAttributes.allowedCapturePolicy;
        StringBuilder sb = new StringBuilder(47);
        sb.append(i);
        sb.append(",");
        sb.append(i2);
        sb.append(",");
        sb.append(i3);
        sb.append(",");
        sb.append(i4);
        m21446o(eventTime, "audioAttributes", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
        m21446o(eventTime, "audioDecoderInitialized", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
        m21446o(eventTime, "audioDecoderReleased", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        m21445n(eventTime, "audioDisabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        m21445n(eventTime, "audioEnabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
        m21446o(eventTime, "audioInputFormat", Format.toLogString(format));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioSessionIdChanged(AnalyticsListener.EventTime eventTime, int i) {
        m21446o(eventTime, "audioSessionId", Integer.toString(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        StringBuilder sb = new StringBuilder(55);
        sb.append(i);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        m21447p(eventTime, "audioTrackUnderrun", sb.toString(), null);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        m21446o(eventTime, "downstreamFormat", Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
        m21445n(eventTime, "drmKeysLoaded");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
        m21445n(eventTime, "drmKeysRemoved");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
        m21445n(eventTime, "drmKeysRestored");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime, int i) {
        StringBuilder sb = new StringBuilder(17);
        sb.append("state=");
        sb.append(i);
        m21446o(eventTime, "drmSessionAcquired", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
        m21449r(eventTime, "drmSessionManagerError", exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionReleased(AnalyticsListener.EventTime eventTime) {
        m21445n(eventTime, "drmSessionReleased");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
        m21446o(eventTime, "droppedFrames", Integer.toString(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onIsLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        m21446o(eventTime, "loading", Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onIsPlayingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        m21446o(eventTime, "isPlaying", Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadCanceled(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadCompleted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        m21449r(eventTime, "loadError", iOException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadStarted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onMediaItemTransition(AnalyticsListener.EventTime eventTime, @Nullable MediaItem mediaItem, int i) {
        String m21444d = m21444d(eventTime);
        String m21434e = m21434e(i);
        StringBuilder sb = new StringBuilder(String.valueOf(m21444d).length() + 21 + String.valueOf(m21434e).length());
        sb.append("mediaItem [");
        sb.append(m21444d);
        sb.append(", reason=");
        sb.append(m21434e);
        sb.append(IteratorUtils.f104924b);
        logd(sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        String valueOf = String.valueOf(m21444d(eventTime));
        logd(valueOf.length() != 0 ? "metadata [".concat(valueOf) : new String("metadata ["));
        m21450s(metadata, GlideException.C1935a.f14609h);
        logd(IteratorUtils.f104924b);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlayWhenReadyChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
        String m21435f = m21435f(i);
        StringBuilder sb = new StringBuilder(String.valueOf(m21435f).length() + 7);
        sb.append(z);
        sb.append(", ");
        sb.append(m21435f);
        m21446o(eventTime, "playWhenReady", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        m21446o(eventTime, "playbackParameters", playbackParameters.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackStateChanged(AnalyticsListener.EventTime eventTime, int i) {
        m21446o(eventTime, "state", m21438i(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackSuppressionReasonChanged(AnalyticsListener.EventTime eventTime, int i) {
        m21446o(eventTime, "playbackSuppressionReason", m21436g(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlayerError(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        m21448q(eventTime, "playerFailed", playbackException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("reason=");
        sb.append(m21433b(i));
        sb.append(", PositionInfo:old [");
        sb.append("mediaItem=");
        sb.append(positionInfo.mediaItemIndex);
        sb.append(", period=");
        sb.append(positionInfo.periodIndex);
        sb.append(", pos=");
        sb.append(positionInfo.positionMs);
        if (positionInfo.adGroupIndex != -1) {
            sb.append(", contentPos=");
            sb.append(positionInfo.contentPositionMs);
            sb.append(", adGroup=");
            sb.append(positionInfo.adGroupIndex);
            sb.append(", ad=");
            sb.append(positionInfo.adIndexInAdGroup);
        }
        sb.append("], PositionInfo:new [");
        sb.append("mediaItem=");
        sb.append(positionInfo2.mediaItemIndex);
        sb.append(", period=");
        sb.append(positionInfo2.periodIndex);
        sb.append(", pos=");
        sb.append(positionInfo2.positionMs);
        if (positionInfo2.adGroupIndex != -1) {
            sb.append(", contentPos=");
            sb.append(positionInfo2.contentPositionMs);
            sb.append(", adGroup=");
            sb.append(positionInfo2.adGroupIndex);
            sb.append(", ad=");
            sb.append(positionInfo2.adIndexInAdGroup);
        }
        sb.append(IteratorUtils.f104924b);
        m21446o(eventTime, "positionDiscontinuity", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Object obj, long j) {
        m21446o(eventTime, "renderedFirstFrame", String.valueOf(obj));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i) {
        m21446o(eventTime, "repeatMode", m21437h(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        m21446o(eventTime, "shuffleModeEnabled", Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onSkipSilenceEnabledChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        m21446o(eventTime, "skipSilenceEnabled", Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onSurfaceSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2) {
        StringBuilder sb = new StringBuilder(24);
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        m21446o(eventTime, "surfaceSize", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i) {
        int periodCount = eventTime.timeline.getPeriodCount();
        int windowCount = eventTime.timeline.getWindowCount();
        String m21444d = m21444d(eventTime);
        String m21440k = m21440k(i);
        StringBuilder sb = new StringBuilder(String.valueOf(m21444d).length() + 69 + String.valueOf(m21440k).length());
        sb.append("timeline [");
        sb.append(m21444d);
        sb.append(", periodCount=");
        sb.append(periodCount);
        sb.append(", windowCount=");
        sb.append(windowCount);
        sb.append(", reason=");
        sb.append(m21440k);
        logd(sb.toString());
        for (int i2 = 0; i2 < Math.min(periodCount, 3); i2++) {
            eventTime.timeline.getPeriod(i2, this.f28306d);
            String m21439j = m21439j(this.f28306d.getDurationMs());
            StringBuilder sb2 = new StringBuilder(String.valueOf(m21439j).length() + 11);
            sb2.append("  period [");
            sb2.append(m21439j);
            sb2.append(IteratorUtils.f104924b);
            logd(sb2.toString());
        }
        if (periodCount > 3) {
            logd("  ...");
        }
        for (int i3 = 0; i3 < Math.min(windowCount, 3); i3++) {
            eventTime.timeline.getWindow(i3, this.f28305c);
            String m21439j2 = m21439j(this.f28305c.getDurationMs());
            Timeline.Window window = this.f28305c;
            boolean z = window.isSeekable;
            boolean z2 = window.isDynamic;
            StringBuilder sb3 = new StringBuilder(String.valueOf(m21439j2).length() + 42);
            sb3.append("  window [");
            sb3.append(m21439j2);
            sb3.append(", seekable=");
            sb3.append(z);
            sb3.append(", dynamic=");
            sb3.append(z2);
            sb3.append(IteratorUtils.f104924b);
            logd(sb3.toString());
        }
        if (windowCount > 3) {
            logd("  ...");
        }
        logd(IteratorUtils.f104924b);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onTracksChanged(AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo;
        MappingTrackSelector mappingTrackSelector = this.f28303a;
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = mappingTrackSelector != null ? mappingTrackSelector.getCurrentMappedTrackInfo() : null;
        if (currentMappedTrackInfo == null) {
            m21446o(eventTime, "tracks", "[]");
            return;
        }
        String valueOf = String.valueOf(m21444d(eventTime));
        logd(valueOf.length() != 0 ? "tracks [".concat(valueOf) : new String("tracks ["));
        int rendererCount = currentMappedTrackInfo.getRendererCount();
        int i = 0;
        while (true) {
            String str = "    Group:";
            String str2 = "    ]";
            String str3 = " [";
            if (i >= rendererCount) {
                break;
            }
            TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(i);
            TrackSelection trackSelection = trackSelectionArray.get(i);
            int i2 = rendererCount;
            if (trackGroups.length == 0) {
                String rendererName = currentMappedTrackInfo.getRendererName(i);
                StringBuilder sb = new StringBuilder(String.valueOf(rendererName).length() + 5);
                sb.append(GlideException.C1935a.f14609h);
                sb.append(rendererName);
                sb.append(" []");
                logd(sb.toString());
                mappedTrackInfo = currentMappedTrackInfo;
            } else {
                String rendererName2 = currentMappedTrackInfo.getRendererName(i);
                StringBuilder sb2 = new StringBuilder(String.valueOf(rendererName2).length() + 4);
                sb2.append(GlideException.C1935a.f14609h);
                sb2.append(rendererName2);
                sb2.append(" [");
                logd(sb2.toString());
                int i3 = 0;
                while (i3 < trackGroups.length) {
                    TrackGroup trackGroup = trackGroups.get(i3);
                    TrackGroupArray trackGroupArray2 = trackGroups;
                    String m21432a = m21432a(trackGroup.length, currentMappedTrackInfo.getAdaptiveSupport(i, i3, false));
                    String str4 = trackGroup.f25415id;
                    String str5 = str2;
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str4).length() + 33 + String.valueOf(m21432a).length());
                    sb3.append(str);
                    sb3.append(str4);
                    sb3.append(", adaptive_supported=");
                    sb3.append(m21432a);
                    sb3.append(str3);
                    logd(sb3.toString());
                    int i4 = 0;
                    while (i4 < trackGroup.length) {
                        String m21441l = m21441l(trackSelection, trackGroup, i4);
                        int capabilities = currentMappedTrackInfo.getCapabilities(i, i3, i4);
                        String formatSupportString = Util.getFormatSupportString(RendererCapabilities.getFormatSupport(capabilities));
                        String str6 = str3;
                        String str7 = str;
                        String str8 = "";
                        String str9 = RendererCapabilities.getHardwareAccelerationSupport(capabilities) == 64 ? ", accelerated=YES" : "";
                        if (RendererCapabilities.getDecoderSupport(capabilities) == 0) {
                            str8 = ", fallback=YES";
                        }
                        String str10 = str8;
                        String logString = Format.toLogString(trackGroup.getFormat(i4));
                        MappingTrackSelector.MappedTrackInfo mappedTrackInfo2 = currentMappedTrackInfo;
                        StringBuilder sb4 = new StringBuilder(String.valueOf(m21441l).length() + 38 + String.valueOf(logString).length() + String.valueOf(formatSupportString).length() + str9.length() + str10.length());
                        sb4.append("      ");
                        sb4.append(m21441l);
                        sb4.append(" Track:");
                        sb4.append(i4);
                        sb4.append(", ");
                        sb4.append(logString);
                        sb4.append(", supported=");
                        sb4.append(formatSupportString);
                        sb4.append(str9);
                        sb4.append(str10);
                        logd(sb4.toString());
                        i4++;
                        str3 = str6;
                        str = str7;
                        currentMappedTrackInfo = mappedTrackInfo2;
                        trackGroup = trackGroup;
                    }
                    logd(str5);
                    i3++;
                    str2 = str5;
                    trackGroups = trackGroupArray2;
                    currentMappedTrackInfo = currentMappedTrackInfo;
                }
                mappedTrackInfo = currentMappedTrackInfo;
                String str11 = str2;
                if (trackSelection != null) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= trackSelection.length()) {
                            break;
                        }
                        Metadata metadata = trackSelection.getFormat(i5).metadata;
                        if (metadata != null) {
                            logd("    Metadata [");
                            m21450s(metadata, "      ");
                            logd(str11);
                            break;
                        }
                        i5++;
                    }
                }
                logd("  ]");
            }
            i++;
            rendererCount = i2;
            currentMappedTrackInfo = mappedTrackInfo;
        }
        String str12 = "    Group:";
        String str13 = " [";
        TrackGroupArray unmappedTrackGroups = currentMappedTrackInfo.getUnmappedTrackGroups();
        if (unmappedTrackGroups.length > 0) {
            logd("  Unmapped [");
            int i6 = 0;
            while (i6 < unmappedTrackGroups.length) {
                StringBuilder sb5 = new StringBuilder(23);
                String str14 = str12;
                sb5.append(str14);
                sb5.append(i6);
                String str15 = str13;
                sb5.append(str15);
                logd(sb5.toString());
                TrackGroup trackGroup2 = unmappedTrackGroups.get(i6);
                int i7 = 0;
                while (i7 < trackGroup2.length) {
                    String m21442m = m21442m(false);
                    String formatSupportString2 = Util.getFormatSupportString(0);
                    String logString2 = Format.toLogString(trackGroup2.getFormat(i7));
                    TrackGroup trackGroup3 = trackGroup2;
                    StringBuilder sb6 = new StringBuilder(String.valueOf(m21442m).length() + 38 + String.valueOf(logString2).length() + String.valueOf(formatSupportString2).length());
                    sb6.append("      ");
                    sb6.append(m21442m);
                    sb6.append(" Track:");
                    sb6.append(i7);
                    sb6.append(", ");
                    sb6.append(logString2);
                    sb6.append(", supported=");
                    sb6.append(formatSupportString2);
                    logd(sb6.toString());
                    i7++;
                    unmappedTrackGroups = unmappedTrackGroups;
                    trackGroup2 = trackGroup3;
                }
                logd("    ]");
                i6++;
                str12 = str14;
                str13 = str15;
            }
            logd("  ]");
        }
        logd(IteratorUtils.f104924b);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        m21446o(eventTime, "upstreamDiscarded", Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
        m21446o(eventTime, "videoDecoderInitialized", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
        m21446o(eventTime, "videoDecoderReleased", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        m21445n(eventTime, "videoDisabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        m21445n(eventTime, "videoEnabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
        m21446o(eventTime, "videoInputFormat", Format.toLogString(format));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        int i = videoSize.width;
        int i2 = videoSize.height;
        StringBuilder sb = new StringBuilder(24);
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        m21446o(eventTime, "videoSize", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVolumeChanged(AnalyticsListener.EventTime eventTime, float f) {
        m21446o(eventTime, "volume", Float.toString(f));
    }

    /* renamed from: p */
    public final void m21447p(AnalyticsListener.EventTime eventTime, String str, String str2, @Nullable Throwable th) {
        loge(m21443c(eventTime, str, str2, th));
    }

    /* renamed from: q */
    public final void m21448q(AnalyticsListener.EventTime eventTime, String str, @Nullable Throwable th) {
        loge(m21443c(eventTime, str, null, th));
    }

    /* renamed from: r */
    public final void m21449r(AnalyticsListener.EventTime eventTime, String str, Exception exc) {
        m21447p(eventTime, "internalError", str, exc);
    }

    /* renamed from: s */
    public final void m21450s(Metadata metadata, String str) {
        for (int i = 0; i < metadata.length(); i++) {
            String valueOf = String.valueOf(metadata.get(i));
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + valueOf.length());
            sb.append(str);
            sb.append(valueOf);
            logd(sb.toString());
        }
    }

    public EventLogger(@Nullable MappingTrackSelector mappingTrackSelector, String str) {
        this.f28303a = mappingTrackSelector;
        this.f28304b = str;
        this.f28305c = new Timeline.Window();
        this.f28306d = new Timeline.Period();
        this.f28307e = android.os.SystemClock.elapsedRealtime();
    }
}
