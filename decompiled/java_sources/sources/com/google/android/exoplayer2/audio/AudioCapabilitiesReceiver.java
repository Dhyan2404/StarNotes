package com.google.android.exoplayer2.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class AudioCapabilitiesReceiver {

    /* renamed from: a */
    public final Context f23013a;

    /* renamed from: b */
    public final Listener f23014b;

    /* renamed from: c */
    public final Handler f23015c;

    /* renamed from: d */
    @Nullable
    public final BroadcastReceiver f23016d;

    /* renamed from: e */
    @Nullable
    public final C4686b f23017e;

    /* renamed from: f */
    @Nullable
    public AudioCapabilities f23018f;

    /* renamed from: g */
    public boolean f23019g;

    /* loaded from: classes5.dex */
    public interface Listener {
        void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities);
    }

    /* renamed from: com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver$b */
    /* loaded from: classes5.dex */
    public final class C4686b extends ContentObserver {

        /* renamed from: a */
        public final ContentResolver f23020a;

        /* renamed from: b */
        public final Uri f23021b;

        public C4686b(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.f23020a = contentResolver;
            this.f23021b = uri;
        }

        /* renamed from: a */
        public void m18426a() {
            this.f23020a.registerContentObserver(this.f23021b, false, this);
        }

        /* renamed from: b */
        public void m18427b() {
            this.f23020a.unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.m18425c(AudioCapabilities.getCapabilities(audioCapabilitiesReceiver.f23013a));
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.AudioCapabilitiesReceiver$c */
    /* loaded from: classes5.dex */
    public final class C4687c extends BroadcastReceiver {
        public C4687c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            AudioCapabilitiesReceiver.this.m18425c(AudioCapabilities.m18420c(context, intent));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AudioCapabilitiesReceiver(Context context, Listener listener) {
        Context applicationContext = context.getApplicationContext();
        this.f23013a = applicationContext;
        this.f23014b = (Listener) Assertions.checkNotNull(listener);
        Handler createHandlerForCurrentOrMainLooper = Util.createHandlerForCurrentOrMainLooper();
        this.f23015c = createHandlerForCurrentOrMainLooper;
        this.f23016d = Util.SDK_INT >= 21 ? new C4687c() : null;
        Uri m18421d = AudioCapabilities.m18421d();
        this.f23017e = m18421d != null ? new C4686b(createHandlerForCurrentOrMainLooper, applicationContext.getContentResolver(), m18421d) : null;
    }

    /* renamed from: c */
    public final void m18425c(AudioCapabilities audioCapabilities) {
        if (!this.f23019g || audioCapabilities.equals(this.f23018f)) {
            return;
        }
        this.f23018f = audioCapabilities;
        this.f23014b.onAudioCapabilitiesChanged(audioCapabilities);
    }

    public AudioCapabilities register() {
        if (this.f23019g) {
            return (AudioCapabilities) Assertions.checkNotNull(this.f23018f);
        }
        this.f23019g = true;
        C4686b c4686b = this.f23017e;
        if (c4686b != null) {
            c4686b.m18426a();
        }
        Intent intent = null;
        if (this.f23016d != null) {
            intent = this.f23013a.registerReceiver(this.f23016d, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.f23015c);
        }
        AudioCapabilities m18420c = AudioCapabilities.m18420c(this.f23013a, intent);
        this.f23018f = m18420c;
        return m18420c;
    }

    public void unregister() {
        if (this.f23019g) {
            this.f23018f = null;
            BroadcastReceiver broadcastReceiver = this.f23016d;
            if (broadcastReceiver != null) {
                this.f23013a.unregisterReceiver(broadcastReceiver);
            }
            C4686b c4686b = this.f23017e;
            if (c4686b != null) {
                c4686b.m18427b();
            }
            this.f23019g = false;
        }
    }
}
