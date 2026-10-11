package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.AudioFocusManager;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes5.dex */
public final class AudioFocusManager {

    /* renamed from: j */
    public static final int f22180j = -1;

    /* renamed from: k */
    public static final int f22181k = 0;

    /* renamed from: l */
    public static final int f22182l = 1;

    /* renamed from: m */
    public static final int f22183m = 0;

    /* renamed from: n */
    public static final int f22184n = 1;

    /* renamed from: o */
    public static final int f22185o = 2;

    /* renamed from: p */
    public static final int f22186p = 3;

    /* renamed from: q */
    public static final int f22187q = 0;

    /* renamed from: r */
    public static final int f22188r = 1;

    /* renamed from: s */
    public static final int f22189s = 2;

    /* renamed from: t */
    public static final int f22190t = 3;

    /* renamed from: u */
    public static final int f22191u = 4;

    /* renamed from: v */
    public static final String f22192v = "AudioFocusManager";

    /* renamed from: w */
    public static final float f22193w = 0.2f;

    /* renamed from: x */
    public static final float f22194x = 1.0f;

    /* renamed from: a */
    public final AudioManager f22195a;

    /* renamed from: b */
    public final C4648a f22196b;

    /* renamed from: c */
    @Nullable
    public PlayerControl f22197c;

    /* renamed from: d */
    @Nullable
    public AudioAttributes f22198d;

    /* renamed from: f */
    public int f22200f;

    /* renamed from: h */
    public AudioFocusRequest f22202h;

    /* renamed from: i */
    public boolean f22203i;

    /* renamed from: g */
    public float f22201g = 1.0f;

    /* renamed from: e */
    public int f22199e = 0;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface PlayerCommand {
    }

    /* loaded from: classes5.dex */
    public interface PlayerControl {
        void executePlayerCommand(int i);

        void setVolumeMultiplier(float f);
    }

    /* renamed from: com.google.android.exoplayer2.AudioFocusManager$a */
    /* loaded from: classes5.dex */
    public class C4648a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: e */
        public final Handler f22204e;

        public C4648a(Handler handler) {
            this.f22204e = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m17628b(int i) {
            AudioFocusManager.this.m17617i(i);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            this.f22204e.post(new Runnable() { // from class: com.sunia.HTREnginev2.uh
                @Override // java.lang.Runnable
                public final void run() {
                    AudioFocusManager.C4648a.this.m17628b(i);
                }
            });
        }
    }

    public AudioFocusManager(Context context, Handler handler, PlayerControl playerControl) {
        this.f22195a = (AudioManager) Assertions.checkNotNull((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f22197c = playerControl;
        this.f22196b = new C4648a(handler);
    }

    /* renamed from: e */
    public static int m17610e(@Nullable AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            return 0;
        }
        int i = audioAttributes.usage;
        switch (i) {
            case 0:
                Log.m21493w(f22192v, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (audioAttributes.contentType == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unidentified audio usage: ");
                sb.append(i);
                Log.m21493w(f22192v, sb.toString());
                return 0;
            case 16:
                return Util.SDK_INT >= 19 ? 4 : 2;
        }
    }

    /* renamed from: a */
    public final void m17611a() {
        this.f22195a.abandonAudioFocus(this.f22196b);
    }

    /* renamed from: b */
    public final void m17612b() {
        if (this.f22199e == 0) {
            return;
        }
        if (Util.SDK_INT >= 26) {
            m17613c();
        } else {
            m17611a();
        }
        m17623o(0);
    }

    @RequiresApi(26)
    /* renamed from: c */
    public final void m17613c() {
        AudioFocusRequest audioFocusRequest = this.f22202h;
        if (audioFocusRequest != null) {
            this.f22195a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* renamed from: f */
    public final void m17614f(int i) {
        PlayerControl playerControl = this.f22197c;
        if (playerControl != null) {
            playerControl.executePlayerCommand(i);
        }
    }

    @VisibleForTesting
    /* renamed from: g */
    public AudioManager.OnAudioFocusChangeListener m17615g() {
        return this.f22196b;
    }

    /* renamed from: h */
    public float m17616h() {
        return this.f22201g;
    }

    /* renamed from: i */
    public final void m17617i(int i) {
        if (i == -3 || i == -2) {
            if (i != -2 && !m17626r()) {
                m17623o(3);
                return;
            } else {
                m17614f(0);
                m17623o(2);
                return;
            }
        }
        if (i == -1) {
            m17614f(-1);
            m17612b();
        } else if (i == 1) {
            m17623o(1);
            m17614f(1);
        } else {
            StringBuilder sb = new StringBuilder(38);
            sb.append("Unknown focus change type: ");
            sb.append(i);
            Log.m21493w(f22192v, sb.toString());
        }
    }

    /* renamed from: j */
    public void m17618j() {
        this.f22197c = null;
        m17612b();
    }

    /* renamed from: k */
    public final int m17619k() {
        if (this.f22199e == 1) {
            return 1;
        }
        if ((Util.SDK_INT >= 26 ? m17621m() : m17620l()) == 1) {
            m17623o(1);
            return 1;
        }
        m17623o(0);
        return -1;
    }

    /* renamed from: l */
    public final int m17620l() {
        return this.f22195a.requestAudioFocus(this.f22196b, Util.getStreamTypeForAudioUsage(((AudioAttributes) Assertions.checkNotNull(this.f22198d)).usage), this.f22200f);
    }

    @RequiresApi(26)
    /* renamed from: m */
    public final int m17621m() {
        AudioFocusRequest audioFocusRequest = this.f22202h;
        if (audioFocusRequest == null || this.f22203i) {
            this.f22202h = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f22200f) : new AudioFocusRequest.Builder(this.f22202h)).setAudioAttributes(((AudioAttributes) Assertions.checkNotNull(this.f22198d)).getAudioAttributesV21()).setWillPauseWhenDucked(m17626r()).setOnAudioFocusChangeListener(this.f22196b).build();
            this.f22203i = false;
        }
        return this.f22195a.requestAudioFocus(this.f22202h);
    }

    /* renamed from: n */
    public void m17622n(@Nullable AudioAttributes audioAttributes) {
        if (Util.areEqual(this.f22198d, audioAttributes)) {
            return;
        }
        this.f22198d = audioAttributes;
        int m17610e = m17610e(audioAttributes);
        this.f22200f = m17610e;
        boolean z = true;
        if (m17610e != 1 && m17610e != 0) {
            z = false;
        }
        Assertions.checkArgument(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    /* renamed from: o */
    public final void m17623o(int i) {
        if (this.f22199e == i) {
            return;
        }
        this.f22199e = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.f22201g == f) {
            return;
        }
        this.f22201g = f;
        PlayerControl playerControl = this.f22197c;
        if (playerControl != null) {
            playerControl.setVolumeMultiplier(f);
        }
    }

    /* renamed from: p */
    public final boolean m17624p(int i) {
        return i == 1 || this.f22200f != 1;
    }

    /* renamed from: q */
    public int m17625q(boolean z, int i) {
        if (m17624p(i)) {
            m17612b();
            return z ? 1 : -1;
        }
        if (z) {
            return m17619k();
        }
        return -1;
    }

    /* renamed from: r */
    public final boolean m17626r() {
        AudioAttributes audioAttributes = this.f22198d;
        return audioAttributes != null && audioAttributes.contentType == 1;
    }
}
