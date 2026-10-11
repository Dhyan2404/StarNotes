package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;

@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public AudioAttributes mAudioAttributes;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mLegacyStreamType;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public AudioAttributesImplApi21() {
        this.mLegacyStreamType = -1;
    }

    public boolean equals(Object o) {
        if (o instanceof AudioAttributesImplApi21) {
            return this.mAudioAttributes.equals(((AudioAttributesImplApi21) o).mAudioAttributes);
        }
        return false;
    }

    @Override // androidx.media.AudioAttributesImpl
    @Nullable
    public Object getAudioAttributes() {
        return this.mAudioAttributes;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.mAudioAttributes.getContentType();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getFlags() {
        return this.mAudioAttributes.getFlags();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i = this.mLegacyStreamType;
        return i != -1 ? i : AudioAttributesCompat.m4990a(false, getFlags(), getUsage());
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.mLegacyStreamType;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getUsage() {
        return this.mAudioAttributes.getUsage();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return AudioAttributesCompat.m4990a(true, getFlags(), getUsage());
    }

    public int hashCode() {
        return this.mAudioAttributes.hashCode();
    }

    @NonNull
    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.mAudioAttributes;
    }

    @RequiresApi(21)
    /* renamed from: androidx.media.AudioAttributesImplApi21$a */
    /* loaded from: classes3.dex */
    public static class C1180a implements AudioAttributesImpl.Builder {

        /* renamed from: a */
        public final AudioAttributes.Builder f8114a;

        public C1180a() {
            this.f8114a = new AudioAttributes.Builder();
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1180a setContentType(int contentType) {
            this.f8114a.setContentType(contentType);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C1180a setFlags(int flags) {
            this.f8114a.setFlags(flags);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi21(this.f8114a.build());
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C1180a setLegacyStreamType(int streamType) {
            this.f8114a.setLegacyStreamType(streamType);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public C1180a setUsage(int usage) {
            if (usage == 16) {
                usage = 12;
            }
            this.f8114a.setUsage(usage);
            return this;
        }

        public C1180a(Object aa) {
            this.f8114a = new AudioAttributes.Builder((AudioAttributes) aa);
        }
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int explicitLegacyStream) {
        this.mAudioAttributes = audioAttributes;
        this.mLegacyStreamType = explicitLegacyStream;
    }
}
