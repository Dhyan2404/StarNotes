package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.StreamVolumeManager;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class StreamVolumeManager {

    /* renamed from: i */
    public static final String f22701i = "StreamVolumeManager";

    /* renamed from: j */
    public static final String f22702j = "android.media.VOLUME_CHANGED_ACTION";

    /* renamed from: k */
    public static final int f22703k = 1;

    /* renamed from: a */
    public final Context f22704a;

    /* renamed from: b */
    public final Handler f22705b;

    /* renamed from: c */
    public final Listener f22706c;

    /* renamed from: d */
    public final AudioManager f22707d;

    /* renamed from: e */
    @Nullable
    public C4669b f22708e;

    /* renamed from: f */
    public int f22709f;

    /* renamed from: g */
    public int f22710g;

    /* renamed from: h */
    public boolean f22711h;

    /* loaded from: classes5.dex */
    public interface Listener {
        void onStreamTypeChanged(int i);

        void onStreamVolumeChanged(int i, boolean z);
    }

    /* renamed from: com.google.android.exoplayer2.StreamVolumeManager$b */
    /* loaded from: classes5.dex */
    public final class C4669b extends BroadcastReceiver {
        public C4669b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = StreamVolumeManager.this.f22705b;
            final StreamVolumeManager streamVolumeManager = StreamVolumeManager.this;
            handler.post(new Runnable() { // from class: com.sunia.HTREnginev2.g0n
                @Override // java.lang.Runnable
                public final void run() {
                    StreamVolumeManager.m18007b(StreamVolumeManager.this);
                }
            });
        }
    }

    public StreamVolumeManager(Context context, Handler handler, Listener listener) {
        Context applicationContext = context.getApplicationContext();
        this.f22704a = applicationContext;
        this.f22705b = handler;
        this.f22706c = listener;
        AudioManager audioManager = (AudioManager) Assertions.checkStateNotNull((AudioManager) applicationContext.getSystemService("audio"));
        this.f22707d = audioManager;
        this.f22709f = 3;
        this.f22710g = m18009h(audioManager, 3);
        this.f22711h = m18008f(audioManager, this.f22709f);
        C4669b c4669b = new C4669b();
        try {
            applicationContext.registerReceiver(c4669b, new IntentFilter(f22702j));
            this.f22708e = c4669b;
        } catch (RuntimeException e) {
            Log.m21494w(f22701i, "Error registering stream volume receiver", e);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m18007b(StreamVolumeManager streamVolumeManager) {
        streamVolumeManager.m18020o();
    }

    /* renamed from: f */
    public static boolean m18008f(AudioManager audioManager, int i) {
        return Util.SDK_INT >= 23 ? audioManager.isStreamMute(i) : m18009h(audioManager, i) == 0;
    }

    /* renamed from: h */
    public static int m18009h(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i);
            Log.m21494w(f22701i, sb.toString(), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    /* renamed from: c */
    public void m18010c() {
        if (this.f22710g <= m18012e()) {
            return;
        }
        this.f22707d.adjustStreamVolume(this.f22709f, -1, 1);
        m18020o();
    }

    /* renamed from: d */
    public int m18011d() {
        return this.f22707d.getStreamMaxVolume(this.f22709f);
    }

    /* renamed from: e */
    public int m18012e() {
        if (Util.SDK_INT >= 28) {
            return this.f22707d.getStreamMinVolume(this.f22709f);
        }
        return 0;
    }

    /* renamed from: g */
    public int m18013g() {
        return this.f22710g;
    }

    /* renamed from: i */
    public void m18014i() {
        if (this.f22710g >= m18011d()) {
            return;
        }
        this.f22707d.adjustStreamVolume(this.f22709f, 1, 1);
        m18020o();
    }

    /* renamed from: j */
    public boolean m18015j() {
        return this.f22711h;
    }

    /* renamed from: k */
    public void m18016k() {
        C4669b c4669b = this.f22708e;
        if (c4669b != null) {
            try {
                this.f22704a.unregisterReceiver(c4669b);
            } catch (RuntimeException e) {
                Log.m21494w(f22701i, "Error unregistering stream volume receiver", e);
            }
            this.f22708e = null;
        }
    }

    /* renamed from: l */
    public void m18017l(boolean z) {
        if (Util.SDK_INT >= 23) {
            this.f22707d.adjustStreamVolume(this.f22709f, z ? -100 : 100, 1);
        } else {
            this.f22707d.setStreamMute(this.f22709f, z);
        }
        m18020o();
    }

    /* renamed from: m */
    public void m18018m(int i) {
        if (this.f22709f == i) {
            return;
        }
        this.f22709f = i;
        m18020o();
        this.f22706c.onStreamTypeChanged(i);
    }

    /* renamed from: n */
    public void m18019n(int i) {
        if (i < m18012e() || i > m18011d()) {
            return;
        }
        this.f22707d.setStreamVolume(this.f22709f, i, 1);
        m18020o();
    }

    /* renamed from: o */
    public final void m18020o() {
        int m18009h = m18009h(this.f22707d, this.f22709f);
        boolean m18008f = m18008f(this.f22707d, this.f22709f);
        if (this.f22710g == m18009h && this.f22711h == m18008f) {
            return;
        }
        this.f22710g = m18009h;
        this.f22711h = m18008f;
        this.f22706c.onStreamVolumeChanged(m18009h, m18008f);
    }
}
