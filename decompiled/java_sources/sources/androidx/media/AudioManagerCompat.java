package androidx.media;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class AudioManagerCompat {
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;

    /* renamed from: a */
    public static final String f8134a = "AudioManCompat";

    @RequiresApi(26)
    /* renamed from: androidx.media.AudioManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C1185a {
        @DoNotInline
        /* renamed from: a */
        public static int m5007a(AudioManager audioManager, AudioFocusRequest focusRequest) {
            return audioManager.abandonAudioFocusRequest(focusRequest);
        }

        @DoNotInline
        /* renamed from: b */
        public static int m5008b(AudioManager audioManager, AudioFocusRequest focusRequest) {
            return audioManager.requestAudioFocus(focusRequest);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.media.AudioManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C1186b {
        @DoNotInline
        /* renamed from: a */
        public static int m5009a(AudioManager audioManager, int streamType) {
            return audioManager.getStreamMinVolume(streamType);
        }
    }

    public static int abandonAudioFocusRequest(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat focusRequest) {
        if (audioManager == null) {
            throw new IllegalArgumentException("AudioManager must not be null");
        }
        if (focusRequest != null) {
            return C1185a.m5007a(audioManager, focusRequest.m5004b());
        }
        throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
    }

    @IntRange(from = 0)
    public static int getStreamMaxVolume(@NonNull AudioManager audioManager, int streamType) {
        return audioManager.getStreamMaxVolume(streamType);
    }

    @IntRange(from = 0)
    public static int getStreamMinVolume(@NonNull AudioManager audioManager, int streamType) {
        return C1186b.m5009a(audioManager, streamType);
    }

    public static int requestAudioFocus(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat focusRequest) {
        if (audioManager == null) {
            throw new IllegalArgumentException("AudioManager must not be null");
        }
        if (focusRequest != null) {
            return C1185a.m5008b(audioManager, focusRequest.m5004b());
        }
        throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
    }
}
