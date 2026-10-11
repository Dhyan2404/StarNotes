package androidx.media;

import android.media.VolumeProvider;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;

    /* renamed from: a */
    public final int f8263a;

    /* renamed from: b */
    public final int f8264b;

    /* renamed from: c */
    public final String f8265c;

    /* renamed from: d */
    public int f8266d;

    /* renamed from: e */
    public Callback f8267e;

    /* renamed from: f */
    public VolumeProvider f8268f;

    /* loaded from: classes3.dex */
    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProvider);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ControlType {
    }

    /* renamed from: androidx.media.VolumeProviderCompat$a */
    /* loaded from: classes3.dex */
    public class C1206a extends VolumeProvider {
        public C1206a(int volumeControl, int maxVolume, int currentVolume, String volumeControlId) {
            super(volumeControl, maxVolume, currentVolume, volumeControlId);
        }

        @Override // android.media.VolumeProvider
        public void onAdjustVolume(int direction) {
            VolumeProviderCompat.this.onAdjustVolume(direction);
        }

        @Override // android.media.VolumeProvider
        public void onSetVolumeTo(int volume) {
            VolumeProviderCompat.this.onSetVolumeTo(volume);
        }
    }

    /* renamed from: androidx.media.VolumeProviderCompat$b */
    /* loaded from: classes3.dex */
    public class C1207b extends VolumeProvider {
        public C1207b(int volumeControl, int maxVolume, int currentVolume) {
            super(volumeControl, maxVolume, currentVolume);
        }

        @Override // android.media.VolumeProvider
        public void onAdjustVolume(int direction) {
            VolumeProviderCompat.this.onAdjustVolume(direction);
        }

        @Override // android.media.VolumeProvider
        public void onSetVolumeTo(int volume) {
            VolumeProviderCompat.this.onSetVolumeTo(volume);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.media.VolumeProviderCompat$c */
    /* loaded from: classes3.dex */
    public static class C1208c {
        @DoNotInline
        /* renamed from: a */
        public static void m5069a(VolumeProvider volumeProvider, int currentVolume) {
            volumeProvider.setCurrentVolume(currentVolume);
        }
    }

    public VolumeProviderCompat(int volumeControl, int maxVolume, int currentVolume) {
        this(volumeControl, maxVolume, currentVolume, null);
    }

    public final int getCurrentVolume() {
        return this.f8266d;
    }

    public final int getMaxVolume() {
        return this.f8264b;
    }

    public final int getVolumeControl() {
        return this.f8263a;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final String getVolumeControlId() {
        return this.f8265c;
    }

    public Object getVolumeProvider() {
        if (this.f8268f == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f8268f = new C1206a(this.f8263a, this.f8264b, this.f8266d, this.f8265c);
            } else {
                this.f8268f = new C1207b(this.f8263a, this.f8264b, this.f8266d);
            }
        }
        return this.f8268f;
    }

    public void onAdjustVolume(int direction) {
    }

    public void onSetVolumeTo(int volume) {
    }

    public void setCallback(Callback callback) {
        this.f8267e = callback;
    }

    public final void setCurrentVolume(int currentVolume) {
        this.f8266d = currentVolume;
        C1208c.m5069a((VolumeProvider) getVolumeProvider(), currentVolume);
        Callback callback = this.f8267e;
        if (callback != null) {
            callback.onVolumeChanged(this);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public VolumeProviderCompat(int volumeControl, int maxVolume, int currentVolume, @Nullable String volumeControlId) {
        this.f8263a = volumeControl;
        this.f8264b = maxVolume;
        this.f8266d = currentVolume;
        this.f8265c = volumeControlId;
    }
}
