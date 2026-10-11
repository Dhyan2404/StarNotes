package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

/* loaded from: classes5.dex */
public final class AudioBecomingNoisyManager {

    /* renamed from: a */
    public final Context f22174a;

    /* renamed from: b */
    public final RunnableC4647a f22175b;

    /* renamed from: c */
    public boolean f22176c;

    /* loaded from: classes5.dex */
    public interface EventListener {
        void onAudioBecomingNoisy();
    }

    /* renamed from: com.google.android.exoplayer2.AudioBecomingNoisyManager$a */
    /* loaded from: classes5.dex */
    public final class RunnableC4647a extends BroadcastReceiver implements Runnable {

        /* renamed from: e */
        public final EventListener f22177e;

        /* renamed from: f */
        public final Handler f22178f;

        public RunnableC4647a(Handler handler, EventListener eventListener) {
            this.f22178f = handler;
            this.f22177e = eventListener;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f22178f.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AudioBecomingNoisyManager.this.f22176c) {
                this.f22177e.onAudioBecomingNoisy();
            }
        }
    }

    public AudioBecomingNoisyManager(Context context, Handler handler, EventListener eventListener) {
        this.f22174a = context.getApplicationContext();
        this.f22175b = new RunnableC4647a(handler, eventListener);
    }

    /* renamed from: b */
    public void m17608b(boolean z) {
        if (z && !this.f22176c) {
            this.f22174a.registerReceiver(this.f22175b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f22176c = true;
        } else {
            if (z || !this.f22176c) {
                return;
            }
            this.f22174a.unregisterReceiver(this.f22175b);
            this.f22176c = false;
        }
    }
}
