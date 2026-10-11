package com.google.android.exoplayer2.util;

import android.annotation.SuppressLint;
import android.os.Looper;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.material.motion.MotionUtils;
import java.util.Locale;

/* loaded from: classes5.dex */
public class DebugTextViewHelper implements Player.Listener, Runnable {

    /* renamed from: h */
    public static final int f28285h = 1000;

    /* renamed from: e */
    public final ExoPlayer f28286e;

    /* renamed from: f */
    public final TextView f28287f;

    /* renamed from: g */
    public boolean f28288g;

    public DebugTextViewHelper(ExoPlayer exoPlayer, TextView textView) {
        Assertions.checkArgument(exoPlayer.getApplicationLooper() == Looper.getMainLooper());
        this.f28286e = exoPlayer;
        this.f28287f = textView;
    }

    /* renamed from: a */
    public static String m21423a(DecoderCounters decoderCounters) {
        if (decoderCounters == null) {
            return "";
        }
        decoderCounters.ensureUpdated();
        int i = decoderCounters.skippedInputBufferCount;
        int i2 = decoderCounters.skippedOutputBufferCount;
        int i3 = decoderCounters.renderedOutputBufferCount;
        int i4 = decoderCounters.droppedBufferCount;
        int i5 = decoderCounters.maxConsecutiveDroppedBufferCount;
        int i6 = decoderCounters.droppedToKeyframeCount;
        StringBuilder sb = new StringBuilder(93);
        sb.append(" sib:");
        sb.append(i);
        sb.append(" sb:");
        sb.append(i2);
        sb.append(" rb:");
        sb.append(i3);
        sb.append(" db:");
        sb.append(i4);
        sb.append(" mcdb:");
        sb.append(i5);
        sb.append(" dk:");
        sb.append(i6);
        return sb.toString();
    }

    /* renamed from: b */
    public static String m21424b(float f) {
        if (f == -1.0f || f == 1.0f) {
            return "";
        }
        String valueOf = String.valueOf(String.format(Locale.US, "%.02f", Float.valueOf(f)));
        return valueOf.length() != 0 ? " par:".concat(valueOf) : new String(" par:");
    }

    /* renamed from: c */
    public static String m21425c(long j, int i) {
        return i == 0 ? "N/A" : String.valueOf((long) (j / i));
    }

    public String getAudioString() {
        Format audioFormat = this.f28286e.getAudioFormat();
        DecoderCounters audioDecoderCounters = this.f28286e.getAudioDecoderCounters();
        if (audioFormat == null || audioDecoderCounters == null) {
            return "";
        }
        String str = audioFormat.sampleMimeType;
        String str2 = audioFormat.f22448id;
        int i = audioFormat.sampleRate;
        int i2 = audioFormat.channelCount;
        String m21423a = m21423a(audioDecoderCounters);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length() + String.valueOf(m21423a).length());
        sb.append("\n");
        sb.append(str);
        sb.append("(id:");
        sb.append(str2);
        sb.append(" hz:");
        sb.append(i);
        sb.append(" ch:");
        sb.append(i2);
        sb.append(m21423a);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public String getDebugString() {
        String playerStateString = getPlayerStateString();
        String videoString = getVideoString();
        String audioString = getAudioString();
        StringBuilder sb = new StringBuilder(String.valueOf(playerStateString).length() + String.valueOf(videoString).length() + String.valueOf(audioString).length());
        sb.append(playerStateString);
        sb.append(videoString);
        sb.append(audioString);
        return sb.toString();
    }

    public String getPlayerStateString() {
        int playbackState = this.f28286e.getPlaybackState();
        return String.format("playWhenReady:%s playbackState:%s item:%s", Boolean.valueOf(this.f28286e.getPlayWhenReady()), playbackState != 1 ? playbackState != 2 ? playbackState != 3 ? playbackState != 4 ? "unknown" : "ended" : "ready" : "buffering" : "idle", Integer.valueOf(this.f28286e.getCurrentMediaItemIndex()));
    }

    public String getVideoString() {
        Format videoFormat = this.f28286e.getVideoFormat();
        DecoderCounters videoDecoderCounters = this.f28286e.getVideoDecoderCounters();
        if (videoFormat == null || videoDecoderCounters == null) {
            return "";
        }
        String str = videoFormat.sampleMimeType;
        String str2 = videoFormat.f22448id;
        int i = videoFormat.width;
        int i2 = videoFormat.height;
        String m21424b = m21424b(videoFormat.pixelWidthHeightRatio);
        String m21423a = m21423a(videoDecoderCounters);
        String m21425c = m21425c(videoDecoderCounters.totalVideoFrameProcessingOffsetUs, videoDecoderCounters.videoFrameProcessingOffsetCount);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length() + String.valueOf(m21424b).length() + String.valueOf(m21423a).length() + String.valueOf(m21425c).length());
        sb.append("\n");
        sb.append(str);
        sb.append("(id:");
        sb.append(str2);
        sb.append(" r:");
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        sb.append(m21424b);
        sb.append(m21423a);
        sb.append(" vfpo: ");
        sb.append(m21425c);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onPlayWhenReadyChanged(boolean z, int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onPlaybackStateChanged(int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        updateAndPost();
    }

    @Override // java.lang.Runnable
    public final void run() {
        updateAndPost();
    }

    public final void start() {
        if (this.f28288g) {
            return;
        }
        this.f28288g = true;
        this.f28286e.addListener(this);
        updateAndPost();
    }

    public final void stop() {
        if (this.f28288g) {
            this.f28288g = false;
            this.f28286e.removeListener(this);
            this.f28287f.removeCallbacks(this);
        }
    }

    @SuppressLint({"SetTextI18n"})
    public final void updateAndPost() {
        this.f28287f.setText(getDebugString());
        this.f28287f.removeCallbacks(this);
        this.f28287f.postDelayed(this, 1000L);
    }
}
