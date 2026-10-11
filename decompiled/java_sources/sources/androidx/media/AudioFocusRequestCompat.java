package androidx.media;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;
import androidx.media.AudioAttributesCompat;

/* loaded from: classes3.dex */
public class AudioFocusRequestCompat {

    /* renamed from: g */
    public static final AudioAttributesCompat f8119g = new AudioAttributesCompat.Builder().setUsage(1).build();

    /* renamed from: a */
    public final int f8120a;

    /* renamed from: b */
    public final AudioManager.OnAudioFocusChangeListener f8121b;

    /* renamed from: c */
    public final Handler f8122c;

    /* renamed from: d */
    public final AudioAttributesCompat f8123d;

    /* renamed from: e */
    public final boolean f8124e;

    /* renamed from: f */
    public final Object f8125f;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public int f8126a;

        /* renamed from: b */
        public AudioManager.OnAudioFocusChangeListener f8127b;

        /* renamed from: c */
        public Handler f8128c;

        /* renamed from: d */
        public AudioAttributesCompat f8129d;

        /* renamed from: e */
        public boolean f8130e;

        public Builder(int focusGain) {
            this.f8129d = AudioFocusRequestCompat.f8119g;
            setFocusGain(focusGain);
        }

        /* renamed from: a */
        public static boolean m5005a(int focusGain) {
            return focusGain == 1 || focusGain == 2 || focusGain == 3 || focusGain == 4;
        }

        public AudioFocusRequestCompat build() {
            if (this.f8127b != null) {
                return new AudioFocusRequestCompat(this.f8126a, this.f8127b, this.f8128c, this.f8129d, this.f8130e);
            }
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }

        @NonNull
        public Builder setAudioAttributes(@NonNull AudioAttributesCompat attributes) {
            if (attributes == null) {
                throw new NullPointerException("Illegal null AudioAttributes");
            }
            this.f8129d = attributes;
            return this;
        }

        @NonNull
        public Builder setFocusGain(int focusGain) {
            if (m5005a(focusGain)) {
                this.f8126a = focusGain;
                return this;
            }
            throw new IllegalArgumentException("Illegal audio focus gain type " + focusGain);
        }

        @NonNull
        public Builder setOnAudioFocusChangeListener(@NonNull AudioManager.OnAudioFocusChangeListener listener) {
            return setOnAudioFocusChangeListener(listener, new Handler(Looper.getMainLooper()));
        }

        @NonNull
        public Builder setWillPauseWhenDucked(boolean pauseOnDuck) {
            this.f8130e = pauseOnDuck;
            return this;
        }

        @NonNull
        public Builder setOnAudioFocusChangeListener(@NonNull AudioManager.OnAudioFocusChangeListener listener, @NonNull Handler handler) {
            if (listener == null) {
                throw new IllegalArgumentException("OnAudioFocusChangeListener must not be null");
            }
            if (handler != null) {
                this.f8127b = listener;
                this.f8128c = handler;
                return this;
            }
            throw new IllegalArgumentException("Handler must not be null");
        }

        public Builder(@NonNull AudioFocusRequestCompat requestToCopy) {
            this.f8129d = AudioFocusRequestCompat.f8119g;
            if (requestToCopy != null) {
                this.f8126a = requestToCopy.getFocusGain();
                this.f8127b = requestToCopy.getOnAudioFocusChangeListener();
                this.f8128c = requestToCopy.getFocusChangeHandler();
                this.f8129d = requestToCopy.getAudioAttributesCompat();
                this.f8130e = requestToCopy.willPauseWhenDucked();
                return;
            }
            throw new IllegalArgumentException("AudioFocusRequestCompat to copy must not be null");
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.media.AudioFocusRequestCompat$a */
    /* loaded from: classes3.dex */
    public static class C1183a {
        @DoNotInline
        /* renamed from: a */
        public static AudioFocusRequest m5006a(int focusGain, AudioAttributes audioAttributes, boolean pauseOnDuck, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler focusChangeHandler) {
            return new AudioFocusRequest.Builder(focusGain).setAudioAttributes(audioAttributes).setWillPauseWhenDucked(pauseOnDuck).setOnAudioFocusChangeListener(onAudioFocusChangeListener, focusChangeHandler).build();
        }
    }

    /* renamed from: androidx.media.AudioFocusRequestCompat$b */
    /* loaded from: classes3.dex */
    public static class C1184b implements Handler.Callback, AudioManager.OnAudioFocusChangeListener {

        /* renamed from: g */
        public static final int f8131g = 2782386;

        /* renamed from: e */
        public final Handler f8132e;

        /* renamed from: f */
        public final AudioManager.OnAudioFocusChangeListener f8133f;

        public C1184b(@NonNull AudioManager.OnAudioFocusChangeListener listener, @NonNull Handler handler) {
            this.f8133f = listener;
            this.f8132e = new Handler(handler.getLooper(), this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 2782386) {
                return false;
            }
            this.f8133f.onAudioFocusChange(message.arg1);
            return true;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int focusChange) {
            Handler handler = this.f8132e;
            handler.sendMessage(Message.obtain(handler, f8131g, focusChange, 0));
        }
    }

    public AudioFocusRequestCompat(int focusGain, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler focusChangeHandler, AudioAttributesCompat audioFocusRequestCompat, boolean pauseOnDuck) {
        this.f8120a = focusGain;
        this.f8122c = focusChangeHandler;
        this.f8123d = audioFocusRequestCompat;
        this.f8124e = pauseOnDuck;
        this.f8121b = onAudioFocusChangeListener;
        this.f8125f = C1183a.m5006a(focusGain, m5003a(), pauseOnDuck, onAudioFocusChangeListener, focusChangeHandler);
    }

    @RequiresApi(21)
    /* renamed from: a */
    public AudioAttributes m5003a() {
        AudioAttributesCompat audioAttributesCompat = this.f8123d;
        if (audioAttributesCompat != null) {
            return (AudioAttributes) audioAttributesCompat.unwrap();
        }
        return null;
    }

    @RequiresApi(26)
    /* renamed from: b */
    public AudioFocusRequest m5004b() {
        return (AudioFocusRequest) this.f8125f;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) o;
        return this.f8120a == audioFocusRequestCompat.f8120a && this.f8124e == audioFocusRequestCompat.f8124e && ObjectsCompat.equals(this.f8121b, audioFocusRequestCompat.f8121b) && ObjectsCompat.equals(this.f8122c, audioFocusRequestCompat.f8122c) && ObjectsCompat.equals(this.f8123d, audioFocusRequestCompat.f8123d);
    }

    @NonNull
    public AudioAttributesCompat getAudioAttributesCompat() {
        return this.f8123d;
    }

    @NonNull
    public Handler getFocusChangeHandler() {
        return this.f8122c;
    }

    public int getFocusGain() {
        return this.f8120a;
    }

    @NonNull
    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.f8121b;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Integer.valueOf(this.f8120a), this.f8121b, this.f8122c, this.f8123d, Boolean.valueOf(this.f8124e));
    }

    public boolean willPauseWhenDucked() {
        return this.f8124e;
    }
}
