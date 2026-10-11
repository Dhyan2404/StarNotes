package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class AudioAttributes implements Bundleable {

    /* renamed from: f */
    public static final int f22995f = 0;

    /* renamed from: g */
    public static final int f22996g = 1;

    /* renamed from: h */
    public static final int f22997h = 2;

    /* renamed from: i */
    public static final int f22998i = 3;

    /* renamed from: j */
    public static final int f22999j = 4;
    public final int allowedCapturePolicy;
    public final int contentType;

    /* renamed from: e */
    @Nullable
    public android.media.AudioAttributes f23000e;
    public final int flags;
    public final int spatializationBehavior;
    public final int usage;
    public static final AudioAttributes DEFAULT = new Builder().build();
    public static final Bundleable.Creator<AudioAttributes> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.th
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            AudioAttributes m18415c;
            m18415c = AudioAttributes.m18415c(bundle);
            return m18415c;
        }
    };

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        public int f23001a = 0;

        /* renamed from: b */
        public int f23002b = 0;

        /* renamed from: c */
        public int f23003c = 1;

        /* renamed from: d */
        public int f23004d = 1;

        /* renamed from: e */
        public int f23005e = 0;

        public AudioAttributes build() {
            return new AudioAttributes(this.f23001a, this.f23002b, this.f23003c, this.f23004d, this.f23005e);
        }

        public Builder setAllowedCapturePolicy(int i) {
            this.f23004d = i;
            return this;
        }

        public Builder setContentType(int i) {
            this.f23001a = i;
            return this;
        }

        public Builder setFlags(int i) {
            this.f23002b = i;
            return this;
        }

        public Builder setSpatializationBehavior(int i) {
            this.f23005e = i;
            return this;
        }

        public Builder setUsage(int i) {
            this.f23003c = i;
            return this;
        }
    }

    @RequiresApi(29)
    /* renamed from: com.google.android.exoplayer2.audio.AudioAttributes$b */
    /* loaded from: classes5.dex */
    public static final class C4682b {
        @DoNotInline
        /* renamed from: a */
        public static void m18416a(AudioAttributes.Builder builder, int i) {
            builder.setAllowedCapturePolicy(i);
        }
    }

    @RequiresApi(32)
    /* renamed from: com.google.android.exoplayer2.audio.AudioAttributes$c */
    /* loaded from: classes5.dex */
    public static final class C4683c {
        @DoNotInline
        /* renamed from: a */
        public static void m18417a(AudioAttributes.Builder builder, int i) {
            try {
                builder.getClass().getMethod("setSpatializationBehavior", Integer.TYPE).invoke(builder, Integer.valueOf(i));
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: b */
    public static String m18414b(int i) {
        return Integer.toString(i, 36);
    }

    /* renamed from: c */
    public static /* synthetic */ AudioAttributes m18415c(Bundle bundle) {
        Builder builder = new Builder();
        if (bundle.containsKey(m18414b(0))) {
            builder.setContentType(bundle.getInt(m18414b(0)));
        }
        if (bundle.containsKey(m18414b(1))) {
            builder.setFlags(bundle.getInt(m18414b(1)));
        }
        if (bundle.containsKey(m18414b(2))) {
            builder.setUsage(bundle.getInt(m18414b(2)));
        }
        if (bundle.containsKey(m18414b(3))) {
            builder.setAllowedCapturePolicy(bundle.getInt(m18414b(3)));
        }
        if (bundle.containsKey(m18414b(4))) {
            builder.setSpatializationBehavior(bundle.getInt(m18414b(4)));
        }
        return builder.build();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AudioAttributes.class != obj.getClass()) {
            return false;
        }
        AudioAttributes audioAttributes = (AudioAttributes) obj;
        return this.contentType == audioAttributes.contentType && this.flags == audioAttributes.flags && this.usage == audioAttributes.usage && this.allowedCapturePolicy == audioAttributes.allowedCapturePolicy && this.spatializationBehavior == audioAttributes.spatializationBehavior;
    }

    @RequiresApi(21)
    public android.media.AudioAttributes getAudioAttributesV21() {
        if (this.f23000e == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.contentType).setFlags(this.flags).setUsage(this.usage);
            int i = Util.SDK_INT;
            if (i >= 29) {
                C4682b.m18416a(usage, this.allowedCapturePolicy);
            }
            if (i >= 32) {
                C4683c.m18417a(usage, this.spatializationBehavior);
            }
            this.f23000e = usage.build();
        }
        return this.f23000e;
    }

    public int hashCode() {
        return ((((((((527 + this.contentType) * 31) + this.flags) * 31) + this.usage) * 31) + this.allowedCapturePolicy) * 31) + this.spatializationBehavior;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(m18414b(0), this.contentType);
        bundle.putInt(m18414b(1), this.flags);
        bundle.putInt(m18414b(2), this.usage);
        bundle.putInt(m18414b(3), this.allowedCapturePolicy);
        bundle.putInt(m18414b(4), this.spatializationBehavior);
        return bundle;
    }

    public AudioAttributes(int i, int i2, int i3, int i4, int i5) {
        this.contentType = i;
        this.flags = i2;
        this.usage = i3;
        this.allowedCapturePolicy = i4;
        this.spatializationBehavior = i5;
    }
}
